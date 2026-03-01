// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_frontends_eventbus_proto_parameter_entry_data_type.dart';
import 'enterprise_crm_frontends_eventbus_proto_parameter_value_type.dart';

/// Key-value pair of EventBus parameters.
class EnterpriseCrmFrontendsEventbusProtoParameterEntry {
  /// Explicitly getting the type of the parameter.
  final EnterpriseCrmFrontendsEventbusProtoParameterEntryDataType? dataType;

  /// Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the workflow definition.
  final String? key;

  /// Values for the defined keys. Each value can either be string, int, double or any proto message.
  final EnterpriseCrmFrontendsEventbusProtoParameterValueType? value;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoParameterEntry].
  /// [dataType] Explicitly getting the type of the parameter.
  /// [key] Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the workflow definition.
  /// [value] Values for the defined keys. Each value can either be string, int, double or any proto message.
  EnterpriseCrmFrontendsEventbusProtoParameterEntry({
    this.dataType,
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': ?dataType == null ? null : dataType!.value,
      'key': ?key,
      'value': ?value == null ? null : value!.toMap(),
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoParameterEntry.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmFrontendsEventbusProtoParameterEntry(
      dataType: map['dataType'] == null
          ? null
          : EnterpriseCrmFrontendsEventbusProtoParameterEntryDataType.fromValue(
              map['dataType'] as String,
            ),
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null
          ? null
          : EnterpriseCrmFrontendsEventbusProtoParameterValueType.fromMap(
              (map['value'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
