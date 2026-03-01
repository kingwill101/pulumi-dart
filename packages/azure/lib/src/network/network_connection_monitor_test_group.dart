// ignore_for_file: unused_element, unnecessary_cast


class NetworkConnectionMonitorTestGroup {
  /// A list of destination endpoint names.
  final List<String> destinationEndpoints;
  /// Should the test group be enabled? Defaults to `true`.
  final bool? enabled;
  /// The name of the test group for the Network Connection Monitor.
  final String name;
  /// A list of source endpoint names.
  final List<String> sourceEndpoints;
  /// A list of test configuration names.
  final List<String> testConfigurationNames;

  /// Creates a new [NetworkConnectionMonitorTestGroup].
  /// [destinationEndpoints] A list of destination endpoint names.
  /// [enabled] Should the test group be enabled? Defaults to `true`.
  /// [name] The name of the test group for the Network Connection Monitor.
  /// [sourceEndpoints] A list of source endpoint names.
  /// [testConfigurationNames] A list of test configuration names.
  NetworkConnectionMonitorTestGroup({
    required this.destinationEndpoints,
    this.enabled,
    required this.name,
    required this.sourceEndpoints,
    required this.testConfigurationNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationEndpoints': destinationEndpoints,
      'enabled': ?enabled,
      'name': name,
      'sourceEndpoints': sourceEndpoints,
      'testConfigurationNames': testConfigurationNames,
    };
  }

  factory NetworkConnectionMonitorTestGroup.fromMap(Map<String, dynamic> map) {
    return NetworkConnectionMonitorTestGroup(
      destinationEndpoints: (map['destinationEndpoints'] as List).cast<String>(),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      name: map['name'] as String,
      sourceEndpoints: (map['sourceEndpoints'] as List).cast<String>(),
      testConfigurationNames: (map['testConfigurationNames'] as List).cast<String>(),
    );
  }
}

