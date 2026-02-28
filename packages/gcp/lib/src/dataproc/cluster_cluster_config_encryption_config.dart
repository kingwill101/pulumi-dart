// ignore_for_file: unused_element, unnecessary_cast

class ClusterClusterConfigEncryptionConfig {
  /// The Cloud KMS key name to use for PD disk encryption for
  /// all instances in the cluster.
  ///
  /// - - -
  final String kmsKeyName;

  /// Creates a new [ClusterClusterConfigEncryptionConfig].
  /// [kmsKeyName] The Cloud KMS key name to use for PD disk encryption for
  ClusterClusterConfigEncryptionConfig({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory ClusterClusterConfigEncryptionConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterClusterConfigEncryptionConfig(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
