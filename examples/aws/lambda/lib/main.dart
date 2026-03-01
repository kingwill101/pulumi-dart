import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class ExampleStack extends pulumi.Stack {
  late final pulumi.Output<String> lambda;

  ExampleStack() {
    final role = aws.iam.Role(
      'task-exec-role',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: '''{
  "Version": "2012-10-17",
  "Statement": [{
    "Sid": "",
    "Effect": "Allow",
    "Principal": {
      "Service": "lambda.amazonaws.com"
    },
    "Action": "sts:AssumeRole"
  }]
}'''.input(),
      ),
    );

    aws.iam.RolePolicy(
      'lambda-log-policy',
      args: aws.iam.RolePolicyArgs(
        role: role.name,
        policy: '''{
  "Version": "2012-10-17",
  "Statement": [{
    "Effect": "Allow",
    "Action": [
      "logs:CreateLogGroup",
      "logs:CreateLogStream",
      "logs:PutLogEvents"
    ],
    "Resource": "arn:aws:logs:*:*:*"
  }]
}'''.input(),
      ),
    );

    final function = aws.lambda.Function(
      'basicLambda',
      args: aws.lambda.FunctionArgs(
        handler: 'bootstrap'.input(),
        role: role.arn,
        runtime: 'provided.al2'.input(),
        code: pulumi.FileArchive('./handler/handler.zip').input(),
      ),
    );

    lambda = function.arn;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('lambda', lambda)];
  }
}
