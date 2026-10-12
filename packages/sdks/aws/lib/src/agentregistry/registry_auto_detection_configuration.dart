// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistryAutoDetectionConfiguration {
  /// Whether auto-detection is requested for the registry.
  final pulumi.Input<bool> enabled;
  /// Source from which resources are detected. Valid values: `ORGANIZATION`.
  final pulumi.Input<String> scope;

  /// Creates a new [RegistryAutoDetectionConfiguration].
  /// [enabled] Whether auto-detection is requested for the registry.
  /// [scope] Source from which resources are detected. Valid values: `ORGANIZATION`.
  const RegistryAutoDetectionConfiguration({
    required this.enabled,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'scope': scope,
    };
  }

  factory RegistryAutoDetectionConfiguration.fromMap(Map<String, dynamic> map) {
    return RegistryAutoDetectionConfiguration(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
