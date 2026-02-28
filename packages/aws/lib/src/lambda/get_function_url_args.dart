// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lambda_get_function_url_get_function_url_args_doc}
/// Arguments for getFunctionUrl.
/// {@endtemplate}
/// {@macro pulumi_lambda_get_function_url_get_function_url_args_doc}
class GetFunctionUrlArgs {
  /// Name or ARN of the Lambda function.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> functionName;
  /// Alias name or `$LATEST`.
  final pulumi.Input<String>? qualifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetFunctionUrlArgs].
  /// [functionName] Name or ARN of the Lambda function.
  /// [qualifier] Alias name or `$LATEST`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetFunctionUrlArgs({
    required String functionName,
    String? qualifier,
    String? region,
  }) :
      functionName = pulumi.Input.asInput<String>(functionName),
      qualifier = pulumi.Input.asOptionalInput<String>(qualifier),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': functionName,
      'qualifier': ?qualifier,
      'region': ?region,
    };
  }

  factory GetFunctionUrlArgs.fromMap(Map<String, dynamic> map) {
    return GetFunctionUrlArgs(
      functionName: map['functionName'] as String,
      qualifier: map['qualifier'] == null ? null : map['qualifier'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

