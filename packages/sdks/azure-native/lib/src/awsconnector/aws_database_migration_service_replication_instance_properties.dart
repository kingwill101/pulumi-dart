// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_pending_modified_values.dart';
import 'replication_subnet_group.dart';
import 'vpc_security_group_membership.dart';

/// Definition of awsDatabaseMigrationServiceReplicationInstance
class AwsDatabaseMigrationServiceReplicationInstanceProperties {
  /// &lt;p&gt;The amount of storage (in gigabytes) that is allocated for the replication instance.&lt;/p&gt;
  final pulumi.Input<int>? allocatedStorage;
  /// &lt;p&gt;Boolean value indicating if minor version upgrades will be automatically applied to the instance.&lt;/p&gt;
  final pulumi.Input<bool>? autoMinorVersionUpgrade;
  /// &lt;p&gt;The Availability Zone for the instance.&lt;/p&gt;
  final pulumi.Input<String>? availabilityZone;
  /// &lt;p&gt;The DNS name servers supported for the replication instance to access your on-premise source or target database.&lt;/p&gt;
  final pulumi.Input<String>? dnsNameServers;
  /// &lt;p&gt;The engine version number of the replication instance.&lt;/p&gt; &lt;p&gt;If an engine version number is not specified when a replication instance is created, the default is the latest engine version available.&lt;/p&gt; &lt;p&gt;When modifying a major engine version of an instance, also set &lt;code&gt;AllowMajorVersionUpgrade&lt;/code&gt; to &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt;
  final pulumi.Input<String>? engineVersion;
  /// &lt;p&gt; The expiration date of the free replication instance that is part of the Free DMS program. &lt;/p&gt;
  final pulumi.Input<String>? freeUntil;
  /// &lt;p&gt;The time the replication instance was created.&lt;/p&gt;
  final pulumi.Input<String>? instanceCreateTime;
  /// &lt;p&gt;An KMS key identifier that is used to encrypt the data on the replication instance.&lt;/p&gt; &lt;p&gt;If you don't specify a value for the &lt;code&gt;KmsKeyId&lt;/code&gt; parameter, then DMS uses your default encryption key.&lt;/p&gt; &lt;p&gt;KMS creates the default encryption key for your Amazon Web Services account. Your Amazon Web Services account has a different default encryption key for each Amazon Web Services Region.&lt;/p&gt;
  final pulumi.Input<String>? kmsKeyId;
  /// &lt;p&gt; Specifies whether the replication instance is a Multi-AZ deployment. You can't set the &lt;code&gt;AvailabilityZone&lt;/code&gt; parameter if the Multi-AZ parameter is set to &lt;code&gt;true&lt;/code&gt;. &lt;/p&gt;
  final pulumi.Input<bool>? multiAZ;
  /// &lt;p&gt;The type of IP address protocol used by a replication instance, such as IPv4 only or Dual-stack that supports both IPv4 and IPv6 addressing. IPv6 only is not yet supported.&lt;/p&gt;
  final pulumi.Input<String>? networkType;
  /// &lt;p&gt;The pending modification values.&lt;/p&gt;
  final pulumi.Input<ReplicationPendingModifiedValues>? pendingModifiedValues;
  /// &lt;p&gt;The maintenance window times for the replication instance. Any pending upgrades to the replication instance are performed during this time.&lt;/p&gt;
  final pulumi.Input<String>? preferredMaintenanceWindow;
  /// &lt;p&gt; Specifies the accessibility options for the replication instance. A value of &lt;code&gt;true&lt;/code&gt; represents an instance with a public IP address. A value of &lt;code&gt;false&lt;/code&gt; represents an instance with a private IP address. The default value is &lt;code&gt;true&lt;/code&gt;. &lt;/p&gt;
  final pulumi.Input<bool>? publiclyAccessible;
  /// &lt;p&gt;The Amazon Resource Name (ARN) of the replication instance.&lt;/p&gt;
  final pulumi.Input<String>? replicationInstanceArn;
  /// &lt;p&gt;The compute and memory capacity of the replication instance as defined for the specified replication instance class. It is a required parameter, although a default value is pre-selected in the DMS console.&lt;/p&gt; &lt;p&gt;For more information on the settings and capacities for the available replication instance classes, see &lt;a href='https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth'&gt; Selecting the right DMS replication instance for your migration&lt;/a&gt;. &lt;/p&gt;
  final pulumi.Input<String>? replicationInstanceClass;
  /// &lt;p&gt;The replication instance identifier is a required parameter. This parameter is stored as a lowercase string.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must contain 1-63 alphanumeric characters or hyphens.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;First character must be a letter.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot end with a hyphen or contain two consecutive hyphens.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Example: &lt;code&gt;myrepinstance&lt;/code&gt; &lt;/p&gt;
  final pulumi.Input<String>? replicationInstanceIdentifier;
  /// &lt;p&gt;One or more IPv6 addresses for the replication instance.&lt;/p&gt;
  final pulumi.Input<List<String>>? replicationInstanceIpv6Addresses;
  /// &lt;p&gt;The private IP address of the replication instance.&lt;/p&gt;
  final pulumi.Input<String>? replicationInstancePrivateIpAddress;
  /// &lt;p&gt;One or more private IP addresses for the replication instance.&lt;/p&gt;
  final pulumi.Input<List<String>>? replicationInstancePrivateIpAddresses;
  /// &lt;p&gt;The public IP address of the replication instance.&lt;/p&gt;
  final pulumi.Input<String>? replicationInstancePublicIpAddress;
  /// &lt;p&gt;One or more public IP addresses for the replication instance.&lt;/p&gt;
  final pulumi.Input<List<String>>? replicationInstancePublicIpAddresses;
  /// &lt;p&gt;The status of the replication instance. The possible return values include:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;'available'&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;'creating'&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;'deleted'&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;'deleting'&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;'failed'&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;'modifying'&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;'upgrading'&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;'rebooting'&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;'resetting-master-credentials'&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;'storage-full'&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;'incompatible-credentials'&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;'incompatible-network'&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;'maintenance'&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  final pulumi.Input<String>? replicationInstanceStatus;
  /// &lt;p&gt;The subnet group for the replication instance.&lt;/p&gt;
  final pulumi.Input<ReplicationSubnetGroup>? replicationSubnetGroup;
  /// &lt;p&gt;The Availability Zone of the standby replication instance in a Multi-AZ deployment.&lt;/p&gt;
  final pulumi.Input<String>? secondaryAvailabilityZone;
  /// &lt;p&gt;The VPC security group for the instance.&lt;/p&gt;
  final pulumi.Input<List<VpcSecurityGroupMembership>>? vpcSecurityGroups;

