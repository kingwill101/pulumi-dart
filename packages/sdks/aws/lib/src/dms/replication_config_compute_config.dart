// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReplicationConfigComputeConfig {
  /// The Availability Zone where the DMS Serverless replication using this configuration will run. The default value is a random.
  final pulumi.Input<String>? availabilityZone;
  /// A list of custom DNS name servers supported for the DMS Serverless replication to access your source or target database.
  final pulumi.Input<String>? dnsNameServers;
  /// An Key Management Service (KMS) key Amazon Resource Name (ARN) that is used to encrypt the data during DMS Serverless replication. If you don't specify a value for the KmsKeyId parameter, DMS uses your default encryption key.
  final pulumi.Input<String>? kmsKeyId;
  /// Specifies the maximum value of the DMS capacity units (DCUs) for which a given DMS Serverless replication can be provisioned. A single DCU is 2GB of RAM, with 1 DCUs as the minimum value allowed. The list of valid DCU values includes 1, 2, 4, 8, 16, 32, 64, 128, 192, 256, and 384.
  final pulumi.Input<int>? maxCapacityUnits;
  /// Specifies the minimum value of the DMS capacity units (DCUs) for which a given DMS Serverless replication can be provisioned. The list of valid DCU values includes 1, 2, 4, 8, 16, 32, 64, 128, 192, 256, and 384. If this value isn't set DMS sets the lowest allowed value, 1.
  final pulumi.Input<int>? minCapacityUnits;
  /// Specifies if the replication instance is a multi-az deployment. You cannot set the `availability_zone` parameter if the `multi_az` parameter is set to `true`.
  final pulumi.Input<bool>? multiAz;
  /// The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).
  ///
  /// - Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week.
  /// - Format: `ddd:hh24:mi-ddd:hh24:mi`
  /// - Valid Days: `mon, tue, wed, thu, fri, sat, sun`
  /// - Constraints: Minimum 30-minute window.
  final pulumi.Input<String>? preferredMaintenanceWindow;
  /// Specifies a subnet group identifier to associate with the DMS Serverless replication.
  final pulumi.Input<String> replicationSubnetGroupId;
  /// Specifies the virtual private cloud (VPC) security group to use with the DMS Serverless replication. The VPC security group must work with the VPC containing the replication.
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;

  /// Creates a new [ReplicationConfigComputeConfig].
  /// [availabilityZone] The Availability Zone where the DMS Serverless replication using this configuration will run. The default value is a random.
  /// [dnsNameServers] A list of custom DNS name servers supported for the DMS Serverless replication to access your source or target database.
  /// [kmsKeyId] An Key Management Service (KMS) key Amazon Resource Name (ARN) that is used to encrypt the data during DMS Serverless replication. If you don't specify a value for the KmsKeyId parameter, DMS uses your default encryption key.
  /// [maxCapacityUnits] Specifies the maximum value of the DMS capacity units (DCUs) for which a given DMS Serverless replication can be provisioned. A single DCU is 2GB of RAM, with 1 DCUs as the minimum value allowed. The list of valid DCU values includes 1, 2, 4, 8, 16, 32, 64, 128, 192, 256, and 384.
  /// [minCapacityUnits] Specifies the minimum value of the DMS capacity units (DCUs) for which a given DMS Serverless replication can be provisioned. The list of valid DCU values includes 1, 2, 4, 8, 16, 32, 64, 128, 192, 256, and 384. If this value isn't set DMS sets the lowest allowed value, 1.
  /// [multiAz] Specifies if the replication instance is a multi-az deployment. You cannot set the `availability_zone` parameter if the `multi_az` parameter is set to `true`.
  /// [preferredMaintenanceWindow] The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).
  /// [replicationSubnetGroupId] Specifies a subnet group identifier to associate with the DMS Serverless replication.
  /// [vpcSecurityGroupIds] Specifies the virtual private cloud (VPC) security group to use with the DMS Serverless replication. The VPC security group must work with the VPC containing the replication.
  ReplicationConfigComputeConfig({
    this.availabilityZone,
    this.dnsNameServers,
    this.kmsKeyId,
    this.maxCapacityUnits,
    this.minCapacityUnits,
    this.multiAz,
    this.preferredMaintenanceWindow,
    required this.replicationSubnetGroupId,
    this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'dnsNameServers': ?dnsNameServers,
      'kmsKeyId': ?kmsKeyId,
      'maxCapacityUnits': ?maxCapacityUnits,
      'minCapacityUnits': ?minCapacityUnits,
      'multiAz': ?multiAz,
      'preferredMaintenanceWindow': ?preferredMaintenanceWindow,
      'replicationSubnetGroupId': replicationSubnetGroupId,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
    };
  }

  factory ReplicationConfigComputeConfig.fromMap(Map<String, dynamic> map) {
    return ReplicationConfigComputeConfig(
      availabilityZone: map['availabilityZone'] == null ? null : (map['availabilityZone'] as String).input(),
      dnsNameServers: map['dnsNameServers'] == null ? null : (map['dnsNameServers'] as String).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      maxCapacityUnits: map['maxCapacityUnits'] == null ? null : (map['maxCapacityUnits'] as int).input(),
      minCapacityUnits: map['minCapacityUnits'] == null ? null : (map['minCapacityUnits'] as int).input(),
      multiAz: map['multiAz'] == null ? null : (map['multiAz'] as bool).input(),
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] == null ? null : (map['preferredMaintenanceWindow'] as String).input(),
      replicationSubnetGroupId: (map['replicationSubnetGroupId'] as String).input(),
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null ? null : ((map['vpcSecurityGroupIds'] as List).cast<String>()).input(),
    );
  }
}

