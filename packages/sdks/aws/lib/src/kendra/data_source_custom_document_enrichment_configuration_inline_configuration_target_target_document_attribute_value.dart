// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationTargetTargetDocumentAttributeValue {
  /// A date expressed as an ISO 8601 string. It is important for the time zone to be included in the ISO 8601 date-time format. As of this writing only UTC is supported. For example, `2012-03-25T12:30:10+00:00`.
  final pulumi.Input<String>? dateValue;
  /// A long integer value.
  final pulumi.Input<int>? longValue;
  /// A list of strings.
  final pulumi.Input<List<String>>? stringListValues;
  final pulumi.Input<String>? stringValue;

  /// Creates a new [DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationTargetTargetDocumentAttributeValue].
  /// [dateValue] A date expressed as an ISO 8601 string. It is important for the time zone to be included in the ISO 8601 date-time format. As of this writing only UTC is supported. For example, `2012-03-25T12:30:10+00:00`.
  /// [longValue] A long integer value.
  /// [stringListValues] A list of strings.
  /// [stringValue] Optional.
  DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationTargetTargetDocumentAttributeValue({
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

  factory DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationTargetTargetDocumentAttributeValue.fromMap(Map<String, dynamic> map) {
    return DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationTargetTargetDocumentAttributeValue(
      dateValue: map['dateValue'] == null ? null : (map['dateValue'] as String).input(),
      longValue: map['longValue'] == null ? null : (map['longValue'] as int).input(),
      stringListValues: map['stringListValues'] == null ? null : ((map['stringListValues'] as List).cast<String>()).input(),
      stringValue: map['stringValue'] == null ? null : (map['stringValue'] as String).input(),
    );
  }
}

