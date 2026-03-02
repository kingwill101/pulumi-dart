// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeAttribute {
  /// Whether to enable data disk encryption.
  final pulumi.Input<bool>? dataDiskEncrypted;
  /// The kms key id used to encrypt the data disk. It takes effect when data_disk_encrypted is true.
  final pulumi.Input<String>? dataDiskKmsKeyId;
  /// The name of the key pair.
  final pulumi.Input<String> keyPairName;
  /// Alicloud EMR uses roles to perform actions on your behalf when provisioning cluster resources, running applications, dynamically scaling resources. EMR uses the following roles when interacting with other Alicloud services. Default value is AliyunEmrEcsDefaultRole.
  final pulumi.Input<String> ramRole;
  /// Security Group ID for Cluster.
  final pulumi.Input<String> securityGroupId;
  /// Whether to enable system disk encryption.
  final pulumi.Input<bool>? systemDiskEncrypted;
  /// The kms key id used to encrypt the system disk. It takes effect when system_disk_encrypted is true.
  final pulumi.Input<String>? systemDiskKmsKeyId;
  /// Used to retrieve instances belong to specified VPC.
  final pulumi.Input<String> vpcId;
  /// Zone ID, e.g. cn-hangzhou-i
  final pulumi.Input<String> zoneId;

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
      dataDiskEncrypted: map['dataDiskEncrypted'] == null ? null : (map['dataDiskEncrypted']! as bool).input(),
      dataDiskKmsKeyId: map['dataDiskKmsKeyId'] == null ? null : (map['dataDiskKmsKeyId']! as String).input(),
      keyPairName: (map['keyPairName'] as String).input(),
      ramRole: (map['ramRole'] as String).input(),
      securityGroupId: (map['securityGroupId'] as String).input(),
      systemDiskEncrypted: map['systemDiskEncrypted'] == null ? null : (map['systemDiskEncrypted']! as bool).input(),
      systemDiskKmsKeyId: map['systemDiskKmsKeyId'] == null ? null : (map['systemDiskKmsKeyId']! as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

