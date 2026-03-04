// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The table configuration for the Log Analytics integration.
class AzureMonitorTableConfiguration {
  /// The name.
  final pulumi.Input<String>? name;

  /// Creates a new [AzureMonitorTableConfiguration].
  /// [name] The name.
  AzureMonitorTableConfiguration({this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name};
  }

  factory AzureMonitorTableConfiguration.fromMap(Map<String, dynamic> map) {
    return AzureMonitorTableConfiguration(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
