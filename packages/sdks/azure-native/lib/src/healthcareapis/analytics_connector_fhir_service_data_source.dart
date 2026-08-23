// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The FHIR service data source for Analytics Connector.
class AnalyticsConnectorFhirServiceDataSource {
  /// The kind of FHIR Service.
  final pulumi.Input<String> kind;
  /// Type of data source.
  /// Expected value is 'fhirservice'.
  final pulumi.Input<String> type;
  /// The URL of FHIR service.
  final pulumi.Input<String> url;

  /// Creates a new [AnalyticsConnectorFhirServiceDataSource].
  /// [kind] The kind of FHIR Service.
  /// [type] Type of data source.
  /// [url] The URL of FHIR service.
  const AnalyticsConnectorFhirServiceDataSource({
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
      kind: pulumi.Input.fromValue(map['kind'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
