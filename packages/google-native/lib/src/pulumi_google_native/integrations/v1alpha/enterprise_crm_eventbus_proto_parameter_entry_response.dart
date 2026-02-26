// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_proto_parameter_value_type_response.dart';

/// Key-value pair of EventBus parameters.
class EnterpriseCrmEventbusProtoParameterEntryResponse {
  /// Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the integration definition.
  final String key;

  /// Values for the defined keys. Each value can either be string, int, double or any proto message.
  final EnterpriseCrmEventbusProtoParameterValueTypeResponse value;

  EnterpriseCrmEventbusProtoParameterEntryResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value.toMap();
    return map;
  }

  factory EnterpriseCrmEventbusProtoParameterEntryResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoParameterEntryResponse(
      key: map['key'] as String,
      value: EnterpriseCrmEventbusProtoParameterValueTypeResponse.fromMap(
          (map['value'] as Map).cast<String, dynamic>()),
    );
  }
}