  /// Creates a new [AwsDatabaseMigrationServiceReplicationInstanceProperties].
  /// [allocatedStorage] &lt;p&gt;The amount of storage (in gigabytes) that is allocated for the replication instance.&lt;/p&gt;
  /// [autoMinorVersionUpgrade] &lt;p&gt;Boolean value indicating if minor version upgrades will be automatically applied to the instance.&lt;/p&gt;
  /// [availabilityZone] &lt;p&gt;The Availability Zone for the instance.&lt;/p&gt;
  /// [dnsNameServers] &lt;p&gt;The DNS name servers supported for the replication instance to access your on-premise source or target database.&lt;/p&gt;
  /// [engineVersion] &lt;p&gt;The engine version number of the replication instance.&lt;/p&gt; &lt;p&gt;If an engine version number is not specified when a replication instance is created, the default is the latest engine version available.&lt;/p&gt; &lt;p&gt;When modifying a major engine version of an instance, also set &lt;code&gt;AllowMajorVersionUpgrade&lt;/code&gt; to &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt;
  /// [freeUntil] &lt;p&gt; The expiration date of the free replication instance that is part of the Free DMS program. &lt;/p&gt;
  /// [instanceCreateTime] &lt;p&gt;The time the replication instance was created.&lt;/p&gt;
  /// [kmsKeyId] &lt;p&gt;An KMS key identifier that is used to encrypt the data on the replication instance.&lt;/p&gt; &lt;p&gt;If you don't specify a value for the &lt;code&gt;KmsKeyId&lt;/code&gt; parameter, then DMS uses your default encryption key.&lt;/p&gt; &lt;p&gt;KMS creates the default encryption key for your Amazon Web Services account. Your Amazon Web Services account has a different default encryption key for each Amazon Web Services Region.&lt;/p&gt;
  /// [multiAZ] &lt;p&gt; Specifies whether the replication instance is a Multi-AZ deployment. You can't set the &lt;code&gt;AvailabilityZone&lt;/code&gt; parameter if the Multi-AZ parameter is set to &lt;code&gt;true&lt;/code&gt;. &lt;/p&gt;
  /// [networkType] &lt;p&gt;The type of IP address protocol used by a replication instance, such as IPv4 only or Dual-stack that supports both IPv4 and IPv6 addressing. IPv6 only is not yet supported.&lt;/p&gt;
  /// [pendingModifiedValues] &lt;p&gt;The pending modification values.&lt;/p&gt;
  /// [preferredMaintenanceWindow] &lt;p&gt;The maintenance window times for the replication instance. Any pending upgrades to the replication instance are performed during this time.&lt;/p&gt;
  /// [publiclyAccessible] &lt;p&gt; Specifies the accessibility options for the replication instance. A value of &lt;code&gt;true&lt;/code&gt; represents an instance with a public IP address. A value of &lt;code&gt;false&lt;/code&gt; represents an instance with a private IP address. The default value is &lt;code&gt;true&lt;/code&gt;. &lt;/p&gt;
  /// [replicationInstanceArn] &lt;p&gt;The Amazon Resource Name (ARN) of the replication instance.&lt;/p&gt;
  /// [replicationInstanceClass] &lt;p&gt;The compute and memory capacity of the replication instance as defined for the specified replication instance class. It is a required parameter, although a default value is pre-selected in the DMS console.&lt;/p&gt; &lt;p&gt;For more information on the settings and capacities for the available replication instance classes, see &lt;a href='https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth'&gt; Selecting the right DMS replication instance for your migration&lt;/a&gt;. &lt;/p&gt;
  /// [replicationInstanceIdentifier] &lt;p&gt;The replication instance identifier is a required parameter. This parameter is stored as a lowercase string.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must contain 1-63 alphanumeric characters or hyphens.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;First character must be a letter.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot end with a hyphen or contain two consecutive hyphens.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Example: &lt;code&gt;myrepinstance&lt;/code&gt; &lt;/p&gt;
  /// [replicationInstanceIpv6Addresses] &lt;p&gt;One or more IPv6 addresses for the replication instance.&lt;/p&gt;
  /// [replicationInstancePrivateIpAddress] &lt;p&gt;The private IP address of the replication instance.&lt;/p&gt;
  /// [replicationInstancePrivateIpAddresses] &lt;p&gt;One or more private IP addresses for the replication instance.&lt;/p&gt;
  /// [replicationInstancePublicIpAddress] &lt;p&gt;The public IP address of the replication instance.&lt;/p&gt;
  /// [replicationInstancePublicIpAddresses] &lt;p&gt;One or more public IP addresses for the replication instance.&lt;/p&gt;
  /// [replicationInstanceStatus] &lt;p&gt;The status of the replication instance. The possible return values include:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;'available'&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;'creating'&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;'deleted'&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;'deleting'&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;'failed'&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;'modifying'&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;'upgrading'&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;'rebooting'&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;'resetting-master-credentials'&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;'storage-full'&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;'incompatible-credentials'&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;'incompatible-network'&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;'maintenance'&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  /// [replicationSubnetGroup] &lt;p&gt;The subnet group for the replication instance.&lt;/p&gt;
  /// [secondaryAvailabilityZone] &lt;p&gt;The Availability Zone of the standby replication instance in a Multi-AZ deployment.&lt;/p&gt;
  /// [vpcSecurityGroups] &lt;p&gt;The VPC security group for the instance.&lt;/p&gt;
  const AwsDatabaseMigrationServiceReplicationInstanceProperties({
    this.allocatedStorage,
    this.autoMinorVersionUpgrade,
    this.availabilityZone,
    this.dnsNameServers,
    this.engineVersion,
    this.freeUntil,
    this.instanceCreateTime,
    this.kmsKeyId,
    this.multiAZ,
    this.networkType,
    this.pendingModifiedValues,
    this.preferredMaintenanceWindow,
    this.publiclyAccessible,
    this.replicationInstanceArn,
    this.replicationInstanceClass,
    this.replicationInstanceIdentifier,
    this.replicationInstanceIpv6Addresses,
    this.replicationInstancePrivateIpAddress,
    this.replicationInstancePrivateIpAddresses,
    this.replicationInstancePublicIpAddress,
    this.replicationInstancePublicIpAddresses,
    this.replicationInstanceStatus,
    this.replicationSubnetGroup,
    this.secondaryAvailabilityZone,
    this.vpcSecurityGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedStorage': ?allocatedStorage,
      'autoMinorVersionUpgrade': ?autoMinorVersionUpgrade,
      'availabilityZone': ?availabilityZone,
      'dnsNameServers': ?dnsNameServers,
      'engineVersion': ?engineVersion,
      'freeUntil': ?freeUntil,
      'instanceCreateTime': ?instanceCreateTime,
      'kmsKeyId': ?kmsKeyId,
      'multiAZ': ?multiAZ,
      'networkType': ?networkType,
      'pendingModifiedValues': ?pulumi.Input.mapOptionalInputValue<ReplicationPendingModifiedValues, Map<String, dynamic>>(pendingModifiedValues, (value) => value.toMap()),
      'preferredMaintenanceWindow': ?preferredMaintenanceWindow,
      'publiclyAccessible': ?publiclyAccessible,
      'replicationInstanceArn': ?replicationInstanceArn,
      'replicationInstanceClass': ?replicationInstanceClass,
      'replicationInstanceIdentifier': ?replicationInstanceIdentifier,
      'replicationInstanceIpv6Addresses': ?replicationInstanceIpv6Addresses,
      'replicationInstancePrivateIpAddress': ?replicationInstancePrivateIpAddress,
      'replicationInstancePrivateIpAddresses': ?replicationInstancePrivateIpAddresses,
      'replicationInstancePublicIpAddress': ?replicationInstancePublicIpAddress,
      'replicationInstancePublicIpAddresses': ?replicationInstancePublicIpAddresses,
      'replicationInstanceStatus': ?replicationInstanceStatus,
      'replicationSubnetGroup': ?pulumi.Input.mapOptionalInputValue<ReplicationSubnetGroup, Map<String, dynamic>>(replicationSubnetGroup, (value) => value.toMap()),
      'secondaryAvailabilityZone': ?secondaryAvailabilityZone,
      'vpcSecurityGroups': ?pulumi.Input.mapOptionalInputValue<List<VpcSecurityGroupMembership>, List<Map<String, dynamic>>>(vpcSecurityGroups, (value) => pulumi.Input.encodeList<VpcSecurityGroupMembership, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AwsDatabaseMigrationServiceReplicationInstanceProperties.fromMap(Map<String, dynamic> map) {
    return AwsDatabaseMigrationServiceReplicationInstanceProperties(
      allocatedStorage: (() { final guardedValue = map['allocatedStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      autoMinorVersionUpgrade: (() { final guardedValue = map['autoMinorVersionUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsNameServers: (() { final guardedValue = map['dnsNameServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      freeUntil: (() { final guardedValue = map['freeUntil']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceCreateTime: (() { final guardedValue = map['instanceCreateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiAZ: (() { final guardedValue = map['multiAZ']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pendingModifiedValues: (() { final guardedValue = map['pendingModifiedValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicationPendingModifiedValues.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preferredMaintenanceWindow: (() { final guardedValue = map['preferredMaintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publiclyAccessible: (() { final guardedValue = map['publiclyAccessible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      replicationInstanceArn: (() { final guardedValue = map['replicationInstanceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationInstanceClass: (() { final guardedValue = map['replicationInstanceClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationInstanceIdentifier: (() { final guardedValue = map['replicationInstanceIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationInstanceIpv6Addresses: (() { final guardedValue = map['replicationInstanceIpv6Addresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      replicationInstancePrivateIpAddress: (() { final guardedValue = map['replicationInstancePrivateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationInstancePrivateIpAddresses: (() { final guardedValue = map['replicationInstancePrivateIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      replicationInstancePublicIpAddress: (() { final guardedValue = map['replicationInstancePublicIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationInstancePublicIpAddresses: (() { final guardedValue = map['replicationInstancePublicIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      replicationInstanceStatus: (() { final guardedValue = map['replicationInstanceStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationSubnetGroup: (() { final guardedValue = map['replicationSubnetGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicationSubnetGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secondaryAvailabilityZone: (() { final guardedValue = map['secondaryAvailabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcSecurityGroups: (() { final guardedValue = map['vpcSecurityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpcSecurityGroupMembership>(guardedValue, (value) => VpcSecurityGroupMembership.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

