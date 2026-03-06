// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_rule_response.dart';

/// Definition of S3KeyFilter
class S3KeyFilterResponse {
  /// A list of containers for the key-value pair that defines the criteria for the filter rule.
  final pulumi.Input<List<FilterRuleResponse>>? rules;

  /// Creates a new [S3KeyFilterResponse].
  /// [rules] A list of containers for the key-value pair that defines the criteria for the filter rule.
  const S3KeyFilterResponse({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<FilterRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<FilterRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory S3KeyFilterResponse.fromMap(Map<String, dynamic> map) {
    return S3KeyFilterResponse(
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FilterRuleResponse>(guardedValue, (value) => FilterRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

