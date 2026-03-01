import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_aws_apigateway/pulumi_aws_apigateway.dart'
    as awsx_apigw;

class EscExternalAdapterLambdaStack extends pulumi.Stack {
  late final pulumi.Output<String> adapterUrl;
  late final pulumi.Output<String> functionName;
  late final pulumi.Output<String> functionArn;

  EscExternalAdapterLambdaStack() {
    final lambdaRole = aws.iam.Role(
      'esc-adapter-role',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Effect': 'Allow',
              'Principal': {'Service': 'lambda.amazonaws.com'},
              'Action': 'sts:AssumeRole',
            },
          ],
        }),
      ),
    );

    aws.iam.RolePolicyAttachment(
      'esc-adapter-basic-exec',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: lambdaRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole',
      ),
    );

    final adapterFunction = aws.lambda.FunctionType(
      'escExternalAdapter',
      args: aws.lambda.FunctionArgs(
        role: lambdaRole.arn,
        runtime: aws.lambda.Runtime.nodeJS20dX.value,
        handler: 'index.handler',
        code: pulumi.FileArchive('./lambda/adapter'),
      ),
    );

    final api = awsx_apigw.index.RestAPI(
      'escExternalAdapterApi',
      args: awsx_apigw.index.RestAPIArgs(
        routes: [
          awsx_apigw.index.Route(
            path: '/',
            method: awsx_apigw.index.Method.valuePOST,
            eventHandler: adapterFunction,
          ),
        ].output(),
        binaryMediaTypes: <String>[].output(),
      ),
    );

    adapterUrl = api.url;
    functionName = adapterFunction.name;
    functionArn = adapterFunction.arn;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('adapterUrl', adapterUrl),
      pulumi.OutputProperty('functionName', functionName),
      pulumi.OutputProperty('functionArn', functionArn),
    ];
  }
}
