// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFunction.
class GetFunctionArgs2 {
  /// Name of the Lambda function.
  ///
  /// The following arguments are optional:
  final Input<String> functionName;

  /// Alias name or version number of the Lambda function. E.g., `$LATEST`, `my-alias`, or <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>. When not included: the data source resolves to the most recent published version; if no published version exists: it resolves to the most recent unpublished version.
  final Input<String>? qualifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags assigned to the Lambda Function.
  final Input<Map<String, String>>? tags;

  GetFunctionArgs2({
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

  factory GetFunctionArgs2.fromMap(Map<String, dynamic> map) {
    return GetFunctionArgs2(
      functionName: Input.asInput<String>(map['functionName']),
      qualifier: Input.asOptionalInput<String>(map['qualifier']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
