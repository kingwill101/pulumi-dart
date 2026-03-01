// ignore_for_file: unused_element, unnecessary_cast


/// The table configuration for the Log Analytics integration.
class AzureMonitorTableConfigurationResponse {
  /// The name.
  final String? name;

  /// Creates a new [AzureMonitorTableConfigurationResponse].
  /// [name] The name.
  AzureMonitorTableConfigurationResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory AzureMonitorTableConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AzureMonitorTableConfigurationResponse(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

