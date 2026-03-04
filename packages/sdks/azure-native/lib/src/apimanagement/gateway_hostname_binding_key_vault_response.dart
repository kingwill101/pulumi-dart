// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_hostname_binding_key_vault_last_status_response.dart';

class GatewayHostnameBindingKeyVaultResponse {
  /// The default hostname of the data-plane gateway.
  final pulumi.Input<String>? identityClientId;

  /// The last status of the Key Vault certificate fetch process.
  final pulumi.Input<GatewayHostnameBindingKeyVaultLastStatusResponse>?
  lastStatus;

  /// The current provisioning state of the API Management gateway hostname binding.
  final pulumi.Input<String> secretId;

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
      'lastStatus':
          ?pulumi.Input.mapOptionalInputValue<
            GatewayHostnameBindingKeyVaultLastStatusResponse,
            Map<String, dynamic>
          >(lastStatus, (value) => value.toMap()),
      'secretId': secretId,
    };
  }

  factory GatewayHostnameBindingKeyVaultResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GatewayHostnameBindingKeyVaultResponse(
      identityClientId: (() {
        final guardedValue = map['identityClientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastStatus: (() {
        final guardedValue = map['lastStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GatewayHostnameBindingKeyVaultLastStatusResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      secretId: pulumi.Input.fromValue(map['secretId'] as String),
    );
  }
}
