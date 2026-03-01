// ignore_for_file: unused_element, unnecessary_cast

class GetClusterMasterUserSecret {
  final String kmsKeyId;
  final String secretArn;
  final String secretStatus;

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
      kmsKeyId: map['kmsKeyId'] as String,
      secretArn: map['secretArn'] as String,
      secretStatus: map['secretStatus'] as String,
    );
  }
}
