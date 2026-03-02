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
      'identity': ?pulumi.Input.mapOptionalInputValue<IdentityForCmk, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultProperties': pulumi.Input.mapInputValue<EncryptionKeyVaultProperties, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
      'status': status,
    };
  }

  factory EncryptionProperty.fromMap(Map<String, dynamic> map) {
    return EncryptionProperty(
      identity: map['identity'] == null ? null : (IdentityForCmk.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      keyVaultProperties: (EncryptionKeyVaultProperties.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>())).input(),
      status: (map['status'] as String).input(),
    );
  }
}

