// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference.dart';

/// The encryption key details for the integration service environment.
class IntegrationServiceEnvironmenEncryptionKeyReference {
  /// Gets the key name in the Key Vault.
  final pulumi.Input<String>? keyName;

  /// The key vault reference.
  final pulumi.Input<ResourceReference>? keyVault;

  /// Gets the version of the key specified in the keyName property.
  final pulumi.Input<String>? keyVersion;

  /// Creates a new [IntegrationServiceEnvironmenEncryptionKeyReference].
  /// [keyName] Gets the key name in the Key Vault.
  /// [keyVault] The key vault reference.
  /// [keyVersion] Gets the version of the key specified in the keyName property.
  IntegrationServiceEnvironmenEncryptionKeyReference({
    this.keyName,
    this.keyVault,
    this.keyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'keyVault':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceReference,
            Map<String, dynamic>
          >(keyVault, (value) => value.toMap()),
      'keyVersion': ?keyVersion,
    };
  }

  factory IntegrationServiceEnvironmenEncryptionKeyReference.fromMap(
    Map<String, dynamic> map,
  ) {
    return IntegrationServiceEnvironmenEncryptionKeyReference(
      keyName: (() {
        final guardedValue = map['keyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyVault: (() {
        final guardedValue = map['keyVault'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      keyVersion: (() {
        final guardedValue = map['keyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
