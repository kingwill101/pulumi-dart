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
  final pulumi.Input<FunctionUrlCors>? cors;

  /// Name or ARN of the Lambda function.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> functionName;

  /// How the Lambda function responds to an invocation. Valid values are `BUFFERED` (default) and `RESPONSE_STREAM`.
  final pulumi.Input<String>? invokeMode;

  /// Alias name or `$LATEST`.
  final pulumi.Input<String>? qualifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [FunctionUrlArgs].
  /// [authorizationType] Type of authentication that the function URL uses. Valid values are `AWS_IAM` and `NONE`.
  /// [cors] Cross-origin resource sharing (CORS) settings for the function URL. See below.
  /// [functionName] Name or ARN of the Lambda function.
  /// [invokeMode] How the Lambda function responds to an invocation. Valid values are `BUFFERED` (default) and `RESPONSE_STREAM`.
  /// [qualifier] Alias name or `$LATEST`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  FunctionUrlArgs({
    required String authorizationType,
    FunctionUrlCors? cors,
    required String functionName,
    String? invokeMode,
    String? qualifier,
    String? region,
  }) : authorizationType = pulumi.Input.asInput<String>(authorizationType),
       cors = pulumi.Input.asOptionalInput<FunctionUrlCors>(cors),
       functionName = pulumi.Input.asInput<String>(functionName),
       invokeMode = pulumi.Input.asOptionalInput<String>(invokeMode),
       qualifier = pulumi.Input.asOptionalInput<String>(qualifier),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationType': authorizationType,
      'cors':
          ?pulumi.Input.mapOptionalInputValue<
            FunctionUrlCors,
            Map<String, dynamic>
          >(cors, (value) => value.toMap()),
      'functionName': functionName,
      'invokeMode': ?invokeMode,
      'qualifier': ?qualifier,
      'region': ?region,
    };
  }

  factory FunctionUrlArgs.fromMap(Map<String, dynamic> map) {
    return FunctionUrlArgs(
      authorizationType: map['authorizationType'] as String,
      cors: map['cors'] == null
          ? null
          : FunctionUrlCors.fromMap(
              (map['cors'] as Map).cast<String, dynamic>(),
            ),
      functionName: map['functionName'] as String,
      invokeMode: map['invokeMode'] == null
          ? null
          : map['invokeMode'] as String,
      qualifier: map['qualifier'] == null ? null : map['qualifier'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
