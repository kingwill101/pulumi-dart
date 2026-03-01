// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_frontends_eventbus_proto_parameter_value_type_response.dart';

/// Key-value pair of EventBus parameters.
class EnterpriseCrmFrontendsEventbusProtoParameterEntryResponse {
  /// Explicitly getting the type of the parameter.
  final String dataType;

  /// Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the workflow definition.
  final String key;

  /// Values for the defined keys. Each value can either be string, int, double or any proto message.
  final EnterpriseCrmFrontendsEventbusProtoParameterValueTypeResponse value;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoParameterEntryResponse].
  /// [dataType] Explicitly getting the type of the parameter.
  /// [key] Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the workflow definition.
  /// [value] Values for the defined keys. Each value can either be string, int, double or any proto message.
  EnterpriseCrmFrontendsEventbusProtoParameterEntryResponse({
    required this.dataType,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': dataType,
      'key': key,
      'value': value.toMap(),
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoParameterEntryResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmFrontendsEventbusProtoParameterEntryResponse(
      dataType: map['dataType'] as String,
      key: map['key'] as String,
      value:
          EnterpriseCrmFrontendsEventbusProtoParameterValueTypeResponse.fromMap(
            (map['value'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
