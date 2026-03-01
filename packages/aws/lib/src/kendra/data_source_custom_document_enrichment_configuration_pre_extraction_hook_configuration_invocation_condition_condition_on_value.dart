// ignore_for_file: unused_element, unnecessary_cast


class DataSourceCustomDocumentEnrichmentConfigurationPreExtractionHookConfigurationInvocationConditionConditionOnValue {
  /// A date expressed as an ISO 8601 string. It is important for the time zone to be included in the ISO 8601 date-time format. As of this writing only UTC is supported. For example, `2012-03-25T12:30:10+00:00`.
  final String? dateValue;
  /// A long integer value.
  final int? longValue;
  /// A list of strings.
  final List<String>? stringListValues;
  final String? stringValue;

  /// Creates a new [DataSourceCustomDocumentEnrichmentConfigurationPreExtractionHookConfigurationInvocationConditionConditionOnValue].
  /// [dateValue] A date expressed as an ISO 8601 string. It is important for the time zone to be included in the ISO 8601 date-time format. As of this writing only UTC is supported. For example, `2012-03-25T12:30:10+00:00`.
  /// [longValue] A long integer value.
  /// [stringListValues] A list of strings.
  /// [stringValue] Optional.
  DataSourceCustomDocumentEnrichmentConfigurationPreExtractionHookConfigurationInvocationConditionConditionOnValue({
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

  factory DataSourceCustomDocumentEnrichmentConfigurationPreExtractionHookConfigurationInvocationConditionConditionOnValue.fromMap(Map<String, dynamic> map) {
    return DataSourceCustomDocumentEnrichmentConfigurationPreExtractionHookConfigurationInvocationConditionConditionOnValue(
      dateValue: map['dateValue'] == null ? null : map['dateValue'] as String,
      longValue: map['longValue'] == null ? null : map['longValue'] as int,
      stringListValues: map['stringListValues'] == null ? null : (map['stringListValues'] as List).cast<String>(),
      stringValue: map['stringValue'] == null ? null : map['stringValue'] as String,
    );
  }
}

