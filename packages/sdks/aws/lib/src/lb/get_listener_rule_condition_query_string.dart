// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_rule_condition_query_string_value.dart';

class GetListenerRuleConditionQueryString {
  /// Set of source IP addresses in CIDR format for Application Load Balancers
  final pulumi.Input<List<GetListenerRuleConditionQueryStringValue>>? values;

  /// Creates a new [GetListenerRuleConditionQueryString].
  /// [values] Set of source IP addresses in CIDR format for Application Load Balancers
  const GetListenerRuleConditionQueryString({
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': ?pulumi.Input.mapOptionalInputValue<List<GetListenerRuleConditionQueryStringValue>, List<Map<String, dynamic>>>(values, (value) => pulumi.Input.encodeList<GetListenerRuleConditionQueryStringValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetListenerRuleConditionQueryString.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleConditionQueryString(
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenerRuleConditionQueryStringValue>(guardedValue, (value) => GetListenerRuleConditionQueryStringValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
