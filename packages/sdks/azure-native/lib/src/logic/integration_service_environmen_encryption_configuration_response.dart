// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_service_environmen_encryption_key_reference_response.dart';

/// The encryption configuration for the integration service environment.
class IntegrationServiceEnvironmenEncryptionConfigurationResponse {
  /// The encryption key reference.
  final pulumi.Input<
    IntegrationServiceEnvironmenEncryptionKeyReferenceResponse
  >?
  encryptionKeyReference;

  /// Creates a new [IntegrationServiceEnvironmenEncryptionConfigurationResponse].
  /// [encryptionKeyReference] The encryption key reference.
  IntegrationServiceEnvironmenEncryptionConfigurationResponse({
    this.encryptionKeyReference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionKeyReference':
          ?pulumi.Input.mapOptionalInputValue<
            IntegrationServiceEnvironmenEncryptionKeyReferenceResponse,
            Map<String, dynamic>
          >(encryptionKeyReference, (value) => value.toMap()),
    };
  }

  factory IntegrationServiceEnvironmenEncryptionConfigurationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return IntegrationServiceEnvironmenEncryptionConfigurationResponse(
      encryptionKeyReference: (() {
        final guardedValue = map['encryptionKeyReference'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IntegrationServiceEnvironmenEncryptionKeyReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
