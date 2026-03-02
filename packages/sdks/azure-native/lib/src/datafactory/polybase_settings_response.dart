// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PolyBase settings.
class PolybaseSettingsResponse {
  /// Determines the number of rows to attempt to retrieve before the PolyBase recalculates the percentage of rejected rows. Type: integer (or Expression with resultType integer), minimum: 0.
  final pulumi.Input<dynamic>? rejectSampleValue;
  /// Reject type.
  final pulumi.Input<String>? rejectType;
  /// Specifies the value or the percentage of rows that can be rejected before the query fails. Type: number (or Expression with resultType number), minimum: 0.
  final pulumi.Input<dynamic>? rejectValue;
  /// Specifies how to handle missing values in delimited text files when PolyBase retrieves data from the text file. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? useTypeDefault;

  /// Creates a new [PolybaseSettingsResponse].
  /// [rejectSampleValue] Determines the number of rows to attempt to retrieve before the PolyBase recalculates the percentage of rejected rows. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [rejectType] Reject type.
  /// [rejectValue] Specifies the value or the percentage of rows that can be rejected before the query fails. Type: number (or Expression with resultType number), minimum: 0.
  /// [useTypeDefault] Specifies how to handle missing values in delimited text files when PolyBase retrieves data from the text file. Type: boolean (or Expression with resultType boolean).
  PolybaseSettingsResponse({
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

  factory PolybaseSettingsResponse.fromMap(Map<String, dynamic> map) {
    return PolybaseSettingsResponse(
      rejectSampleValue: map['rejectSampleValue'] == null ? null : (map['rejectSampleValue']).input(),
      rejectType: map['rejectType'] == null ? null : (map['rejectType'] as String).input(),
      rejectValue: map['rejectValue'] == null ? null : (map['rejectValue']).input(),
      useTypeDefault: map['useTypeDefault'] == null ? null : (map['useTypeDefault']).input(),
    );
  }
}

