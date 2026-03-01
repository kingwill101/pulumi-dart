// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_proto_double_array_response.dart';
import 'enterprise_crm_eventbus_proto_int_array_response.dart';
import 'enterprise_crm_eventbus_proto_string_array_response.dart';

/// Used for define type for values. Currently supported value types include int, string, double, array, and any proto message.
class EnterpriseCrmEventbusProtoValueTypeResponse {
  final bool booleanValue;
  final EnterpriseCrmEventbusProtoDoubleArrayResponse doubleArray;
  final double doubleValue;
  final EnterpriseCrmEventbusProtoIntArrayResponse intArray;
  final String intValue;
  final Map<String, String> protoValue;
  final EnterpriseCrmEventbusProtoStringArrayResponse stringArray;
  final String stringValue;

  /// Creates a new [EnterpriseCrmEventbusProtoValueTypeResponse].
  /// [booleanValue] Required.
  /// [doubleArray] Required.
  /// [doubleValue] Required.
  /// [intArray] Required.
  /// [intValue] Required.
  /// [protoValue] Required.
  /// [stringArray] Required.
  /// [stringValue] Required.
  EnterpriseCrmEventbusProtoValueTypeResponse({
    required this.booleanValue,
    required this.doubleArray,
    required this.doubleValue,
    required this.intArray,
    required this.intValue,
    required this.protoValue,
    required this.stringArray,
    required this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanValue': booleanValue,
      'doubleArray': doubleArray.toMap(),
      'doubleValue': doubleValue,
      'intArray': intArray.toMap(),
      'intValue': intValue,
      'protoValue': protoValue,
      'stringArray': stringArray.toMap(),
      'stringValue': stringValue,
    };
  }

  factory EnterpriseCrmEventbusProtoValueTypeResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoValueTypeResponse(
      booleanValue: map['booleanValue'] as bool,
      doubleArray: EnterpriseCrmEventbusProtoDoubleArrayResponse.fromMap(
        (map['doubleArray'] as Map).cast<String, dynamic>(),
      ),
      doubleValue: map['doubleValue'] as double,
      intArray: EnterpriseCrmEventbusProtoIntArrayResponse.fromMap(
        (map['intArray'] as Map).cast<String, dynamic>(),
      ),
      intValue: map['intValue'] as String,
      protoValue: (map['protoValue'] as Map).cast<String, String>(),
      stringArray: EnterpriseCrmEventbusProtoStringArrayResponse.fromMap(
        (map['stringArray'] as Map).cast<String, dynamic>(),
      ),
      stringValue: map['stringValue'] as String,
    );
  }
}
