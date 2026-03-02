// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_adauthentication_as_arm_policy.dart';
import 'export_policy.dart';
import 'quarantine_policy.dart';
import 'retention_policy.dart';
import 'soft_delete_policy.dart';
import 'trust_policy.dart';

/// The policies for a container registry.
class Policies {
  /// The policy for using ARM audience token for a container registry.
  final pulumi.Input<AzureADAuthenticationAsArmPolicy>? azureADAuthenticationAsArmPolicy;
  /// The export policy for a container registry.
  final pulumi.Input<ExportPolicy>? exportPolicy;
  /// The quarantine policy for a container registry.
  final pulumi.Input<QuarantinePolicy>? quarantinePolicy;
  /// The retention policy for a container registry.
  final pulumi.Input<RetentionPolicy>? retentionPolicy;
  /// The soft delete policy for a container registry.
  final pulumi.Input<SoftDeletePolicy>? softDeletePolicy;
  /// The content trust policy for a container registry.
  final pulumi.Input<TrustPolicy>? trustPolicy;

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
      'azureADAuthenticationAsArmPolicy': ?pulumi.Input.mapOptionalInputValue<AzureADAuthenticationAsArmPolicy, Map<String, dynamic>>(azureADAuthenticationAsArmPolicy, (value) => value.toMap()),
      'exportPolicy': ?pulumi.Input.mapOptionalInputValue<ExportPolicy, Map<String, dynamic>>(exportPolicy, (value) => value.toMap()),
      'quarantinePolicy': ?pulumi.Input.mapOptionalInputValue<QuarantinePolicy, Map<String, dynamic>>(quarantinePolicy, (value) => value.toMap()),
      'retentionPolicy': ?pulumi.Input.mapOptionalInputValue<RetentionPolicy, Map<String, dynamic>>(retentionPolicy, (value) => value.toMap()),
      'softDeletePolicy': ?pulumi.Input.mapOptionalInputValue<SoftDeletePolicy, Map<String, dynamic>>(softDeletePolicy, (value) => value.toMap()),
      'trustPolicy': ?pulumi.Input.mapOptionalInputValue<TrustPolicy, Map<String, dynamic>>(trustPolicy, (value) => value.toMap()),
    };
  }

  factory Policies.fromMap(Map<String, dynamic> map) {
    return Policies(
      azureADAuthenticationAsArmPolicy: map['azureADAuthenticationAsArmPolicy'] == null ? null : (AzureADAuthenticationAsArmPolicy.fromMap((map['azureADAuthenticationAsArmPolicy'] as Map).cast<String, dynamic>())).input(),
      exportPolicy: map['exportPolicy'] == null ? null : (ExportPolicy.fromMap((map['exportPolicy'] as Map).cast<String, dynamic>())).input(),
      quarantinePolicy: map['quarantinePolicy'] == null ? null : (QuarantinePolicy.fromMap((map['quarantinePolicy'] as Map).cast<String, dynamic>())).input(),
      retentionPolicy: map['retentionPolicy'] == null ? null : (RetentionPolicy.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>())).input(),
      softDeletePolicy: map['softDeletePolicy'] == null ? null : (SoftDeletePolicy.fromMap((map['softDeletePolicy'] as Map).cast<String, dynamic>())).input(),
      trustPolicy: map['trustPolicy'] == null ? null : (TrustPolicy.fromMap((map['trustPolicy'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

