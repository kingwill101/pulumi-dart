// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Elastic Volume Backup Properties
class ElasticVolumeBackupProperties {
  /// ResourceId used to identify Elastic Backup Policy
  final pulumi.Input<String>? elasticBackupPolicyResourceId;
  /// ResourceId used to identify Elastic Backup Vault
  final pulumi.Input<String>? elasticBackupVaultResourceId;
  /// The property to decide policy is enforced or not on the volume
  final pulumi.Input<String>? policyEnforcement;

  /// Creates a new [ElasticVolumeBackupProperties].
  /// [elasticBackupPolicyResourceId] ResourceId used to identify Elastic Backup Policy
  /// [elasticBackupVaultResourceId] ResourceId used to identify Elastic Backup Vault
  /// [policyEnforcement] The property to decide policy is enforced or not on the volume
  ElasticVolumeBackupProperties({
    this.elasticBackupPolicyResourceId,
    this.elasticBackupVaultResourceId,
    this.policyEnforcement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticBackupPolicyResourceId': ?elasticBackupPolicyResourceId,
      'elasticBackupVaultResourceId': ?elasticBackupVaultResourceId,
      'policyEnforcement': ?policyEnforcement,
    };
  }

  factory ElasticVolumeBackupProperties.fromMap(Map<String, dynamic> map) {
    return ElasticVolumeBackupProperties(
      elasticBackupPolicyResourceId: map['elasticBackupPolicyResourceId'] == null ? null : (map['elasticBackupPolicyResourceId']! as String).input(),
      elasticBackupVaultResourceId: map['elasticBackupVaultResourceId'] == null ? null : (map['elasticBackupVaultResourceId']! as String).input(),
      policyEnforcement: map['policyEnforcement'] == null ? null : (map['policyEnforcement']! as String).input(),
    );
  }
}

