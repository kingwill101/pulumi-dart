// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkgroupConfigurationMonitoringConfigurationManagedLoggingConfiguration {
  /// Boolean whether managed log persistence is enabled for the workgroup.
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String>? kmsKey;

  /// Creates a new [WorkgroupConfigurationMonitoringConfigurationManagedLoggingConfiguration].
  /// [enabled] Boolean whether managed log persistence is enabled for the workgroup.
  /// [kmsKey] Optional.
  WorkgroupConfigurationMonitoringConfigurationManagedLoggingConfiguration({
    required this.enabled,
    this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'kmsKey': ?kmsKey,
    };
  }

  factory WorkgroupConfigurationMonitoringConfigurationManagedLoggingConfiguration.fromMap(Map<String, dynamic> map) {
    return WorkgroupConfigurationMonitoringConfigurationManagedLoggingConfiguration(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

