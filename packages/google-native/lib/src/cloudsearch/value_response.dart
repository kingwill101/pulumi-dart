// ignore_for_file: unused_element, unnecessary_cast

import 'date_response.dart';

/// Definition of a single value with generic type.
class ValueResponse {
  final bool booleanValue;
  final DateResponse dateValue;
  final double doubleValue;
  final String integerValue;
  final String stringValue;
  final String timestampValue;

  /// Creates a new [ValueResponse].
  /// [booleanValue] Required.
  /// [dateValue] Required.
  /// [doubleValue] Required.
  /// [integerValue] Required.
  /// [stringValue] Required.
  /// [timestampValue] Required.
  ValueResponse({
    required this.booleanValue,
    required this.dateValue,
    required this.doubleValue,
    required this.integerValue,
    required this.stringValue,
    required this.timestampValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanValue': booleanValue,
      'dateValue': dateValue.toMap(),
      'doubleValue': doubleValue,
      'integerValue': integerValue,
      'stringValue': stringValue,
      'timestampValue': timestampValue,
    };
  }

  factory ValueResponse.fromMap(Map<String, dynamic> map) {
    return ValueResponse(
      booleanValue: map['booleanValue'] as bool,
      dateValue: DateResponse.fromMap(
        (map['dateValue'] as Map).cast<String, dynamic>(),
      ),
      doubleValue: map['doubleValue'] as double,
      integerValue: map['integerValue'] as String,
      stringValue: map['stringValue'] as String,
      timestampValue: map['timestampValue'] as String,
    );
  }
}
