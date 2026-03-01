// ignore_for_file: unused_element, unnecessary_cast

class WorkflowTemplatePlacementManagedClusterConfigEncryptionConfig {
  /// The Cloud KMS key name to use for PD disk encryption for all instances in the cluster.
  final String? gcePdKmsKeyName;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigEncryptionConfig].
  /// [gcePdKmsKeyName] The Cloud KMS key name to use for PD disk encryption for all instances in the cluster.
  WorkflowTemplatePlacementManagedClusterConfigEncryptionConfig({
    this.gcePdKmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'gcePdKmsKeyName': ?gcePdKmsKeyName};
  }

  factory WorkflowTemplatePlacementManagedClusterConfigEncryptionConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return WorkflowTemplatePlacementManagedClusterConfigEncryptionConfig(
      gcePdKmsKeyName: map['gcePdKmsKeyName'] == null
          ? null
          : map['gcePdKmsKeyName'] as String,
    );
  }
}
