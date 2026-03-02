// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_adauthentication_as_arm_policy_response.dart';
import 'export_policy_response.dart';
import 'quarantine_policy_response.dart';
import 'retention_policy_response.dart';
import 'soft_delete_policy_response.dart';
import 'trust_policy_response.dart';

/// The policies for a container registry.
class PoliciesResponse {
  /// The policy for using ARM audience token for a container registry.
  final pulumi.Input<AzureADAuthenticationAsArmPolicyResponse>? azureADAuthenticationAsArmPolicy;
  /// The export policy for a container registry.
  final pulumi.Input<ExportPolicyResponse>? exportPolicy;
  /// The quarantine policy for a container registry.
  final pulumi.Input<QuarantinePolicyResponse>? quarantinePolicy;
  /// The retention policy for a container registry.
  final pulumi.Input<RetentionPolicyResponse>? retentionPolicy;
  /// The soft delete policy for a container registry.
  final pulumi.Input<SoftDeletePolicyResponse>? softDeletePolicy;
  /// The content trust policy for a container registry.
  final pulumi.Input<TrustPolicyResponse>? trustPolicy;

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
      'azureADAuthenticationAsArmPolicy': ?pulumi.Input.mapOptionalInputValue<AzureADAuthenticationAsArmPolicyResponse, Map<String, dynamic>>(azureADAuthenticationAsArmPolicy, (value) => value.toMap()),
      'exportPolicy': ?pulumi.Input.mapOptionalInputValue<ExportPolicyResponse, Map<String, dynamic>>(exportPolicy, (value) => value.toMap()),
      'quarantinePolicy': ?pulumi.Input.mapOptionalInputValue<QuarantinePolicyResponse, Map<String, dynamic>>(quarantinePolicy, (value) => value.toMap()),
      'retentionPolicy': ?pulumi.Input.mapOptionalInputValue<RetentionPolicyResponse, Map<String, dynamic>>(retentionPolicy, (value) => value.toMap()),
      'softDeletePolicy': ?pulumi.Input.mapOptionalInputValue<SoftDeletePolicyResponse, Map<String, dynamic>>(softDeletePolicy, (value) => value.toMap()),
      'trustPolicy': ?pulumi.Input.mapOptionalInputValue<TrustPolicyResponse, Map<String, dynamic>>(trustPolicy, (value) => value.toMap()),
    };
  }

  factory PoliciesResponse.fromMap(Map<String, dynamic> map) {
    return PoliciesResponse(
      azureADAuthenticationAsArmPolicy: map['azureADAuthenticationAsArmPolicy'] == null ? null : (AzureADAuthenticationAsArmPolicyResponse.fromMap((map['azureADAuthenticationAsArmPolicy'] as Map).cast<String, dynamic>())).input(),
      exportPolicy: map['exportPolicy'] == null ? null : (ExportPolicyResponse.fromMap((map['exportPolicy'] as Map).cast<String, dynamic>())).input(),
      quarantinePolicy: map['quarantinePolicy'] == null ? null : (QuarantinePolicyResponse.fromMap((map['quarantinePolicy'] as Map).cast<String, dynamic>())).input(),
      retentionPolicy: map['retentionPolicy'] == null ? null : (RetentionPolicyResponse.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>())).input(),
      softDeletePolicy: map['softDeletePolicy'] == null ? null : (SoftDeletePolicyResponse.fromMap((map['softDeletePolicy'] as Map).cast<String, dynamic>())).input(),
      trustPolicy: map['trustPolicy'] == null ? null : (TrustPolicyResponse.fromMap((map['trustPolicy'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

