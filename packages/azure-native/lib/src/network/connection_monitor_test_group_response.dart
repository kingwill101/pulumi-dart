// ignore_for_file: unused_element, unnecessary_cast


/// Describes the connection monitor test group.
class ConnectionMonitorTestGroupResponse {
  /// List of destination endpoint names.
  final List<String> destinations;
  /// Value indicating whether test group is disabled.
  final bool? disable;
  /// The name of the connection monitor test group.
  final String name;
  /// List of source endpoint names.
  final List<String> sources;
  /// List of test configuration names.
  final List<String> testConfigurations;

  /// Creates a new [ConnectionMonitorTestGroupResponse].
  /// [destinations] List of destination endpoint names.
  /// [disable] Value indicating whether test group is disabled.
  /// [name] The name of the connection monitor test group.
  /// [sources] List of source endpoint names.
  /// [testConfigurations] List of test configuration names.
  ConnectionMonitorTestGroupResponse({
    required this.destinations,
    this.disable,
    required this.name,
    required this.sources,
    required this.testConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': destinations,
      'disable': ?disable,
      'name': name,
      'sources': sources,
      'testConfigurations': testConfigurations,
    };
  }

  factory ConnectionMonitorTestGroupResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorTestGroupResponse(
      destinations: (map['destinations'] as List).cast<String>(),
      disable: map['disable'] == null ? null : map['disable'] as bool,
      name: map['name'] as String,
      sources: (map['sources'] as List).cast<String>(),
      testConfigurations: (map['testConfigurations'] as List).cast<String>(),
    );
  }
}

