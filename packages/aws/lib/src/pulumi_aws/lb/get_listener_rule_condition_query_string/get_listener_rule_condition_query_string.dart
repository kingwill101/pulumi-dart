// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_listener_rule_condition_query_string_value/get_listener_rule_condition_query_string_value.dart';

class GetListenerRuleConditionQueryString {
  /// Set of <span pulumi-lang-nodejs="`key`" pulumi-lang-dotnet="`Key`" pulumi-lang-go="`key`" pulumi-lang-python="`key`" pulumi-lang-yaml="`key`" pulumi-lang-java="`key`">`key`</span>-<span pulumi-lang-nodejs="`value`" pulumi-lang-dotnet="`Value`" pulumi-lang-go="`value`" pulumi-lang-python="`value`" pulumi-lang-yaml="`value`" pulumi-lang-java="`value`">`value`</span> pairs indicating the query string parameters to match.
  final List<GetListenerRuleConditionQueryStringValue>? values;

  GetListenerRuleConditionQueryString({
    this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final valuesValue = values;
    if (valuesValue != null) {
      map['values'] = Input.encodeList<GetListenerRuleConditionQueryStringValue,
          Map<String, dynamic>>(valuesValue, (value) => value.toMap());
    }
    return map;
  }

  factory GetListenerRuleConditionQueryString.fromMap(
      Map<String, dynamic> map) {
    return GetListenerRuleConditionQueryString(
      values: map['values'] == null
          ? null
          : Input.decodeList<GetListenerRuleConditionQueryStringValue>(
              map['values'],
              (value) => GetListenerRuleConditionQueryStringValue.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
