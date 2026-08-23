// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationConditionConditionOnValue {
  /// A date expressed as an ISO 8601 string. It is important for the time zone to be included in the ISO 8601 date-time format. As of this writing only UTC is supported. For example, `2012-03-25T12:30:10+00:00`.
  final pulumi.Input<String>? dateValue;
  /// A long integer value.
  final pulumi.Input<int>? longValue;
  /// A list of strings.
  final pulumi.Input<List<String>>? stringListValues;
  final pulumi.Input<String>? stringValue;

  /// Creates a new [DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationConditionConditionOnValue].
  /// [dateValue] A date expressed as an ISO 8601 string. It is important for the time zone to be included in the ISO 8601 date-time format. As of this writing only UTC is supported. For example, `2012-03-25T12:30:10+00:00`.
  /// [longValue] A long integer value.
  /// [stringListValues] A list of strings.
  /// [stringValue] Optional.
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
      longValue: (() { final guardedValue = map['longValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      stringListValues: (() { final guardedValue = map['stringListValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      stringValue: (() { final guardedValue = map['stringValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
