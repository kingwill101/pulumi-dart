// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lambda_get_function_get_function_args_doc}
/// Arguments for getFunction.
/// {@endtemplate}
/// {@macro pulumi_lambda_get_function_get_function_args_doc}
class GetFunctionArgs {
  /// Name of the Lambda function.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> functionName;
  /// Alias name or version number of the Lambda function. E.g., `$LATEST`, `my-alias`, or `1`. When not included: the data source resolves to the most recent published version; if no published version exists: it resolves to the most recent unpublished version.
  final pulumi.Input<String>? qualifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags assigned to the Lambda Function.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetFunctionArgs].
  /// [functionName] Name of the Lambda function.
  /// [qualifier] Alias name or version number of the Lambda function. E.g., `$LATEST`, `my-alias`, or `1`. When not included: the data source resolves to the most recent published version; if no published version exists: it resolves to the most recent unpublished version.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the Lambda Function.
  GetFunctionArgs({
    required this.functionName,
    this.qualifier,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': functionName,
      'qualifier': ?qualifier,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetFunctionArgs.fromMap(Map<String, dynamic> map) {
    return GetFunctionArgs(
      functionName: (map['functionName'] as String).input(),
      qualifier: map['qualifier'] == null ? null : (map['qualifier'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

