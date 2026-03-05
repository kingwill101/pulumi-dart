import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_aws/lambda.dart' as aws_lambda;
import 'package:pulumi_aws_apigateway/index.dart' as awsx_apigw_index;
import 'package:pulumi_aws_apigateway/pulumi_aws_apigateway.dart' as awsx_apigw;

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
        }).input(),
      ),
    );

    aws.iam.RolePolicyAttachment(
      'esc-adapter-basic-exec',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: lambdaRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole'
                .input(),
      ),
    );

    final adapterFunction = aws.lambda.FunctionType(
      'escExternalAdapter',
      args: aws.lambda.FunctionArgs(
        role: lambdaRole.arn,
        runtime: aws_lambda.Runtime.nodeJS20dX.wireValue.input(),
        handler: 'index.handler'.input(),
        code: pulumi.FileArchive('./lambda/adapter').input(),
      ),
    );

    final api = awsx_apigw.index.RestAPI(
      'escExternalAdapterApi',
      args: awsx_apigw.index.RestAPIArgs(
        routes: [
          awsx_apigw.index.Route(
            path: '/'.input(),
            method: awsx_apigw_index.Method.valuePOST.input(),
            eventHandler: adapterFunction.input(),
          ),
        ].input(),
        binaryMediaTypes: <String>[].input(),
      ),
    );

    adapterUrl = api.url.apply((v) => v!);
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
