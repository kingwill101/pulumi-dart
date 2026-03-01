// ignore_for_file: unused_element, unnecessary_cast


/// Specify the Datadog organization name. In the case of linking to existing organizations, Id, ApiKey, and Applicationkey is required as well.
class DatadogOrganizationPropertiesResponse {
  /// The configuration which describes the state of cloud security posture management. This collects configuration information for all resources in a subscription and track conformance to industry benchmarks.
  final bool? cspm;
  /// Id of the Datadog organization.
  final String? id;
  /// Name of the Datadog organization.
  final String? name;

  /// Creates a new [DatadogOrganizationPropertiesResponse].
  /// [cspm] The configuration which describes the state of cloud security posture management. This collects configuration information for all resources in a subscription and track conformance to industry benchmarks.
  /// [id] Id of the Datadog organization.
  /// [name] Name of the Datadog organization.
  DatadogOrganizationPropertiesResponse({
    this.cspm,
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cspm': ?cspm,
      'id': ?id,
      'name': ?name,
    };
  }

  factory DatadogOrganizationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DatadogOrganizationPropertiesResponse(
      cspm: map['cspm'] == null ? null : map['cspm'] as bool,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

