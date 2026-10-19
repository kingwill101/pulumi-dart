// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationConditionConditionOnValue {
  /// Date expressed as an ISO 8601 string. It is important for the time zone to be included in the ISO 8601 date-time format. As of this writing only UTC is supported. For example, `2012-03-25T12:30:10+00:00`.
  final pulumi.Input<String?>? dateValue;
  /// Long integer value.
  final pulumi.Input<int?>? longValue;
  /// List of strings.
  final pulumi.Input<List<String>?>? stringListValues;
  /// String, such as "department".
  final pulumi.Input<String?>? stringValue;

  /// Creates a new [DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationConditionConditionOnValue].
  /// [dateValue] Date expressed as an ISO 8601 string. It is important for the time zone to be included in the ISO 8601 date-time format. As of this writing only UTC is supported. For example, `2012-03-25T12:30:10+00:00`.
  /// [longValue] Long integer value.
  /// [stringListValues] List of strings.
  /// [stringValue] String, such as "department".
  const DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationConditionConditionOnValue({
    this.dateValue,
    this.longValue,
    this.stringListValues,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dateValue': ?dateValue,
      'longValue': ?longValue,
      'stringListValues': ?stringListValues,
      'stringValue': ?stringValue,
    };
  }

  factory DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationConditionConditionOnValue.fromMap(Map<String, dynamic> map) {
    return DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationConditionConditionOnValue(
      dateValue: (() { final guardedValue = map['dateValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      longValue: (() { final guardedValue = map['longValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      stringListValues: (() { final guardedValue = map['stringListValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      stringValue: (() { final guardedValue = map['stringValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
