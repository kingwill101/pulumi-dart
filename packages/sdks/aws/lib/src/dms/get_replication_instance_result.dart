// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getReplicationInstance.
class GetReplicationInstanceResult {
  /// The amount of storage (in gigabytes) to be initially allocated for the replication instance.
  final int? allocatedStorage;
  /// Indicates that minor engine upgrades will be applied automatically to the replication instance during the maintenance window.
  final bool? autoMinorVersionUpgrade;
  /// The EC2 Availability Zone that the replication instance will be created in.
  final String? availabilityZone;
  /// The engine version number of the replication instance.
  final String? engineVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// ARN for the KMS key used to encrypt the connection parameters.
  final String? kmsKeyArn;
  /// Specifies if the replication instance is a multi-az deployment.
  final bool? multiAz;
  /// The type of IP address protocol used by the replication instance.
  final String? networkType;
  /// The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).
  final String? preferredMaintenanceWindow;
  /// Specifies the accessibility options for the replication instance. A value of true represents an instance with a public IP address. A value of false represents an instance with a private IP address.
  final bool? publiclyAccessible;
  final String? region;
  /// ARN of the replication instance.
  final String? replicationInstanceArn;
  /// The compute and memory capacity of the replication instance as specified by the replication instance class. See [AWS DMS User Guide](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.Types.html) for information on instance classes.
  final String? replicationInstanceClass;
  final String? replicationInstanceId;
  /// A list of the private IP addresses of the replication instance.
  final List<String>? replicationInstancePrivateIps;
  /// A list of the public IP addresses of the replication instance.
  final List<String>? replicationInstancePublicIps;
  /// A subnet group to associate with the replication instance.
  final String? replicationSubnetGroupId;
  final Map<String, String>? tags;
  /// A set of VPC security group IDs that are used with the replication instance.
  final List<String>? vpcSecurityGroupIds;

  /// Creates a new [GetReplicationInstanceResult].
  /// [allocatedStorage] The amount of storage (in gigabytes) to be initially allocated for the replication instance.
  /// [autoMinorVersionUpgrade] Indicates that minor engine upgrades will be applied automatically to the replication instance during the maintenance window.
  /// [availabilityZone] The EC2 Availability Zone that the replication instance will be created in.
  /// [engineVersion] The engine version number of the replication instance.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyArn] ARN for the KMS key used to encrypt the connection parameters.
  /// [multiAz] Specifies if the replication instance is a multi-az deployment.
  /// [networkType] The type of IP address protocol used by the replication instance.
  /// [preferredMaintenanceWindow] The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).
  /// [publiclyAccessible] Specifies the accessibility options for the replication instance. A value of true represents an instance with a public IP address. A value of false represents an instance with a private IP address.
  /// [region] Optional.
  /// [replicationInstanceArn] ARN of the replication instance.
  /// [replicationInstanceClass] The compute and memory capacity of the replication instance as specified by the replication instance class. See [AWS DMS User Guide](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.Types.html) for information on instance classes.
  /// [replicationInstanceId] Optional.
  /// [replicationInstancePrivateIps] A list of the private IP addresses of the replication instance.
  /// [replicationInstancePublicIps] A list of the public IP addresses of the replication instance.
  /// [replicationSubnetGroupId] A subnet group to associate with the replication instance.
  /// [tags] Optional.
  /// [vpcSecurityGroupIds] A set of VPC security group IDs that are used with the replication instance.
  const GetReplicationInstanceResult({
    this.allocatedStorage,
    this.autoMinorVersionUpgrade,
    this.availabilityZone,
    this.engineVersion,
    this.id,
    this.kmsKeyArn,
    this.multiAz,
    this.networkType,
    this.preferredMaintenanceWindow,
    this.publiclyAccessible,
    this.region,
    this.replicationInstanceArn,
    this.replicationInstanceClass,
    this.replicationInstanceId,
    this.replicationInstancePrivateIps,
    this.replicationInstancePublicIps,
    this.replicationSubnetGroupId,
    this.tags,
    this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedStorage': ?allocatedStorage,
      'autoMinorVersionUpgrade': ?autoMinorVersionUpgrade,
      'availabilityZone': ?availabilityZone,
      'engineVersion': ?engineVersion,
      'id': ?id,
      'kmsKeyArn': ?kmsKeyArn,
      'multiAz': ?multiAz,
      'networkType': ?networkType,
      'preferredMaintenanceWindow': ?preferredMaintenanceWindow,
      'publiclyAccessible': ?publiclyAccessible,
      'region': ?region,
      'replicationInstanceArn': ?replicationInstanceArn,
      'replicationInstanceClass': ?replicationInstanceClass,
      'replicationInstanceId': ?replicationInstanceId,
      'replicationInstancePrivateIps': ?replicationInstancePrivateIps,
      'replicationInstancePublicIps': ?replicationInstancePublicIps,
      'replicationSubnetGroupId': ?replicationSubnetGroupId,
      'tags': ?tags,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
    };
  }

  factory GetReplicationInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetReplicationInstanceResult(
      allocatedStorage: (() { final guardedValue = map['allocatedStorage']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      autoMinorVersionUpgrade: (() { final guardedValue = map['autoMinorVersionUpgrade']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      multiAz: (() { final guardedValue = map['multiAz']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      preferredMaintenanceWindow: (() { final guardedValue = map['preferredMaintenanceWindow']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publiclyAccessible: (() { final guardedValue = map['publiclyAccessible']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replicationInstanceArn: (() { final guardedValue = map['replicationInstanceArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replicationInstanceClass: (() { final guardedValue = map['replicationInstanceClass']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replicationInstanceId: (() { final guardedValue = map['replicationInstanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replicationInstancePrivateIps: (() { final guardedValue = map['replicationInstancePrivateIps']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      replicationInstancePublicIps: (() { final guardedValue = map['replicationInstancePublicIps']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      replicationSubnetGroupId: (() { final guardedValue = map['replicationSubnetGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vpcSecurityGroupIds: (() { final guardedValue = map['vpcSecurityGroupIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
