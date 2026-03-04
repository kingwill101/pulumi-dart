// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_v2_response_key_vault_properties.dart';

/// The object that contains details of encryption used on the workspace.
class EncryptionV2Response {
  /// The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.Keyvault
  final pulumi.Input<String> keySource;

  /// Key Vault input properties for encryption.
  final pulumi.Input<EncryptionV2ResponseKeyVaultProperties>?
  keyVaultProperties;

  /// Creates a new [EncryptionV2Response].
  /// [keySource] The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.Keyvault
  /// [keyVaultProperties] Key Vault input properties for encryption.
  EncryptionV2Response({required this.keySource, this.keyVaultProperties});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keySource': keySource,
      'keyVaultProperties':
          ?pulumi.Input.mapOptionalInputValue<
            EncryptionV2ResponseKeyVaultProperties,
            Map<String, dynamic>
          >(keyVaultProperties, (value) => value.toMap()),
    };
  }

  factory EncryptionV2Response.fromMap(Map<String, dynamic> map) {
    return EncryptionV2Response(
      keySource: pulumi.Input.fromValue(map['keySource'] as String),
      keyVaultProperties: (() {
        final guardedValue = map['keyVaultProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EncryptionV2ResponseKeyVaultProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
