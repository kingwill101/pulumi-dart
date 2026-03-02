// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceMeshMeshConfigSidecarInjectorInitCniConfiguration {
  /// Enable CNI
  final pulumi.Input<bool>? enabled;
  /// The excluded namespace
  final pulumi.Input<String>? excludeNamespaces;

  /// Creates a new [ServiceMeshMeshConfigSidecarInjectorInitCniConfiguration].
  /// [enabled] Enable CNI
  /// [excludeNamespaces] The excluded namespace
  ServiceMeshMeshConfigSidecarInjectorInitCniConfiguration({
    this.enabled,
    this.excludeNamespaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'excludeNamespaces': ?excludeNamespaces,
    };
  }

  factory ServiceMeshMeshConfigSidecarInjectorInitCniConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceMeshMeshConfigSidecarInjectorInitCniConfiguration(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      excludeNamespaces: map['excludeNamespaces'] == null ? null : (map['excludeNamespaces']! as String).input(),
    );
  }
}

