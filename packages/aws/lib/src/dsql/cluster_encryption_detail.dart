// ignore_for_file: unused_element, unnecessary_cast

class ClusterEncryptionDetail {
  /// The status of encryption for the DSQL Cluster.
  final String encryptionStatus;

  /// The type of encryption that protects the data on the DSQL Cluster.
  final String encryptionType;

  /// Creates a new [ClusterEncryptionDetail].
  /// [encryptionStatus] The status of encryption for the DSQL Cluster.
  /// [encryptionType] The type of encryption that protects the data on the DSQL Cluster.
  ClusterEncryptionDetail({
    required this.encryptionStatus,
    required this.encryptionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionStatus': encryptionStatus,
      'encryptionType': encryptionType,
    };
  }

  factory ClusterEncryptionDetail.fromMap(Map<String, dynamic> map) {
    return ClusterEncryptionDetail(
      encryptionStatus: map['encryptionStatus'] as String,
      encryptionType: map['encryptionType'] as String,
    );
  }
}
