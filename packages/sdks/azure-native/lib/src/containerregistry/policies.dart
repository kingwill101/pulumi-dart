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
  const Policies({
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
      azureADAuthenticationAsArmPolicy: (() { final guardedValue = map['azureADAuthenticationAsArmPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureADAuthenticationAsArmPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      exportPolicy: (() { final guardedValue = map['exportPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExportPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      quarantinePolicy: (() { final guardedValue = map['quarantinePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QuarantinePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retentionPolicy: (() { final guardedValue = map['retentionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RetentionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      softDeletePolicy: (() { final guardedValue = map['softDeletePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SoftDeletePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trustPolicy: (() { final guardedValue = map['trustPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrustPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
