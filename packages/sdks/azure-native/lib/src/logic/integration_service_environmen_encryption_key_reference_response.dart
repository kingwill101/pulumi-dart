// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference_response.dart';

/// The encryption key details for the integration service environment.
class IntegrationServiceEnvironmenEncryptionKeyReferenceResponse {
  /// Gets the key name in the Key Vault.
  final pulumi.Input<String>? keyName;
  /// The key vault reference.
  final pulumi.Input<ResourceReferenceResponse>? keyVault;
  /// Gets the version of the key specified in the keyName property.
  final pulumi.Input<String>? keyVersion;

  /// Creates a new [IntegrationServiceEnvironmenEncryptionKeyReferenceResponse].
  /// [keyName] Gets the key name in the Key Vault.
  /// [keyVault] The key vault reference.
  /// [keyVersion] Gets the version of the key specified in the keyName property.
  IntegrationServiceEnvironmenEncryptionKeyReferenceResponse({
    this.keyName,
    this.keyVault,
    this.keyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'keyVault': ?pulumi.Input.mapOptionalInputValue<ResourceReferenceResponse, Map<String, dynamic>>(keyVault, (value) => value.toMap()),
      'keyVersion': ?keyVersion,
    };
  }

  factory IntegrationServiceEnvironmenEncryptionKeyReferenceResponse.fromMap(Map<String, dynamic> map) {
    return IntegrationServiceEnvironmenEncryptionKeyReferenceResponse(
      keyName: map['keyName'] == null ? null : (map['keyName']! as String).input(),
      keyVault: map['keyVault'] == null ? null : (ResourceReferenceResponse.fromMap((map['keyVault']! as Map).cast<String, dynamic>())).input(),
      keyVersion: map['keyVersion'] == null ? null : (map['keyVersion']! as String).input(),
    );
  }
}

