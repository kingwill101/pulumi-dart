// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterEncryptionDetail {
  /// The status of encryption for the DSQL Cluster.
  final pulumi.Input<String> encryptionStatus;
  /// The type of encryption that protects the data on the DSQL Cluster.
  final pulumi.Input<String> encryptionType;

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
      encryptionStatus: (map['encryptionStatus'] as String).input(),
      encryptionType: (map['encryptionType'] as String).input(),
    );
  }
}

