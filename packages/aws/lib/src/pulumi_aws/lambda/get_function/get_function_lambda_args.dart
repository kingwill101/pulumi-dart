// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFunction.
class GetFunctionLambdaArgs {
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

  GetFunctionLambdaArgs({
    required this.functionName,
    this.qualifier,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['functionName'] = functionName;
    final qualifierValue = qualifier;
    if (qualifierValue != null) {
      map['qualifier'] = qualifierValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetFunctionLambdaArgs.fromMap(Map<String, dynamic> map) {
    return GetFunctionLambdaArgs(
      functionName: pulumi.Input.asInput<String>(map['functionName']),
      qualifier: pulumi.Input.asOptionalInput<String>(map['qualifier']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
