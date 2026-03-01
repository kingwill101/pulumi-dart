// ignore_for_file: unused_element, unnecessary_cast

import 'azure_adauthentication_as_arm_policy_response.dart';
import 'export_policy_response.dart';
import 'quarantine_policy_response.dart';
import 'retention_policy_response.dart';
import 'soft_delete_policy_response.dart';
import 'trust_policy_response.dart';

/// The policies for a container registry.
class PoliciesResponse {
  /// The policy for using ARM audience token for a container registry.
  final AzureADAuthenticationAsArmPolicyResponse? azureADAuthenticationAsArmPolicy;
  /// The export policy for a container registry.
  final ExportPolicyResponse? exportPolicy;
  /// The quarantine policy for a container registry.
  final QuarantinePolicyResponse? quarantinePolicy;
  /// The retention policy for a container registry.
  final RetentionPolicyResponse? retentionPolicy;
  /// The soft delete policy for a container registry.
  final SoftDeletePolicyResponse? softDeletePolicy;
  /// The content trust policy for a container registry.
  final TrustPolicyResponse? trustPolicy;

  /// Creates a new [PoliciesResponse].
  /// [azureADAuthenticationAsArmPolicy] The policy for using ARM audience token for a container registry.
  /// [exportPolicy] The export policy for a container registry.
  /// [quarantinePolicy] The quarantine policy for a container registry.
  /// [retentionPolicy] The retention policy for a container registry.
  /// [softDeletePolicy] The soft delete policy for a container registry.
  /// [trustPolicy] The content trust policy for a container registry.
  PoliciesResponse({
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

  factory PoliciesResponse.fromMap(Map<String, dynamic> map) {
    return PoliciesResponse(
      azureADAuthenticationAsArmPolicy: map['azureADAuthenticationAsArmPolicy'] == null ? null : AzureADAuthenticationAsArmPolicyResponse.fromMap((map['azureADAuthenticationAsArmPolicy'] as Map).cast<String, dynamic>()),
      exportPolicy: map['exportPolicy'] == null ? null : ExportPolicyResponse.fromMap((map['exportPolicy'] as Map).cast<String, dynamic>()),
      quarantinePolicy: map['quarantinePolicy'] == null ? null : QuarantinePolicyResponse.fromMap((map['quarantinePolicy'] as Map).cast<String, dynamic>()),
      retentionPolicy: map['retentionPolicy'] == null ? null : RetentionPolicyResponse.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>()),
      softDeletePolicy: map['softDeletePolicy'] == null ? null : SoftDeletePolicyResponse.fromMap((map['softDeletePolicy'] as Map).cast<String, dynamic>()),
      trustPolicy: map['trustPolicy'] == null ? null : TrustPolicyResponse.fromMap((map['trustPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}

