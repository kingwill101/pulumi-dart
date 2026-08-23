// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PolyBase settings.
class PolybaseSettings {
  /// Determines the number of rows to attempt to retrieve before the PolyBase recalculates the percentage of rejected rows. Type: integer (or Expression with resultType integer), minimum: 0.
  final pulumi.Input<dynamic>? rejectSampleValue;
  /// Reject type.
  final pulumi.Input<String>? rejectType;
  /// Specifies the value or the percentage of rows that can be rejected before the query fails. Type: number (or Expression with resultType number), minimum: 0.
  final pulumi.Input<dynamic>? rejectValue;
  /// Specifies how to handle missing values in delimited text files when PolyBase retrieves data from the text file. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? useTypeDefault;

  /// Creates a new [PolybaseSettings].
  /// [rejectSampleValue] Determines the number of rows to attempt to retrieve before the PolyBase recalculates the percentage of rejected rows. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [rejectType] Reject type.
  /// [rejectValue] Specifies the value or the percentage of rows that can be rejected before the query fails. Type: number (or Expression with resultType number), minimum: 0.
  /// [useTypeDefault] Specifies how to handle missing values in delimited text files when PolyBase retrieves data from the text file. Type: boolean (or Expression with resultType boolean).
  const PolybaseSettings({
    this.rejectSampleValue,
    this.rejectType,
    this.rejectValue,
    this.useTypeDefault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rejectSampleValue': ?rejectSampleValue,
      'rejectType': ?rejectType,
      'rejectValue': ?rejectValue,
      'useTypeDefault': ?useTypeDefault,
    };
  }

  factory PolybaseSettings.fromMap(Map<String, dynamic> map) {
    return PolybaseSettings(
      rejectSampleValue: (() { final guardedValue = map['rejectSampleValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      rejectType: (() { final guardedValue = map['rejectType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rejectValue: (() { final guardedValue = map['rejectValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      useTypeDefault: (() { final guardedValue = map['useTypeDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
