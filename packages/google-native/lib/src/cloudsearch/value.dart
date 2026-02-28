// ignore_for_file: unused_element, unnecessary_cast

import 'date.dart';

/// Definition of a single value with generic type.
class Value {
  final bool? booleanValue;
  final Date? dateValue;
  final double? doubleValue;
  final String? integerValue;
  final String? stringValue;
  final String? timestampValue;

  /// Creates a new [Value].
  /// [booleanValue] Optional.
  /// [dateValue] Optional.
  /// [doubleValue] Optional.
  /// [integerValue] Optional.
  /// [stringValue] Optional.
  /// [timestampValue] Optional.
  Value({
    this.booleanValue,
    this.dateValue,
    this.doubleValue,
    this.integerValue,
    this.stringValue,
    this.timestampValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final booleanValueValue = booleanValue;
    if (booleanValueValue != null) {
      map['booleanValue'] = booleanValueValue;
    }
    final dateValueValue = dateValue;
    if (dateValueValue != null) {
      map['dateValue'] = dateValueValue.toMap();
    }
    final doubleValueValue = doubleValue;
    if (doubleValueValue != null) {
      map['doubleValue'] = doubleValueValue;
    }
    final integerValueValue = integerValue;
    if (integerValueValue != null) {
      map['integerValue'] = integerValueValue;
    }
    final stringValueValue = stringValue;
    if (stringValueValue != null) {
      map['stringValue'] = stringValueValue;
    }
    final timestampValueValue = timestampValue;
    if (timestampValueValue != null) {
      map['timestampValue'] = timestampValueValue;
    }
    return map;
  }

  factory Value.fromMap(Map<String, dynamic> map) {
    return Value(
      booleanValue:
          map['booleanValue'] == null ? null : map['booleanValue'] as bool,
      dateValue: map['dateValue'] == null
          ? null
          : Date.fromMap((map['dateValue'] as Map).cast<String, dynamic>()),
      doubleValue:
          map['doubleValue'] == null ? null : map['doubleValue'] as double,
      integerValue:
          map['integerValue'] == null ? null : map['integerValue'] as String,
      stringValue:
          map['stringValue'] == null ? null : map['stringValue'] as String,
      timestampValue: map['timestampValue'] == null
          ? null
          : map['timestampValue'] as String,
    );
  }
}
