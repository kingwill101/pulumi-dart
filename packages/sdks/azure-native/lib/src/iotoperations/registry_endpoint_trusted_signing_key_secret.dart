// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for RegistryEndpoint trust provided through a secret.
class RegistryEndpointTrustedSigningKeySecret {
  /// The name of the secret.
  final pulumi.Input<String> secretRef;

  /// RegistryEndpointTrustedSigningKeyType values
  /// Expected value is 'Secret'.
  final pulumi.Input<String> type;

  /// Creates a new [RegistryEndpointTrustedSigningKeySecret].
  /// [secretRef] The name of the secret.
  /// [type] RegistryEndpointTrustedSigningKeyType values
  RegistryEndpointTrustedSigningKeySecret({
    required this.secretRef,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secretRef': secretRef, 'type': type};
  }

  factory RegistryEndpointTrustedSigningKeySecret.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegistryEndpointTrustedSigningKeySecret(
      secretRef: pulumi.Input.fromValue(map['secretRef'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
