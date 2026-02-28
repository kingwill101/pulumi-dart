// ignore_for_file: unused_element, unnecessary_cast

class DataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfigurationInvocationConditionConditionOnValue {
  /// A date expressed as an ISO 8601 string. It is important for the time zone to be included in the ISO 8601 date-time format. As of this writing only UTC is supported. For example, `2012-03-25T12:30:10+00:00`.
  final String? dateValue;

  /// A long integer value.
  final int? longValue;

  /// A list of strings.
  final List<String>? stringListValues;
  final String? stringValue;

  /// Creates a new [DataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfigurationInvocationConditionConditionOnValue].
  /// [dateValue] A date expressed as an ISO 8601 string. It is important for the time zone to be included in the ISO 8601 date-time format. As of this writing only UTC is supported. For example, `2012-03-25T12:30:10+00:00`.
  /// [longValue] A long integer value.
  /// [stringListValues] A list of strings.
  /// [stringValue] Optional.
  DataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfigurationInvocationConditionConditionOnValue({
    this.dateValue,
    this.longValue,
    this.stringListValues,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dateValueValue = dateValue;
    if (dateValueValue != null) {
      map['dateValue'] = dateValueValue;
    }
    final longValueValue = longValue;
    if (longValueValue != null) {
      map['longValue'] = longValueValue;
    }
    final stringListValuesValue = stringListValues;
    if (stringListValuesValue != null) {
      map['stringListValues'] = stringListValuesValue;
    }
    final stringValueValue = stringValue;
    if (stringValueValue != null) {
      map['stringValue'] = stringValueValue;
    }
    return map;
  }

  factory DataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfigurationInvocationConditionConditionOnValue.fromMap(
      Map<String, dynamic> map) {
    return DataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfigurationInvocationConditionConditionOnValue(
      dateValue: map['dateValue'] == null ? null : map['dateValue'] as String,
      longValue: map['longValue'] == null ? null : map['longValue'] as int,
      stringListValues: map['stringListValues'] == null
          ? null
          : (map['stringListValues'] as List).cast<String>(),
      stringValue:
          map['stringValue'] == null ? null : map['stringValue'] as String,
    );
  }
}
