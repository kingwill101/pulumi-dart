// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_proto_value_type_response.dart';

/// Condition that uses `operator` to evaluate the key against the value.
class EnterpriseCrmEventbusProtoConditionResponse {
  /// Key that's evaluated against the `value`. Please note the data type of the runtime value associated with the key should match the data type of `value`, else an IllegalArgumentException is thrown.
  final String eventPropertyKey;

  /// Operator used to evaluate the condition. Please note that an operator with an inappropriate key/value operand will result in IllegalArgumentException, e.g. CONTAINS with boolean key/value pair.
  final String operator;

  /// Value that's checked for the key.
  final EnterpriseCrmEventbusProtoValueTypeResponse value;

  EnterpriseCrmEventbusProtoConditionResponse({
    required this.eventPropertyKey,
    required this.operator,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['eventPropertyKey'] = eventPropertyKey;
    map['operator'] = operator;
    map['value'] = value.toMap();
    return map;
  }

  factory EnterpriseCrmEventbusProtoConditionResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoConditionResponse(
      eventPropertyKey: map['eventPropertyKey'] as String,
      operator: map['operator'] as String,
      value: EnterpriseCrmEventbusProtoValueTypeResponse.fromMap(
          (map['value'] as Map).cast<String, dynamic>()),
    );
  }
}
