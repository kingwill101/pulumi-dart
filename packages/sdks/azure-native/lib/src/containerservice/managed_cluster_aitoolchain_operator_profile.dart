// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// When enabling the operator, a set of AKS managed CRDs and controllers will be installed in the cluster. The operator automates the deployment of OSS models for inference and/or training purposes. It provides a set of preset models and enables distributed inference against them.
class ManagedClusterAIToolchainOperatorProfile {
  /// Whether to enable AI toolchain operator to the cluster. Indicates if AI toolchain operator  enabled or not.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ManagedClusterAIToolchainOperatorProfile].
  /// [enabled] Whether to enable AI toolchain operator to the cluster. Indicates if AI toolchain operator  enabled or not.
  const ManagedClusterAIToolchainOperatorProfile({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ManagedClusterAIToolchainOperatorProfile.fromMap(Map<String, dynamic> map) {
    return ManagedClusterAIToolchainOperatorProfile(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
