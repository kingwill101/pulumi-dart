// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_proto_value_type.dart';

/// Key-value pair of EventBus property.
class EnterpriseCrmEventbusProtoPropertyEntry {
  /// Key is used to retrieve the corresponding property value. This should be unique for a given fired event. The Tasks should be aware of the keys used while firing the events for them to be able to retrieve the values.
  final String? key;
  /// Values for the defined keys. Each value can either be string, int, double or any proto message.
  final EnterpriseCrmEventbusProtoValueType? value;

  /// Creates a new [EnterpriseCrmEventbusProtoPropertyEntry].
  /// [key] Key is used to retrieve the corresponding property value. This should be unique for a given fired event. The Tasks should be aware of the keys used while firing the events for them to be able to retrieve the values.
  /// [value] Values for the defined keys. Each value can either be string, int, double or any proto message.
  EnterpriseCrmEventbusProtoPropertyEntry({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value == null ? null : value!.toMap(),
    };
  }

  factory EnterpriseCrmEventbusProtoPropertyEntry.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoPropertyEntry(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : EnterpriseCrmEventbusProtoValueType.fromMap((map['value'] as Map).cast<String, dynamic>()),
    );
  }
}

