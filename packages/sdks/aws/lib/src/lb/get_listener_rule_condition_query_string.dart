// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_rule_condition_query_string_value.dart';

class GetListenerRuleConditionQueryString {
  /// Set of `key`-`value` pairs indicating the query string parameters to match.
  final List<GetListenerRuleConditionQueryStringValue>? values;

  /// Creates a new [GetListenerRuleConditionQueryString].
  /// [values] Set of `key`-`value` pairs indicating the query string parameters to match.
  GetListenerRuleConditionQueryString({
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': ?values == null ? null : pulumi.Input.encodeList<GetListenerRuleConditionQueryStringValue, Map<String, dynamic>>(values!, (value) => value.toMap()),
    };
  }

  factory GetListenerRuleConditionQueryString.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleConditionQueryString(
      values: map['values'] == null ? null : pulumi.Input.decodeList<GetListenerRuleConditionQueryStringValue>(map['values'], (value) => GetListenerRuleConditionQueryStringValue.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

