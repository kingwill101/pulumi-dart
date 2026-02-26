// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFunctionUrl.
class GetFunctionUrlArgs {
  /// Name or ARN of the Lambda function.
  ///
  /// The following arguments are optional:
  final Input<String> functionName;

  /// Alias name or `$LATEST`.
  final Input<String>? qualifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetFunctionUrlArgs({
    required this.functionName,
    this.qualifier,
    this.region,
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
    return map;
  }

  factory GetFunctionUrlArgs.fromMap(Map<String, dynamic> map) {
    return GetFunctionUrlArgs(
      functionName: Input.asInput<String>(map['functionName']),
      qualifier: Input.asOptionalInput<String>(map['qualifier']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
