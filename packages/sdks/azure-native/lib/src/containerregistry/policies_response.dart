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
  const PoliciesResponse({
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
      azureADAuthenticationAsArmPolicy: (() { final guardedValue = map['azureADAuthenticationAsArmPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureADAuthenticationAsArmPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      exportPolicy: (() { final guardedValue = map['exportPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExportPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      quarantinePolicy: (() { final guardedValue = map['quarantinePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QuarantinePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retentionPolicy: (() { final guardedValue = map['retentionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RetentionPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      softDeletePolicy: (() { final guardedValue = map['softDeletePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SoftDeletePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trustPolicy: (() { final guardedValue = map['trustPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrustPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

