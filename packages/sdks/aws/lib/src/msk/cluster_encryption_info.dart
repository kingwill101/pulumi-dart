// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_encryption_info_encryption_in_transit.dart';

class ClusterEncryptionInfo {
  /// You may specify a KMS key short ID or ARN (it will always output an ARN) to use for encrypting your data at rest.  If no key is specified, an AWS managed KMS ('aws/msk' managed service) key will be used for encrypting the data at rest.
  final String? encryptionAtRestKmsKeyArn;
  /// Configuration block to specify encryption in transit. See encryption_info encryption_in_transit Argument Reference below.
  final ClusterEncryptionInfoEncryptionInTransit? encryptionInTransit;

  /// Creates a new [ClusterEncryptionInfo].
  /// [encryptionAtRestKmsKeyArn] You may specify a KMS key short ID or ARN (it will always output an ARN) to use for encrypting your data at rest.  If no key is specified, an AWS managed KMS ('aws/msk' managed service) key will be used for encrypting the data at rest.
  /// [encryptionInTransit] Configuration block to specify encryption in transit. See encryption_info encryption_in_transit Argument Reference below.
  ClusterEncryptionInfo({
    this.encryptionAtRestKmsKeyArn,
    this.encryptionInTransit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionAtRestKmsKeyArn': ?encryptionAtRestKmsKeyArn,
      'encryptionInTransit': ?encryptionInTransit == null ? null : encryptionInTransit!.toMap(),
    };
  }

  factory ClusterEncryptionInfo.fromMap(Map<String, dynamic> map) {
    return ClusterEncryptionInfo(
      encryptionAtRestKmsKeyArn: map['encryptionAtRestKmsKeyArn'] == null ? null : map['encryptionAtRestKmsKeyArn'] as String,
      encryptionInTransit: map['encryptionInTransit'] == null ? null : ClusterEncryptionInfoEncryptionInTransit.fromMap((map['encryptionInTransit'] as Map).cast<String, dynamic>()),
    );
  }
}

