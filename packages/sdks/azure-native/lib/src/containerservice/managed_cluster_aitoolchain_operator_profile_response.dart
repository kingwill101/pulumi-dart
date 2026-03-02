// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// When enabling the operator, a set of AKS managed CRDs and controllers will be installed in the cluster. The operator automates the deployment of OSS models for inference and/or training purposes. It provides a set of preset models and enables distributed inference against them.
class ManagedClusterAIToolchainOperatorProfileResponse {
  /// Whether to enable AI toolchain operator to the cluster. Indicates if AI toolchain operator  enabled or not.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ManagedClusterAIToolchainOperatorProfileResponse].
  /// [enabled] Whether to enable AI toolchain operator to the cluster. Indicates if AI toolchain operator  enabled or not.
  ManagedClusterAIToolchainOperatorProfileResponse({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ManagedClusterAIToolchainOperatorProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterAIToolchainOperatorProfileResponse(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

