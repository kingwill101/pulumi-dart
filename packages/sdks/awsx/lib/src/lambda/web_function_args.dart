// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_function_code.dart';
import 'web_function_runtime.dart';

/// {@template pulumi_lambda_web_function_args_doc}
/// The set of arguments for WebFunction.
/// {@endtemplate}
/// {@macro pulumi_lambda_web_function_args_doc}
class WebFunctionArgs {
  /// Application code to deploy.
  final pulumi.Input<WebFunctionCode> code;
  /// Version-qualified ARN of an existing network connector for VPC egress. Revisions using a
  /// connector support only HomeRegion endpoints. Keep the connector available for as long as any
  /// retained revision uses it.
  ///
  /// Default - No network connector.
  final pulumi.Input<String?>? egressNetworkConnectorVersionArn;
  /// Environment values included in each immutable revision. Pulumi secrets retain their Pulumi
  /// secret tracking, but AWS receives the resolved values. This is not runtime secret retrieval and
  /// does not prevent authorized AWS users from reading the configuration.
  ///
  /// Default - No application environment variables.
  final pulumi.Input<Map<String, String>?>? environmentVariables;
  /// Execution role assumed by the application. A supplied role must be in the function's account,
  /// trust lambda.amazonaws.com, and grant any AWS API access the application needs. AWSX adds
  /// scoped permissions for the central log group and its .local companions.
  ///
  /// Default - AWSX creates a role with scoped CloudWatch Logs permissions. Add application
  /// permissions separately.
  final pulumi.Input<String?>? executionRoleArn;
  /// Physical function name.
  ///
  /// Default - Automatically named by the AWS Native provider.
  final pulumi.Input<String?>? functionName;
  /// Maximum concurrent requests per execution environment. Must be an integer from 1 through 128.
  ///
  /// Default - AWS default of 64.
  final pulumi.Input<double?>? maxConcurrencyPerEnvironment;
  /// Runtime for the revision. Node.js loads index.js at the package root unless
  /// AWS_LAMBDA_NODEJS_ENTRYPOINT names another file. The application must listen on the host and
  /// port supplied in AWS_LAMBDA_HTTP_ENDPOINT.
  final pulumi.Input<WebFunctionRuntime> runtime;
  /// Tags applied to the function and AWSX-created supporting resources that accept tags.
  ///
  /// Default - No additional tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Maximum duration of an HTTP request, in seconds. Must be an integer from 3 through 900.
  ///
  /// Default - AWS default of 30 seconds.
  final pulumi.Input<double?>? timeoutSeconds;

  /// Creates a new [WebFunctionArgs].
  /// [code] Application code to deploy.
  /// [egressNetworkConnectorVersionArn] Version-qualified ARN of an existing network connector for VPC egress. Revisions using a
  /// [environmentVariables] Environment values included in each immutable revision. Pulumi secrets retain their Pulumi
  /// [executionRoleArn] Execution role assumed by the application. A supplied role must be in the function's account,
  /// [functionName] Physical function name.
  /// [maxConcurrencyPerEnvironment] Maximum concurrent requests per execution environment. Must be an integer from 1 through 128.
  /// [runtime] Runtime for the revision. Node.js loads index.js at the package root unless
  /// [tags] Tags applied to the function and AWSX-created supporting resources that accept tags.
  /// [timeoutSeconds] Maximum duration of an HTTP request, in seconds. Must be an integer from 3 through 900.
  const WebFunctionArgs({
    required this.code,
    this.egressNetworkConnectorVersionArn,
    this.environmentVariables,
    this.executionRoleArn,
    this.functionName,
    this.maxConcurrencyPerEnvironment,
    required this.runtime,
    this.tags,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': pulumi.Input.mapInputValue<WebFunctionCode, Map<String, dynamic>>(code, (value) => value.toMap()),
      'egressNetworkConnectorVersionArn': ?egressNetworkConnectorVersionArn,
      'environmentVariables': ?environmentVariables,
      'executionRoleArn': ?executionRoleArn,
      'functionName': ?functionName,
      'maxConcurrencyPerEnvironment': ?maxConcurrencyPerEnvironment,
      'runtime': pulumi.Input.mapInputValue<WebFunctionRuntime, String>(runtime, (value) => value.wireValue),
      'tags': ?tags,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory WebFunctionArgs.fromMap(Map<String, dynamic> map) {
    return WebFunctionArgs(
      code: pulumi.Input.fromValue(WebFunctionCode.fromMap((map['code']! as Map).cast<String, dynamic>())),
      egressNetworkConnectorVersionArn: (() { final guardedValue = map['egressNetworkConnectorVersionArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      executionRoleArn: (() { final guardedValue = map['executionRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionName: (() { final guardedValue = map['functionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxConcurrencyPerEnvironment: (() { final guardedValue = map['maxConcurrencyPerEnvironment']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      runtime: pulumi.Input.fromValue(WebFunctionRuntime.fromValue(map['runtime']! as String)),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeoutSeconds: (() { final guardedValue = map['timeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
