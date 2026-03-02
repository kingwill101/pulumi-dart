// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterMasterUserSecret {
  final pulumi.Input<String> kmsKeyId;
  final pulumi.Input<String> secretArn;
  final pulumi.Input<String> secretStatus;

  /// Creates a new [GetClusterMasterUserSecret].
  /// [kmsKeyId] Required.
  /// [secretArn] Required.
  /// [secretStatus] Required.
  GetClusterMasterUserSecret({
    required this.kmsKeyId,
    required this.secretArn,
    required this.secretStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': kmsKeyId,
      'secretArn': secretArn,
      'secretStatus': secretStatus,
    };
  }

  factory GetClusterMasterUserSecret.fromMap(Map<String, dynamic> map) {
    return GetClusterMasterUserSecret(
      kmsKeyId: (map['kmsKeyId'] as String).input(),
      secretArn: (map['secretArn'] as String).input(),
      secretStatus: (map['secretStatus'] as String).input(),
    );
  }
}

