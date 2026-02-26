// ignore_for_file: unused_element, unnecessary_cast

class GetClusterMasterUserSecret {
  final String kmsKeyId;
  final String secretArn;
  final String secretStatus;

  GetClusterMasterUserSecret({
    required this.kmsKeyId,
    required this.secretArn,
    required this.secretStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyId'] = kmsKeyId;
    map['secretArn'] = secretArn;
    map['secretStatus'] = secretStatus;
    return map;
  }

  factory GetClusterMasterUserSecret.fromMap(Map<String, dynamic> map) {
    return GetClusterMasterUserSecret(
      kmsKeyId: map['kmsKeyId'] as String,
      secretArn: map['secretArn'] as String,
      secretStatus: map['secretStatus'] as String,
    );
  }
}
