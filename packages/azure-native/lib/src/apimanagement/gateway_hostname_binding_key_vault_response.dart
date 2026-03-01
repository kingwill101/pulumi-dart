// ignore_for_file: unused_element, unnecessary_cast

import 'gateway_hostname_binding_key_vault_last_status_response.dart';

class GatewayHostnameBindingKeyVaultResponse {
  /// The default hostname of the data-plane gateway.
  final String? identityClientId;
  /// The last status of the Key Vault certificate fetch process.
  final GatewayHostnameBindingKeyVaultLastStatusResponse? lastStatus;
  /// The current provisioning state of the API Management gateway hostname binding.
  final String secretId;

  /// Creates a new [GatewayHostnameBindingKeyVaultResponse].
  /// [identityClientId] The default hostname of the data-plane gateway.
  /// [lastStatus] The last status of the Key Vault certificate fetch process.
  /// [secretId] The current provisioning state of the API Management gateway hostname binding.
  GatewayHostnameBindingKeyVaultResponse({
    this.identityClientId,
    this.lastStatus,
    required this.secretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': ?identityClientId,
      'lastStatus': ?lastStatus == null ? null : lastStatus!.toMap(),
      'secretId': secretId,
    };
  }

  factory GatewayHostnameBindingKeyVaultResponse.fromMap(Map<String, dynamic> map) {
    return GatewayHostnameBindingKeyVaultResponse(
      identityClientId: map['identityClientId'] == null ? null : map['identityClientId'] as String,
      lastStatus: map['lastStatus'] == null ? null : GatewayHostnameBindingKeyVaultLastStatusResponse.fromMap((map['lastStatus'] as Map).cast<String, dynamic>()),
      secretId: map['secretId'] as String,
    );
  }
}

