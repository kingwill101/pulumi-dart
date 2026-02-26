// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_frontends_eventbus_proto_boolean_parameter_array.dart';
import 'enterprise_crm_frontends_eventbus_proto_double_parameter_array.dart';
import 'enterprise_crm_frontends_eventbus_proto_int_parameter_array.dart';
import 'enterprise_crm_frontends_eventbus_proto_proto_parameter_array.dart';
import 'enterprise_crm_frontends_eventbus_proto_serialized_object_parameter.dart';
import 'enterprise_crm_frontends_eventbus_proto_string_parameter_array.dart';

/// To support various types of parameter values. Next available id: 14
class EnterpriseCrmFrontendsEventbusProtoParameterValueType {
  final EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray? booleanArray;
  final bool? booleanValue;
  final EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray? doubleArray;
  final double? doubleValue;
  final EnterpriseCrmFrontendsEventbusProtoIntParameterArray? intArray;
  final String? intValue;
  final String? jsonValue;
  final EnterpriseCrmFrontendsEventbusProtoProtoParameterArray? protoArray;
  final Map<String, String>? protoValue;
  final EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter?
      serializedObjectValue;
  final EnterpriseCrmFrontendsEventbusProtoStringParameterArray? stringArray;
  final String? stringValue;

  EnterpriseCrmFrontendsEventbusProtoParameterValueType({
    this.booleanArray,
    this.booleanValue,
    this.doubleArray,
    this.doubleValue,
    this.intArray,
    this.intValue,
    this.jsonValue,
    this.protoArray,
    this.protoValue,
    this.serializedObjectValue,
    this.stringArray,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final booleanArrayValue = booleanArray;
    if (booleanArrayValue != null) {
      map['booleanArray'] = booleanArrayValue.toMap();
    }
    final booleanValueValue = booleanValue;
    if (booleanValueValue != null) {
      map['booleanValue'] = booleanValueValue;
    }
    final doubleArrayValue = doubleArray;
    if (doubleArrayValue != null) {
      map['doubleArray'] = doubleArrayValue.toMap();
    }
    final doubleValueValue = doubleValue;
    if (doubleValueValue != null) {
      map['doubleValue'] = doubleValueValue;
    }
    final intArrayValue = intArray;
    if (intArrayValue != null) {
      map['intArray'] = intArrayValue.toMap();
    }
    final intValueValue = intValue;
    if (intValueValue != null) {
      map['intValue'] = intValueValue;
    }
    final jsonValueValue = jsonValue;
    if (jsonValueValue != null) {
      map['jsonValue'] = jsonValueValue;
    }
    final protoArrayValue = protoArray;
    if (protoArrayValue != null) {
      map['protoArray'] = protoArrayValue.toMap();
    }
    final protoValueValue = protoValue;
    if (protoValueValue != null) {
      map['protoValue'] = protoValueValue;
    }
    final serializedObjectValueValue = serializedObjectValue;
    if (serializedObjectValueValue != null) {
      map['serializedObjectValue'] = serializedObjectValueValue.toMap();
    }
    final stringArrayValue = stringArray;
    if (stringArrayValue != null) {
      map['stringArray'] = stringArrayValue.toMap();
    }
    final stringValueValue = stringValue;
    if (stringValueValue != null) {
      map['stringValue'] = stringValueValue;
    }
    return map;
  }

  factory EnterpriseCrmFrontendsEventbusProtoParameterValueType.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoParameterValueType(
      booleanArray: map['booleanArray'] == null
          ? null
          : EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray.fromMap(
              (map['booleanArray'] as Map).cast<String, dynamic>()),
      booleanValue:
          map['booleanValue'] == null ? null : map['booleanValue'] as bool,
      doubleArray: map['doubleArray'] == null
          ? null
          : EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray.fromMap(
              (map['doubleArray'] as Map).cast<String, dynamic>()),
      doubleValue:
          map['doubleValue'] == null ? null : map['doubleValue'] as double,
      intArray: map['intArray'] == null
          ? null
          : EnterpriseCrmFrontendsEventbusProtoIntParameterArray.fromMap(
              (map['intArray'] as Map).cast<String, dynamic>()),
      intValue: map['intValue'] == null ? null : map['intValue'] as String,
      jsonValue: map['jsonValue'] == null ? null : map['jsonValue'] as String,
      protoArray: map['protoArray'] == null
          ? null
          : EnterpriseCrmFrontendsEventbusProtoProtoParameterArray.fromMap(
              (map['protoArray'] as Map).cast<String, dynamic>()),
      protoValue: map['protoValue'] == null
          ? null
          : (map['protoValue'] as Map).cast<String, String>(),
      serializedObjectValue: map['serializedObjectValue'] == null
          ? null
          : EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter
              .fromMap((map['serializedObjectValue'] as Map)
                  .cast<String, dynamic>()),
      stringArray: map['stringArray'] == null
          ? null
          : EnterpriseCrmFrontendsEventbusProtoStringParameterArray.fromMap(
              (map['stringArray'] as Map).cast<String, dynamic>()),
      stringValue:
          map['stringValue'] == null ? null : map['stringValue'] as String,
    );
  }
}
