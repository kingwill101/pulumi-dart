// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_service_environmen_encryption_key_reference.dart';

/// The encryption configuration for the integration service environment.
class IntegrationServiceEnvironmenEncryptionConfiguration {
  /// The encryption key reference.
  final pulumi.Input<IntegrationServiceEnvironmenEncryptionKeyReference>? encryptionKeyReference;

  /// Creates a new [IntegrationServiceEnvironmenEncryptionConfiguration].
  /// [encryptionKeyReference] The encryption key reference.
  IntegrationServiceEnvironmenEncryptionConfiguration({
    this.encryptionKeyReference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionKeyReference': ?pulumi.Input.mapOptionalInputValue<IntegrationServiceEnvironmenEncryptionKeyReference, Map<String, dynamic>>(encryptionKeyReference, (value) => value.toMap()),
    };
  }

  factory IntegrationServiceEnvironmenEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return IntegrationServiceEnvironmenEncryptionConfiguration(
      encryptionKeyReference: (() { final guardedValue = map['encryptionKeyReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationServiceEnvironmenEncryptionKeyReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

