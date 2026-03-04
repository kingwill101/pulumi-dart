// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerRuleConditionQueryStringValue {
  /// Key of query parameter
  final pulumi.Input<String> key;

  /// Value of query parameter
  final pulumi.Input<String> value;

  /// Creates a new [GetListenerRuleConditionQueryStringValue].
  /// [key] Key of query parameter
  /// [value] Value of query parameter
  GetListenerRuleConditionQueryStringValue({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory GetListenerRuleConditionQueryStringValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetListenerRuleConditionQueryStringValue(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
