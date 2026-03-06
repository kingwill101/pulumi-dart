// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_encryption_info_encryption_in_transit.dart';

class ClusterEncryptionInfo {
  /// You may specify a KMS key short ID or ARN (it will always output an ARN) to use for encrypting your data at rest.  If no key is specified, an AWS managed KMS ('aws/msk' managed service) key will be used for encrypting the data at rest.
  final pulumi.Input<String>? encryptionAtRestKmsKeyArn;
  /// Configuration block to specify encryption in transit. See encryption_info encryption_in_transit Argument Reference below.
  final pulumi.Input<ClusterEncryptionInfoEncryptionInTransit>? encryptionInTransit;

  /// Creates a new [ClusterEncryptionInfo].
  /// [encryptionAtRestKmsKeyArn] You may specify a KMS key short ID or ARN (it will always output an ARN) to use for encrypting your data at rest.  If no key is specified, an AWS managed KMS ('aws/msk' managed service) key will be used for encrypting the data at rest.
  /// [encryptionInTransit] Configuration block to specify encryption in transit. See encryption_info encryption_in_transit Argument Reference below.
  const ClusterEncryptionInfo({
    this.encryptionAtRestKmsKeyArn,
    this.encryptionInTransit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionAtRestKmsKeyArn': ?encryptionAtRestKmsKeyArn,
      'encryptionInTransit': ?pulumi.Input.mapOptionalInputValue<ClusterEncryptionInfoEncryptionInTransit, Map<String, dynamic>>(encryptionInTransit, (value) => value.toMap()),
    };
  }

  factory ClusterEncryptionInfo.fromMap(Map<String, dynamic> map) {
    return ClusterEncryptionInfo(
      encryptionAtRestKmsKeyArn: (() { final guardedValue = map['encryptionAtRestKmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionInTransit: (() { final guardedValue = map['encryptionInTransit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterEncryptionInfoEncryptionInTransit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

