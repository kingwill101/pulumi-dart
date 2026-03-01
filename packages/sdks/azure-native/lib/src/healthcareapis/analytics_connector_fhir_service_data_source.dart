// ignore_for_file: unused_element, unnecessary_cast


/// The FHIR service data source for Analytics Connector.
class AnalyticsConnectorFhirServiceDataSource {
  /// The kind of FHIR Service.
  final String kind;
  /// Type of data source.
  /// Expected value is 'fhirservice'.
  final String type;
  /// The URL of FHIR service.
  final String url;

  /// Creates a new [AnalyticsConnectorFhirServiceDataSource].
  /// [kind] The kind of FHIR Service.
  /// [type] Type of data source.
  /// [url] The URL of FHIR service.
  AnalyticsConnectorFhirServiceDataSource({
    required this.kind,
    required this.type,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'type': type,
      'url': url,
    };
  }

  factory AnalyticsConnectorFhirServiceDataSource.fromMap(Map<String, dynamic> map) {
    return AnalyticsConnectorFhirServiceDataSource(
      kind: map['kind'] as String,
      type: map['type'] as String,
      url: map['url'] as String,
    );
  }
}

