// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_proto_boolean_parameter_array_response.dart';
import 'enterprise_crm_eventbus_proto_double_parameter_array_response.dart';
import 'enterprise_crm_eventbus_proto_int_parameter_array_response.dart';
import 'enterprise_crm_eventbus_proto_proto_parameter_array_response.dart';
import 'enterprise_crm_eventbus_proto_serialized_object_parameter_response.dart';
import 'enterprise_crm_eventbus_proto_string_parameter_array_response.dart';

/// LINT.IfChange To support various types of parameter values. Next available id: 14
class EnterpriseCrmEventbusProtoParameterValueTypeResponse {
  final EnterpriseCrmEventbusProtoBooleanParameterArrayResponse booleanArray;
  final bool booleanValue;
  final EnterpriseCrmEventbusProtoDoubleParameterArrayResponse doubleArray;
  final double doubleValue;
  final EnterpriseCrmEventbusProtoIntParameterArrayResponse intArray;
  final String intValue;
  final EnterpriseCrmEventbusProtoProtoParameterArrayResponse protoArray;
  final Map<String, String> protoValue;
  final EnterpriseCrmEventbusProtoSerializedObjectParameterResponse
      serializedObjectValue;
  final EnterpriseCrmEventbusProtoStringParameterArrayResponse stringArray;
  final String stringValue;

  /// Creates a new [EnterpriseCrmEventbusProtoParameterValueTypeResponse].
  /// [booleanArray] Required.
  /// [booleanValue] Required.
  /// [doubleArray] Required.
  /// [doubleValue] Required.
  /// [intArray] Required.
  /// [intValue] Required.
  /// [protoArray] Required.
  /// [protoValue] Required.
  /// [serializedObjectValue] Required.
  /// [stringArray] Required.
  /// [stringValue] Required.
  EnterpriseCrmEventbusProtoParameterValueTypeResponse({
    required this.booleanArray,
    required this.booleanValue,
    required this.doubleArray,
    required this.doubleValue,
    required this.intArray,
    required this.intValue,
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
    map['protoArray'] = protoArray.toMap();
    map['protoValue'] = protoValue;
    map['serializedObjectValue'] = serializedObjectValue.toMap();
    map['stringArray'] = stringArray.toMap();
    map['stringValue'] = stringValue;
    return map;
  }

  factory EnterpriseCrmEventbusProtoParameterValueTypeResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoParameterValueTypeResponse(
      booleanArray:
          EnterpriseCrmEventbusProtoBooleanParameterArrayResponse.fromMap(
              (map['booleanArray'] as Map).cast<String, dynamic>()),
      booleanValue: map['booleanValue'] as bool,
      doubleArray:
          EnterpriseCrmEventbusProtoDoubleParameterArrayResponse.fromMap(
              (map['doubleArray'] as Map).cast<String, dynamic>()),
      doubleValue: map['doubleValue'] as double,
      intArray: EnterpriseCrmEventbusProtoIntParameterArrayResponse.fromMap(
          (map['intArray'] as Map).cast<String, dynamic>()),
      intValue: map['intValue'] as String,
      protoArray: EnterpriseCrmEventbusProtoProtoParameterArrayResponse.fromMap(
          (map['protoArray'] as Map).cast<String, dynamic>()),
      protoValue: (map['protoValue'] as Map).cast<String, String>(),
      serializedObjectValue:
          EnterpriseCrmEventbusProtoSerializedObjectParameterResponse.fromMap(
              (map['serializedObjectValue'] as Map).cast<String, dynamic>()),
      stringArray:
          EnterpriseCrmEventbusProtoStringParameterArrayResponse.fromMap(
              (map['stringArray'] as Map).cast<String, dynamic>()),
      stringValue: map['stringValue'] as String,
    );
  }
}
