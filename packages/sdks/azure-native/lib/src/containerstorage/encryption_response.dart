// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity_response.dart';

/// Encryption key properties for the pool.
class EncryptionResponse {
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentityResponse>? identity;

  /// The name of the key vault key.
  final pulumi.Input<String> keyName;

  /// The URI of the key vault.
  final pulumi.Input<String> keyVaultUri;

  /// Creates a new [EncryptionResponse].
  /// [identity] The managed service identities assigned to this resource.
  /// [keyName] The name of the key vault key.
  /// [keyVaultUri] The URI of the key vault.
  EncryptionResponse({
    this.identity,
    required this.keyName,
    required this.keyVaultUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedServiceIdentityResponse,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'keyName': keyName,
      'keyVaultUri': keyVaultUri,
    };
  }

  factory EncryptionResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionResponse(
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedServiceIdentityResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      keyVaultUri: pulumi.Input.fromValue(map['keyVaultUri'] as String),
    );
  }
}
