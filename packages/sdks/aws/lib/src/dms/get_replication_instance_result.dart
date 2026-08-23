// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getReplicationInstance.
class GetReplicationInstanceResult {
  /// The amount of storage (in gigabytes) to be initially allocated for the replication instance.
  final int allocatedStorage;
  /// Indicates that minor engine upgrades will be applied automatically to the replication instance during the maintenance window.
  final bool autoMinorVersionUpgrade;
  /// The EC2 Availability Zone that the replication instance will be created in.
  final String availabilityZone;
  /// The engine version number of the replication instance.
  final String engineVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Amazon Resource Name (ARN) for the KMS key used to encrypt the connection parameters.
  final String kmsKeyArn;
  /// Specifies if the replication instance is a multi-az deployment.
  final bool multiAz;
  /// The type of IP address protocol used by the replication instance.
  final String networkType;
  /// The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).
  final String preferredMaintenanceWindow;
  /// Specifies the accessibility options for the replication instance. A value of true represents an instance with a public IP address. A value of false represents an instance with a private IP address.
  final bool publiclyAccessible;
  final String region;
  /// The Amazon Resource Name (ARN) of the replication instance.
  final String replicationInstanceArn;
  /// The compute and memory capacity of the replication instance as specified by the replication instance class. See [AWS DMS User Guide](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.Types.html) for information on instance classes.
  final String replicationInstanceClass;
  final String replicationInstanceId;
  /// A list of the private IP addresses of the replication instance.
  final List<String> replicationInstancePrivateIps;
  /// A list of the public IP addresses of the replication instance.
  final List<String> replicationInstancePublicIps;
  /// A subnet group to associate with the replication instance.
  final String replicationSubnetGroupId;
  final Map<String, String> tags;
  /// A set of VPC security group IDs that are used with the replication instance.
  final List<String> vpcSecurityGroupIds;

  /// Creates a new [GetReplicationInstanceResult].
  /// [allocatedStorage] The amount of storage (in gigabytes) to be initially allocated for the replication instance.
  /// [autoMinorVersionUpgrade] Indicates that minor engine upgrades will be applied automatically to the replication instance during the maintenance window.
  /// [availabilityZone] The EC2 Availability Zone that the replication instance will be created in.
  /// [engineVersion] The engine version number of the replication instance.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyArn] The Amazon Resource Name (ARN) for the KMS key used to encrypt the connection parameters.
  /// [multiAz] Specifies if the replication instance is a multi-az deployment.
  /// [networkType] The type of IP address protocol used by the replication instance.
  /// [preferredMaintenanceWindow] The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).
  /// [publiclyAccessible] Specifies the accessibility options for the replication instance. A value of true represents an instance with a public IP address. A value of false represents an instance with a private IP address.
  /// [region] Required.
  /// [replicationInstanceArn] The Amazon Resource Name (ARN) of the replication instance.
  /// [replicationInstanceClass] The compute and memory capacity of the replication instance as specified by the replication instance class. See [AWS DMS User Guide](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.Types.html) for information on instance classes.
  /// [replicationInstanceId] Required.
  /// [replicationInstancePrivateIps] A list of the private IP addresses of the replication instance.
  /// [replicationInstancePublicIps] A list of the public IP addresses of the replication instance.
  /// [replicationSubnetGroupId] A subnet group to associate with the replication instance.
  /// [tags] Required.
  /// [vpcSecurityGroupIds] A set of VPC security group IDs that are used with the replication instance.
  const GetReplicationInstanceResult({
    required this.allocatedStorage,
    required this.autoMinorVersionUpgrade,
    required this.availabilityZone,
    required this.engineVersion,
    required this.id,
    required this.kmsKeyArn,
    required this.multiAz,
    required this.networkType,
    required this.preferredMaintenanceWindow,
    required this.publiclyAccessible,
    required this.region,
    required this.replicationInstanceArn,
    required this.replicationInstanceClass,
    required this.replicationInstanceId,
    required this.replicationInstancePrivateIps,
    required this.replicationInstancePublicIps,
    required this.replicationSubnetGroupId,
    required this.tags,
    required this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedStorage': allocatedStorage,
      'autoMinorVersionUpgrade': autoMinorVersionUpgrade,
      'availabilityZone': availabilityZone,
      'engineVersion': engineVersion,
      'id': id,
      'kmsKeyArn': kmsKeyArn,
      'multiAz': multiAz,
      'networkType': networkType,
      'preferredMaintenanceWindow': preferredMaintenanceWindow,
      'publiclyAccessible': publiclyAccessible,
      'region': region,
      'replicationInstanceArn': replicationInstanceArn,
      'replicationInstanceClass': replicationInstanceClass,
      'replicationInstanceId': replicationInstanceId,
      'replicationInstancePrivateIps': replicationInstancePrivateIps,
      'replicationInstancePublicIps': replicationInstancePublicIps,
      'replicationSubnetGroupId': replicationSubnetGroupId,
      'tags': tags,
      'vpcSecurityGroupIds': vpcSecurityGroupIds,
    };
  }

  factory GetReplicationInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetReplicationInstanceResult(
      allocatedStorage: map['allocatedStorage'] as int,
      autoMinorVersionUpgrade: map['autoMinorVersionUpgrade'] as bool,
      availabilityZone: map['availabilityZone'] as String,
      engineVersion: map['engineVersion'] as String,
      id: map['id'] as String,
      kmsKeyArn: map['kmsKeyArn'] as String,
      multiAz: map['multiAz'] as bool,
      networkType: map['networkType'] as String,
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] as String,
      publiclyAccessible: map['publiclyAccessible'] as bool,
      region: map['region'] as String,
      replicationInstanceArn: map['replicationInstanceArn'] as String,
      replicationInstanceClass: map['replicationInstanceClass'] as String,
      replicationInstanceId: map['replicationInstanceId'] as String,
      replicationInstancePrivateIps: (map['replicationInstancePrivateIps'] as List).cast<String>(),
      replicationInstancePublicIps: (map['replicationInstancePublicIps'] as List).cast<String>(),
      replicationSubnetGroupId: map['replicationSubnetGroupId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcSecurityGroupIds: (map['vpcSecurityGroupIds'] as List).cast<String>(),
    );
  }
}
