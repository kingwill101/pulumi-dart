// ignore_for_file: unused_element, unnecessary_cast


class ClusterNodeAttribute {
  /// Whether to enable data disk encryption.
  final bool? dataDiskEncrypted;
  /// The kms key id used to encrypt the data disk. It takes effect when data_disk_encrypted is true.
  final String? dataDiskKmsKeyId;
  /// The name of the key pair.
  final String keyPairName;
  /// Alicloud EMR uses roles to perform actions on your behalf when provisioning cluster resources, running applications, dynamically scaling resources. EMR uses the following roles when interacting with other Alicloud services. Default value is AliyunEmrEcsDefaultRole.
  final String ramRole;
  /// Security Group ID for Cluster.
  final String securityGroupId;
  /// Whether to enable system disk encryption.
  final bool? systemDiskEncrypted;
  /// The kms key id used to encrypt the system disk. It takes effect when system_disk_encrypted is true.
  final String? systemDiskKmsKeyId;
  /// Used to retrieve instances belong to specified VPC.
  final String vpcId;
  /// Zone ID, e.g. cn-hangzhou-i
  final String zoneId;

  /// Creates a new [ClusterNodeAttribute].
  /// [dataDiskEncrypted] Whether to enable data disk encryption.
  /// [dataDiskKmsKeyId] The kms key id used to encrypt the data disk. It takes effect when data_disk_encrypted is true.
  /// [keyPairName] The name of the key pair.
  /// [ramRole] Alicloud EMR uses roles to perform actions on your behalf when provisioning cluster resources, running applications, dynamically scaling resources. EMR uses the following roles when interacting with other Alicloud services. Default value is AliyunEmrEcsDefaultRole.
  /// [securityGroupId] Security Group ID for Cluster.
  /// [systemDiskEncrypted] Whether to enable system disk encryption.
  /// [systemDiskKmsKeyId] The kms key id used to encrypt the system disk. It takes effect when system_disk_encrypted is true.
  /// [vpcId] Used to retrieve instances belong to specified VPC.
  /// [zoneId] Zone ID, e.g. cn-hangzhou-i
  ClusterNodeAttribute({
    this.dataDiskEncrypted,
    this.dataDiskKmsKeyId,
    required this.keyPairName,
    required this.ramRole,
    required this.securityGroupId,
    this.systemDiskEncrypted,
    this.systemDiskKmsKeyId,
    required this.vpcId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDiskEncrypted': ?dataDiskEncrypted,
      'dataDiskKmsKeyId': ?dataDiskKmsKeyId,
      'keyPairName': keyPairName,
      'ramRole': ramRole,
      'securityGroupId': securityGroupId,
      'systemDiskEncrypted': ?systemDiskEncrypted,
      'systemDiskKmsKeyId': ?systemDiskKmsKeyId,
      'vpcId': vpcId,
      'zoneId': zoneId,
    };
  }

  factory ClusterNodeAttribute.fromMap(Map<String, dynamic> map) {
    return ClusterNodeAttribute(
      dataDiskEncrypted: map['dataDiskEncrypted'] == null ? null : map['dataDiskEncrypted'] as bool,
      dataDiskKmsKeyId: map['dataDiskKmsKeyId'] == null ? null : map['dataDiskKmsKeyId'] as String,
      keyPairName: map['keyPairName'] as String,
      ramRole: map['ramRole'] as String,
      securityGroupId: map['securityGroupId'] as String,
      systemDiskEncrypted: map['systemDiskEncrypted'] == null ? null : map['systemDiskEncrypted'] as bool,
      systemDiskKmsKeyId: map['systemDiskKmsKeyId'] == null ? null : map['systemDiskKmsKeyId'] as String,
      vpcId: map['vpcId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

