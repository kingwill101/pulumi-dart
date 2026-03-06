// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_vault_response.dart';

/// Key Vault Key Url to be used for server side encryption of Managed Disks and Snapshots
class KeyForDiskEncryptionSetResponse {
  /// Fully versioned Key Url pointing to a key in KeyVault. Version segment of the Url is required regardless of rotationToLatestKeyVersionEnabled value.
  final pulumi.Input<String> keyUrl;
  /// Resource id of the KeyVault containing the key or secret. This property is optional and cannot be used if the KeyVault subscription is not the same as the Disk Encryption Set subscription.
  final pulumi.Input<SourceVaultResponse>? sourceVault;

  /// Creates a new [KeyForDiskEncryptionSetResponse].
  /// [keyUrl] Fully versioned Key Url pointing to a key in KeyVault. Version segment of the Url is required regardless of rotationToLatestKeyVersionEnabled value.
  /// [sourceVault] Resource id of the KeyVault containing the key or secret. This property is optional and cannot be used if the KeyVault subscription is not the same as the Disk Encryption Set subscription.
  const KeyForDiskEncryptionSetResponse({
    required this.keyUrl,
    this.sourceVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyUrl': keyUrl,
      'sourceVault': ?pulumi.Input.mapOptionalInputValue<SourceVaultResponse, Map<String, dynamic>>(sourceVault, (value) => value.toMap()),
    };
  }

  factory KeyForDiskEncryptionSetResponse.fromMap(Map<String, dynamic> map) {
    return KeyForDiskEncryptionSetResponse(
      keyUrl: pulumi.Input.fromValue(map['keyUrl'] as String),
      sourceVault: (() { final guardedValue = map['sourceVault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SourceVaultResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

