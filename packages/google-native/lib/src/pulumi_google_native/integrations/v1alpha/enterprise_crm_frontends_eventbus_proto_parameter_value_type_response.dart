// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_frontends_eventbus_proto_boolean_parameter_array_response.dart';
import 'enterprise_crm_frontends_eventbus_proto_double_parameter_array_response.dart';
import 'enterprise_crm_frontends_eventbus_proto_int_parameter_array_response.dart';
import 'enterprise_crm_frontends_eventbus_proto_proto_parameter_array_response.dart';
import 'enterprise_crm_frontends_eventbus_proto_serialized_object_parameter_response.dart';
import 'enterprise_crm_frontends_eventbus_proto_string_parameter_array_response.dart';

/// To support various types of parameter values. Next available id: 14
class EnterpriseCrmFrontendsEventbusProtoParameterValueTypeResponse {
  final EnterpriseCrmFrontendsEventbusProtoBooleanParameterArrayResponse
      booleanArray;
  final bool booleanValue;
  final EnterpriseCrmFrontendsEventbusProtoDoubleParameterArrayResponse
      doubleArray;
  final double doubleValue;
  final EnterpriseCrmFrontendsEventbusProtoIntParameterArrayResponse intArray;
  final String intValue;
  final String jsonValue;
  final EnterpriseCrmFrontendsEventbusProtoProtoParameterArrayResponse
      protoArray;
  final Map<String, String> protoValue;
  final EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameterResponse
      serializedObjectValue;
  final EnterpriseCrmFrontendsEventbusProtoStringParameterArrayResponse
      stringArray;
  final String stringValue;

  EnterpriseCrmFrontendsEventbusProtoParameterValueTypeResponse({
    required this.booleanArray,
    required this.booleanValue,
    required this.doubleArray,
    required this.doubleValue,
    required this.intArray,
    required this.intValue,
    required this.jsonValue,
    required this.protoArray,
    required this.protoValue,
    required this.serializedObjectValue,
    required this.stringArray,
    required this.stringValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['booleanArray'] = booleanArray.toMap();
    map['booleanValue'] = booleanValue;
    map['doubleArray'] = doubleArray.toMap();
    map['doubleValue'] = doubleValue;
    map['intArray'] = intArray.toMap();
    map['intValue'] = intValue;
    map['jsonValue'] = jsonValue;
    map['protoArray'] = protoArray.toMap();
    map['protoValue'] = protoValue;
    map['serializedObjectValue'] = serializedObjectValue.toMap();
    map['stringArray'] = stringArray.toMap();
    map['stringValue'] = stringValue;
    return map;
  }

  factory EnterpriseCrmFrontendsEventbusProtoParameterValueTypeResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoParameterValueTypeResponse(
      booleanArray:
          EnterpriseCrmFrontendsEventbusProtoBooleanParameterArrayResponse
              .fromMap((map['booleanArray'] as Map).cast<String, dynamic>()),
      booleanValue: map['booleanValue'] as bool,
      doubleArray:
          EnterpriseCrmFrontendsEventbusProtoDoubleParameterArrayResponse
              .fromMap((map['doubleArray'] as Map).cast<String, dynamic>()),
      doubleValue: map['doubleValue'] as double,
      intArray:
          EnterpriseCrmFrontendsEventbusProtoIntParameterArrayResponse.fromMap(
              (map['intArray'] as Map).cast<String, dynamic>()),
      intValue: map['intValue'] as String,
      jsonValue: map['jsonValue'] as String,
      protoArray: EnterpriseCrmFrontendsEventbusProtoProtoParameterArrayResponse
          .fromMap((map['protoArray'] as Map).cast<String, dynamic>()),
      protoValue: (map['protoValue'] as Map).cast<String, String>(),
      serializedObjectValue:
          EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameterResponse
              .fromMap((map['serializedObjectValue'] as Map)
                  .cast<String, dynamic>()),
      stringArray:
          EnterpriseCrmFrontendsEventbusProtoStringParameterArrayResponse
              .fromMap((map['stringArray'] as Map).cast<String, dynamic>()),
      stringValue: map['stringValue'] as String,
    );
  }
}
