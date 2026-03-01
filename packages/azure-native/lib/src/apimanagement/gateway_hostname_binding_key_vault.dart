// ignore_for_file: unused_element, unnecessary_cast


class GatewayHostnameBindingKeyVault {
  /// The default hostname of the data-plane gateway.
  final String? identityClientId;
  /// The current provisioning state of the API Management gateway hostname binding.
  final String secretId;

  /// Creates a new [GatewayHostnameBindingKeyVault].
  /// [identityClientId] The default hostname of the data-plane gateway.
  /// [secretId] The current provisioning state of the API Management gateway hostname binding.
  GatewayHostnameBindingKeyVault({
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
      identityClientId: map['identityClientId'] == null ? null : map['identityClientId'] as String,
      secretId: map['secretId'] as String,
    );
  }
}

