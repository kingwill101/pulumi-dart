// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the connection monitor test group.
class ConnectionMonitorTestGroupResponse {
  /// List of destination endpoint names.
  final pulumi.Input<List<String>> destinations;
  /// Value indicating whether test group is disabled.
  final pulumi.Input<bool>? disable;
  /// The name of the connection monitor test group.
  final pulumi.Input<String> name;
  /// List of source endpoint names.
  final pulumi.Input<List<String>> sources;
  /// List of test configuration names.
  final pulumi.Input<List<String>> testConfigurations;

  /// Creates a new [ConnectionMonitorTestGroupResponse].
  /// [destinations] List of destination endpoint names.
  /// [disable] Value indicating whether test group is disabled.
  /// [name] The name of the connection monitor test group.
  /// [sources] List of source endpoint names.
  /// [testConfigurations] List of test configuration names.
  const ConnectionMonitorTestGroupResponse({
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
      destinations: pulumi.Input.fromValue((map['destinations'] as List).cast<String>()),
      disable: (() { final guardedValue = map['disable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      sources: pulumi.Input.fromValue((map['sources'] as List).cast<String>()),
      testConfigurations: pulumi.Input.fromValue((map['testConfigurations'] as List).cast<String>()),
    );
  }
}

