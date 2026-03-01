// ignore_for_file: unused_element, unnecessary_cast

import 'azure_adauthentication_as_arm_policy.dart';
import 'export_policy.dart';
import 'quarantine_policy.dart';
import 'retention_policy.dart';
import 'soft_delete_policy.dart';
import 'trust_policy.dart';

/// The policies for a container registry.
class Policies {
  /// The policy for using ARM audience token for a container registry.
  final AzureADAuthenticationAsArmPolicy? azureADAuthenticationAsArmPolicy;
  /// The export policy for a container registry.
  final ExportPolicy? exportPolicy;
  /// The quarantine policy for a container registry.
  final QuarantinePolicy? quarantinePolicy;
  /// The retention policy for a container registry.
  final RetentionPolicy? retentionPolicy;
  /// The soft delete policy for a container registry.
  final SoftDeletePolicy? softDeletePolicy;
  /// The content trust policy for a container registry.
  final TrustPolicy? trustPolicy;

  /// Creates a new [Policies].
  /// [azureADAuthenticationAsArmPolicy] The policy for using ARM audience token for a container registry.
  /// [exportPolicy] The export policy for a container registry.
  /// [quarantinePolicy] The quarantine policy for a container registry.
  /// [retentionPolicy] The retention policy for a container registry.
  /// [softDeletePolicy] The soft delete policy for a container registry.
  /// [trustPolicy] The content trust policy for a container registry.
  Policies({
    this.azureADAuthenticationAsArmPolicy,
    this.exportPolicy,
    this.quarantinePolicy,
    this.retentionPolicy,
    this.softDeletePolicy,
    this.trustPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureADAuthenticationAsArmPolicy': ?azureADAuthenticationAsArmPolicy == null ? null : azureADAuthenticationAsArmPolicy!.toMap(),
      'exportPolicy': ?exportPolicy == null ? null : exportPolicy!.toMap(),
      'quarantinePolicy': ?quarantinePolicy == null ? null : quarantinePolicy!.toMap(),
      'retentionPolicy': ?retentionPolicy == null ? null : retentionPolicy!.toMap(),
      'softDeletePolicy': ?softDeletePolicy == null ? null : softDeletePolicy!.toMap(),
      'trustPolicy': ?trustPolicy == null ? null : trustPolicy!.toMap(),
    };
  }

  factory Policies.fromMap(Map<String, dynamic> map) {
    return Policies(
      azureADAuthenticationAsArmPolicy: map['azureADAuthenticationAsArmPolicy'] == null ? null : AzureADAuthenticationAsArmPolicy.fromMap((map['azureADAuthenticationAsArmPolicy'] as Map).cast<String, dynamic>()),
      exportPolicy: map['exportPolicy'] == null ? null : ExportPolicy.fromMap((map['exportPolicy'] as Map).cast<String, dynamic>()),
      quarantinePolicy: map['quarantinePolicy'] == null ? null : QuarantinePolicy.fromMap((map['quarantinePolicy'] as Map).cast<String, dynamic>()),
      retentionPolicy: map['retentionPolicy'] == null ? null : RetentionPolicy.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>()),
      softDeletePolicy: map['softDeletePolicy'] == null ? null : SoftDeletePolicy.fromMap((map['softDeletePolicy'] as Map).cast<String, dynamic>()),
      trustPolicy: map['trustPolicy'] == null ? null : TrustPolicy.fromMap((map['trustPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}

