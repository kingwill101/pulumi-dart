// ignore_for_file: unused_element, unnecessary_cast

import 'integration_service_environmen_encryption_key_reference_response.dart';

/// The encryption configuration for the integration service environment.
class IntegrationServiceEnvironmenEncryptionConfigurationResponse {
  /// The encryption key reference.
  final IntegrationServiceEnvironmenEncryptionKeyReferenceResponse? encryptionKeyReference;

  /// Creates a new [IntegrationServiceEnvironmenEncryptionConfigurationResponse].
  /// [encryptionKeyReference] The encryption key reference.
  IntegrationServiceEnvironmenEncryptionConfigurationResponse({
    this.encryptionKeyReference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionKeyReference': ?encryptionKeyReference == null ? null : encryptionKeyReference!.toMap(),
    };
  }

  factory IntegrationServiceEnvironmenEncryptionConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return IntegrationServiceEnvironmenEncryptionConfigurationResponse(
      encryptionKeyReference: map['encryptionKeyReference'] == null ? null : IntegrationServiceEnvironmenEncryptionKeyReferenceResponse.fromMap((map['encryptionKeyReference'] as Map).cast<String, dynamic>()),
    );
  }
}

