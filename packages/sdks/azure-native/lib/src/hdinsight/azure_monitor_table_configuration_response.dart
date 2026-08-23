// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The table configuration for the Log Analytics integration.
class AzureMonitorTableConfigurationResponse {
  /// The name.
  final pulumi.Input<String>? name;

  /// Creates a new [AzureMonitorTableConfigurationResponse].
  /// [name] The name.
  const AzureMonitorTableConfigurationResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory AzureMonitorTableConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AzureMonitorTableConfigurationResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
