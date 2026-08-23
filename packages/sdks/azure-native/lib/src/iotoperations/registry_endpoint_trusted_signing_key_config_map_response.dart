// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for RegistryEndpoint trust provided through a configmap.
class RegistryEndpointTrustedSigningKeyConfigMapResponse {
  /// The name of the configmap.
  final pulumi.Input<String> configMapRef;
  /// RegistryEndpointTrustedSigningKeyType values
  /// Expected value is 'ConfigMap'.
  final pulumi.Input<String> type;

  /// Creates a new [RegistryEndpointTrustedSigningKeyConfigMapResponse].
  /// [configMapRef] The name of the configmap.
  /// [type] RegistryEndpointTrustedSigningKeyType values
  const RegistryEndpointTrustedSigningKeyConfigMapResponse({
    required this.configMapRef,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configMapRef': configMapRef,
      'type': type,
    };
  }

  factory RegistryEndpointTrustedSigningKeyConfigMapResponse.fromMap(Map<String, dynamic> map) {
    return RegistryEndpointTrustedSigningKeyConfigMapResponse(
      configMapRef: pulumi.Input.fromValue(map['configMapRef'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
