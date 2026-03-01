// ignore_for_file: unused_element, unnecessary_cast

import 'integration_service_environmen_encryption_key_reference.dart';

/// The encryption configuration for the integration service environment.
class IntegrationServiceEnvironmenEncryptionConfiguration {
  /// The encryption key reference.
  final IntegrationServiceEnvironmenEncryptionKeyReference? encryptionKeyReference;

  /// Creates a new [IntegrationServiceEnvironmenEncryptionConfiguration].
  /// [encryptionKeyReference] The encryption key reference.
  IntegrationServiceEnvironmenEncryptionConfiguration({
    this.encryptionKeyReference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionKeyReference': ?encryptionKeyReference == null ? null : encryptionKeyReference!.toMap(),
    };
  }

  factory IntegrationServiceEnvironmenEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return IntegrationServiceEnvironmenEncryptionConfiguration(
      encryptionKeyReference: map['encryptionKeyReference'] == null ? null : IntegrationServiceEnvironmenEncryptionKeyReference.fromMap((map['encryptionKeyReference'] as Map).cast<String, dynamic>()),
    );
  }
}

