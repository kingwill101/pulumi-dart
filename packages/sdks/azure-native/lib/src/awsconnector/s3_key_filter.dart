// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_rule.dart';

/// Definition of S3KeyFilter
class S3KeyFilter {
  /// A list of containers for the key-value pair that defines the criteria for the filter rule.
  final pulumi.Input<List<FilterRule>?>? rules;

  /// Creates a new [S3KeyFilter].
  /// [rules] A list of containers for the key-value pair that defines the criteria for the filter rule.
  const S3KeyFilter({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<FilterRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<FilterRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory S3KeyFilter.fromMap(Map<String, dynamic> map) {
    return S3KeyFilter(
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FilterRule>(guardedValue, (value) => FilterRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
