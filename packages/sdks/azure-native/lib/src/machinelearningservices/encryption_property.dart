// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_key_vault_properties.dart';
import 'identity_for_cmk.dart';

class EncryptionProperty {
  /// The identity that will be used to access the key vault for encryption at rest.
  final pulumi.Input<IdentityForCmk>? identity;

  /// Customer Key vault properties.
  final pulumi.Input<EncryptionKeyVaultProperties> keyVaultProperties;

  /// Indicates whether or not the encryption is enabled for the workspace.
  final pulumi.Input<String> status;

  /// Creates a new [EncryptionProperty].
  /// [identity] The identity that will be used to access the key vault for encryption at rest.
  /// [keyVaultProperties] Customer Key vault properties.
  /// [status] Indicates whether or not the encryption is enabled for the workspace.
  EncryptionProperty({
    this.identity,
    required this.keyVaultProperties,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            IdentityForCmk,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'keyVaultProperties':
          pulumi.Input.mapInputValue<
            EncryptionKeyVaultProperties,
            Map<String, dynamic>
          >(keyVaultProperties, (value) => value.toMap()),
      'status': status,
    };
  }

  factory EncryptionProperty.fromMap(Map<String, dynamic> map) {
    return EncryptionProperty(
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IdentityForCmk.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      keyVaultProperties: pulumi.Input.fromValue(
        EncryptionKeyVaultProperties.fromMap(
          (map['keyVaultProperties']! as Map).cast<String, dynamic>(),
        ),
      ),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
