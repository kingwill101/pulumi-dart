// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_url_cors.dart';

/// {@template pulumi_lambda_function_url_function_url_args_doc}
/// The set of arguments for FunctionUrl.
/// {@endtemplate}
/// {@macro pulumi_lambda_function_url_function_url_args_doc}
class FunctionUrlArgs {
  /// Type of authentication that the function URL uses. Valid values are `AWS_IAM` and `NONE`.
  final pulumi.Input<String> authorizationType;
  /// Cross-origin resource sharing (CORS) settings for the function URL. See below.
  final pulumi.Input<FunctionUrlCors?>? cors;
  /// Name or ARN of the Lambda function.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> functionName;
  /// How the Lambda function responds to an invocation. Valid values are `BUFFERED` (default) and `RESPONSE_STREAM`.
  final pulumi.Input<String?>? invokeMode;
  /// Alias name or `$LATEST`.
  final pulumi.Input<String?>? qualifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [FunctionUrlArgs].
  /// [authorizationType] Type of authentication that the function URL uses. Valid values are `AWS_IAM` and `NONE`.
  /// [cors] Cross-origin resource sharing (CORS) settings for the function URL. See below.
  /// [functionName] Name or ARN of the Lambda function.
  /// [invokeMode] How the Lambda function responds to an invocation. Valid values are `BUFFERED` (default) and `RESPONSE_STREAM`.
  /// [qualifier] Alias name or `$LATEST`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const FunctionUrlArgs({
    required this.authorizationType,
    this.cors,
    required this.functionName,
    this.invokeMode,
    this.qualifier,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationType': authorizationType,
      'cors': ?pulumi.Input.mapOptionalInputValue<FunctionUrlCors, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'functionName': functionName,
      'invokeMode': ?invokeMode,
      'qualifier': ?qualifier,
      'region': ?region,
    };
  }

  factory FunctionUrlArgs.fromMap(Map<String, dynamic> map) {
    return FunctionUrlArgs(
      authorizationType: pulumi.Input.fromValue(map['authorizationType'] as String),
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionUrlCors.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      functionName: pulumi.Input.fromValue(map['functionName'] as String),
      invokeMode: (() { final guardedValue = map['invokeMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qualifier: (() { final guardedValue = map['qualifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
