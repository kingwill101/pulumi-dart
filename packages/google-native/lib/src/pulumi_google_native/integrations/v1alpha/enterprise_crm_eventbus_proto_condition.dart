// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_proto_condition_operator.dart';
import 'enterprise_crm_eventbus_proto_value_type.dart';

/// Condition that uses `operator` to evaluate the key against the value.
class EnterpriseCrmEventbusProtoCondition {
  /// Key that's evaluated against the `value`. Please note the data type of the runtime value associated with the key should match the data type of `value`, else an IllegalArgumentException is thrown.
  final String? eventPropertyKey;

  /// Operator used to evaluate the condition. Please note that an operator with an inappropriate key/value operand will result in IllegalArgumentException, e.g. CONTAINS with boolean key/value pair.
  final EnterpriseCrmEventbusProtoConditionOperator? operator;

  /// Value that's checked for the key.
  final EnterpriseCrmEventbusProtoValueType? value;

  EnterpriseCrmEventbusProtoCondition({
    this.eventPropertyKey,
    this.operator,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final eventPropertyKeyValue = eventPropertyKey;
    if (eventPropertyKeyValue != null) {
      map['eventPropertyKey'] = eventPropertyKeyValue;
    }
    final operatorValue = operator;
    if (operatorValue != null) {
      map['operator'] = operatorValue.value;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue.toMap();
    }
    return map;
  }

  factory EnterpriseCrmEventbusProtoCondition.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoCondition(
      eventPropertyKey: map['eventPropertyKey'] == null
          ? null
          : map['eventPropertyKey'] as String,
      operator: map['operator'] == null
          ? null
          : EnterpriseCrmEventbusProtoConditionOperator.fromValue(
              map['operator'] as String),
      value: map['value'] == null
          ? null
          : EnterpriseCrmEventbusProtoValueType.fromMap(
              (map['value'] as Map).cast<String, dynamic>()),
    );
  }
}
