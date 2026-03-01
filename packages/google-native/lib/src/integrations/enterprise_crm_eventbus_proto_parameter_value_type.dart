// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_proto_boolean_parameter_array.dart';
import 'enterprise_crm_eventbus_proto_double_parameter_array.dart';
import 'enterprise_crm_eventbus_proto_int_parameter_array.dart';
import 'enterprise_crm_eventbus_proto_proto_parameter_array.dart';
import 'enterprise_crm_eventbus_proto_serialized_object_parameter.dart';
import 'enterprise_crm_eventbus_proto_string_parameter_array.dart';

/// LINT.IfChange To support various types of parameter values. Next available id: 14
class EnterpriseCrmEventbusProtoParameterValueType {
  final EnterpriseCrmEventbusProtoBooleanParameterArray? booleanArray;
  final bool? booleanValue;
  final EnterpriseCrmEventbusProtoDoubleParameterArray? doubleArray;
  final double? doubleValue;
  final EnterpriseCrmEventbusProtoIntParameterArray? intArray;
  final String? intValue;
  final EnterpriseCrmEventbusProtoProtoParameterArray? protoArray;
  final Map<String, String>? protoValue;
  final EnterpriseCrmEventbusProtoSerializedObjectParameter?
  serializedObjectValue;
  final EnterpriseCrmEventbusProtoStringParameterArray? stringArray;
  final String? stringValue;

  /// Creates a new [EnterpriseCrmEventbusProtoParameterValueType].
  /// [booleanArray] Optional.
  /// [booleanValue] Optional.
  /// [doubleArray] Optional.
  /// [doubleValue] Optional.
  /// [intArray] Optional.
  /// [intValue] Optional.
  /// [protoArray] Optional.
  /// [protoValue] Optional.
  /// [serializedObjectValue] Optional.
  /// [stringArray] Optional.
  /// [stringValue] Optional.
  EnterpriseCrmEventbusProtoParameterValueType({
    this.booleanArray,
    this.booleanValue,
    this.doubleArray,
    this.doubleValue,
    this.intArray,
    this.intValue,
    this.protoArray,
    this.protoValue,
    this.serializedObjectValue,
    this.stringArray,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanArray': ?booleanArray == null ? null : booleanArray!.toMap(),
      'booleanValue': ?booleanValue,
      'doubleArray': ?doubleArray == null ? null : doubleArray!.toMap(),
      'doubleValue': ?doubleValue,
      'intArray': ?intArray == null ? null : intArray!.toMap(),
      'intValue': ?intValue,
      'protoArray': ?protoArray == null ? null : protoArray!.toMap(),
      'protoValue': ?protoValue,
      'serializedObjectValue': ?serializedObjectValue == null
          ? null
          : serializedObjectValue!.toMap(),
      'stringArray': ?stringArray == null ? null : stringArray!.toMap(),
      'stringValue': ?stringValue,
    };
  }

  factory EnterpriseCrmEventbusProtoParameterValueType.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoParameterValueType(
      booleanArray: map['booleanArray'] == null
          ? null
          : EnterpriseCrmEventbusProtoBooleanParameterArray.fromMap(
              (map['booleanArray'] as Map).cast<String, dynamic>(),
            ),
      booleanValue: map['booleanValue'] == null
          ? null
          : map['booleanValue'] as bool,
      doubleArray: map['doubleArray'] == null
          ? null
          : EnterpriseCrmEventbusProtoDoubleParameterArray.fromMap(
              (map['doubleArray'] as Map).cast<String, dynamic>(),
            ),
      doubleValue: map['doubleValue'] == null
          ? null
          : map['doubleValue'] as double,
      intArray: map['intArray'] == null
          ? null
          : EnterpriseCrmEventbusProtoIntParameterArray.fromMap(
              (map['intArray'] as Map).cast<String, dynamic>(),
            ),
      intValue: map['intValue'] == null ? null : map['intValue'] as String,
      protoArray: map['protoArray'] == null
          ? null
          : EnterpriseCrmEventbusProtoProtoParameterArray.fromMap(
              (map['protoArray'] as Map).cast<String, dynamic>(),
            ),
      protoValue: map['protoValue'] == null
          ? null
          : (map['protoValue'] as Map).cast<String, String>(),
      serializedObjectValue: map['serializedObjectValue'] == null
          ? null
          : EnterpriseCrmEventbusProtoSerializedObjectParameter.fromMap(
              (map['serializedObjectValue'] as Map).cast<String, dynamic>(),
            ),
      stringArray: map['stringArray'] == null
          ? null
          : EnterpriseCrmEventbusProtoStringParameterArray.fromMap(
              (map['stringArray'] as Map).cast<String, dynamic>(),
            ),
      stringValue: map['stringValue'] == null
          ? null
          : map['stringValue'] as String,
    );
  }
}
