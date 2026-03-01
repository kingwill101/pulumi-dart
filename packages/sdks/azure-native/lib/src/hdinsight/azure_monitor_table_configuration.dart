// ignore_for_file: unused_element, unnecessary_cast


/// The table configuration for the Log Analytics integration.
class AzureMonitorTableConfiguration {
  /// The name.
  final String? name;

  /// Creates a new [AzureMonitorTableConfiguration].
  /// [name] The name.
  AzureMonitorTableConfiguration({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory AzureMonitorTableConfiguration.fromMap(Map<String, dynamic> map) {
    return AzureMonitorTableConfiguration(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

