// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayHostnameBindingKeyVault {
  /// The default hostname of the data-plane gateway.
  final pulumi.Input<String>? identityClientId;
  /// The current provisioning state of the API Management gateway hostname binding.
  final pulumi.Input<String> secretId;

  /// Creates a new [GatewayHostnameBindingKeyVault].
  /// [identityClientId] The default hostname of the data-plane gateway.
  /// [secretId] The current provisioning state of the API Management gateway hostname binding.
  const GatewayHostnameBindingKeyVault({
    this.identityClientId,
    required this.secretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': ?identityClientId,
      'secretId': secretId,
    };
  }

  factory GatewayHostnameBindingKeyVault.fromMap(Map<String, dynamic> map) {
    return GatewayHostnameBindingKeyVault(
      identityClientId: (() { final guardedValue = map['identityClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretId: pulumi.Input.fromValue(map['secretId'] as String),
    );
  }
}
