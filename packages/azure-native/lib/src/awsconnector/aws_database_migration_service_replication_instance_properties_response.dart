// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_pending_modified_values_response.dart';
import 'replication_subnet_group_response.dart';
import 'vpc_security_group_membership_response.dart';

/// Definition of awsDatabaseMigrationServiceReplicationInstance
class AwsDatabaseMigrationServiceReplicationInstancePropertiesResponse {
  /// <p>The amount of storage (in gigabytes) that is allocated for the replication instance.</p>
  final int? allocatedStorage;
  /// <p>Boolean value indicating if minor version upgrades will be automatically applied to the instance.</p>
  final bool? autoMinorVersionUpgrade;
  /// <p>The Availability Zone for the instance.</p>
  final String? availabilityZone;
  /// <p>The DNS name servers supported for the replication instance to access your on-premise source or target database.</p>
  final String? dnsNameServers;
  /// <p>The engine version number of the replication instance.</p> <p>If an engine version number is not specified when a replication instance is created, the default is the latest engine version available.</p> <p>When modifying a major engine version of an instance, also set <code>AllowMajorVersionUpgrade</code> to <code>true</code>.</p>
  final String? engineVersion;
  /// <p> The expiration date of the free replication instance that is part of the Free DMS program. </p>
  final String? freeUntil;
  /// <p>The time the replication instance was created.</p>
  final String? instanceCreateTime;
  /// <p>An KMS key identifier that is used to encrypt the data on the replication instance.</p> <p>If you don't specify a value for the <code>KmsKeyId</code> parameter, then DMS uses your default encryption key.</p> <p>KMS creates the default encryption key for your Amazon Web Services account. Your Amazon Web Services account has a different default encryption key for each Amazon Web Services Region.</p>
  final String? kmsKeyId;
  /// <p> Specifies whether the replication instance is a Multi-AZ deployment. You can't set the <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to <code>true</code>. </p>
  final bool? multiAZ;
  /// <p>The type of IP address protocol used by a replication instance, such as IPv4 only or Dual-stack that supports both IPv4 and IPv6 addressing. IPv6 only is not yet supported.</p>
  final String? networkType;
  /// <p>The pending modification values.</p>
  final ReplicationPendingModifiedValuesResponse? pendingModifiedValues;
  /// <p>The maintenance window times for the replication instance. Any pending upgrades to the replication instance are performed during this time.</p>
  final String? preferredMaintenanceWindow;
  /// <p> Specifies the accessibility options for the replication instance. A value of <code>true</code> represents an instance with a public IP address. A value of <code>false</code> represents an instance with a private IP address. The default value is <code>true</code>. </p>
  final bool? publiclyAccessible;
  /// <p>The Amazon Resource Name (ARN) of the replication instance.</p>
  final String? replicationInstanceArn;
  /// <p>The compute and memory capacity of the replication instance as defined for the specified replication instance class. It is a required parameter, although a default value is pre-selected in the DMS console.</p> <p>For more information on the settings and capacities for the available replication instance classes, see <a href='https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth'> Selecting the right DMS replication instance for your migration</a>. </p>
  final String? replicationInstanceClass;
  /// <p>The replication instance identifier is a required parameter. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain 1-63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>myrepinstance</code> </p>
  final String? replicationInstanceIdentifier;
  /// <p>One or more IPv6 addresses for the replication instance.</p>
  final List<String>? replicationInstanceIpv6Addresses;
  /// <p>The private IP address of the replication instance.</p>
  final String? replicationInstancePrivateIpAddress;
  /// <p>One or more private IP addresses for the replication instance.</p>
  final List<String>? replicationInstancePrivateIpAddresses;
  /// <p>The public IP address of the replication instance.</p>
  final String? replicationInstancePublicIpAddress;
  /// <p>One or more public IP addresses for the replication instance.</p>
  final List<String>? replicationInstancePublicIpAddresses;
  /// <p>The status of the replication instance. The possible return values include:</p> <ul> <li> <p> <code>'available'</code> </p> </li> <li> <p> <code>'creating'</code> </p> </li> <li> <p> <code>'deleted'</code> </p> </li> <li> <p> <code>'deleting'</code> </p> </li> <li> <p> <code>'failed'</code> </p> </li> <li> <p> <code>'modifying'</code> </p> </li> <li> <p> <code>'upgrading'</code> </p> </li> <li> <p> <code>'rebooting'</code> </p> </li> <li> <p> <code>'resetting-master-credentials'</code> </p> </li> <li> <p> <code>'storage-full'</code> </p> </li> <li> <p> <code>'incompatible-credentials'</code> </p> </li> <li> <p> <code>'incompatible-network'</code> </p> </li> <li> <p> <code>'maintenance'</code> </p> </li> </ul>
  final String? replicationInstanceStatus;
  /// <p>The subnet group for the replication instance.</p>
  final ReplicationSubnetGroupResponse? replicationSubnetGroup;
  /// <p>The Availability Zone of the standby replication instance in a Multi-AZ deployment.</p>
  final String? secondaryAvailabilityZone;
  /// <p>The VPC security group for the instance.</p>
  final List<VpcSecurityGroupMembershipResponse>? vpcSecurityGroups;

  /// Creates a new [AwsDatabaseMigrationServiceReplicationInstancePropertiesResponse].
  /// [allocatedStorage] <p>The amount of storage (in gigabytes) that is allocated for the replication instance.</p>
  /// [autoMinorVersionUpgrade] <p>Boolean value indicating if minor version upgrades will be automatically applied to the instance.</p>
  /// [availabilityZone] <p>The Availability Zone for the instance.</p>
  /// [dnsNameServers] <p>The DNS name servers supported for the replication instance to access your on-premise source or target database.</p>
  /// [engineVersion] <p>The engine version number of the replication instance.</p> <p>If an engine version number is not specified when a replication instance is created, the default is the latest engine version available.</p> <p>When modifying a major engine version of an instance, also set <code>AllowMajorVersionUpgrade</code> to <code>true</code>.</p>
  /// [freeUntil] <p> The expiration date of the free replication instance that is part of the Free DMS program. </p>
  /// [instanceCreateTime] <p>The time the replication instance was created.</p>
  /// [kmsKeyId] <p>An KMS key identifier that is used to encrypt the data on the replication instance.</p> <p>If you don't specify a value for the <code>KmsKeyId</code> parameter, then DMS uses your default encryption key.</p> <p>KMS creates the default encryption key for your Amazon Web Services account. Your Amazon Web Services account has a different default encryption key for each Amazon Web Services Region.</p>
  /// [multiAZ] <p> Specifies whether the replication instance is a Multi-AZ deployment. You can't set the <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to <code>true</code>. </p>
  /// [networkType] <p>The type of IP address protocol used by a replication instance, such as IPv4 only or Dual-stack that supports both IPv4 and IPv6 addressing. IPv6 only is not yet supported.</p>
  /// [pendingModifiedValues] <p>The pending modification values.</p>
  /// [preferredMaintenanceWindow] <p>The maintenance window times for the replication instance. Any pending upgrades to the replication instance are performed during this time.</p>
  /// [publiclyAccessible] <p> Specifies the accessibility options for the replication instance. A value of <code>true</code> represents an instance with a public IP address. A value of <code>false</code> represents an instance with a private IP address. The default value is <code>true</code>. </p>
  /// [replicationInstanceArn] <p>The Amazon Resource Name (ARN) of the replication instance.</p>
  /// [replicationInstanceClass] <p>The compute and memory capacity of the replication instance as defined for the specified replication instance class. It is a required parameter, although a default value is pre-selected in the DMS console.</p> <p>For more information on the settings and capacities for the available replication instance classes, see <a href='https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth'> Selecting the right DMS replication instance for your migration</a>. </p>
  /// [replicationInstanceIdentifier] <p>The replication instance identifier is a required parameter. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain 1-63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>myrepinstance</code> </p>
  /// [replicationInstanceIpv6Addresses] <p>One or more IPv6 addresses for the replication instance.</p>
  /// [replicationInstancePrivateIpAddress] <p>The private IP address of the replication instance.</p>
  /// [replicationInstancePrivateIpAddresses] <p>One or more private IP addresses for the replication instance.</p>
  /// [replicationInstancePublicIpAddress] <p>The public IP address of the replication instance.</p>
  /// [replicationInstancePublicIpAddresses] <p>One or more public IP addresses for the replication instance.</p>
  /// [replicationInstanceStatus] <p>The status of the replication instance. The possible return values include:</p> <ul> <li> <p> <code>'available'</code> </p> </li> <li> <p> <code>'creating'</code> </p> </li> <li> <p> <code>'deleted'</code> </p> </li> <li> <p> <code>'deleting'</code> </p> </li> <li> <p> <code>'failed'</code> </p> </li> <li> <p> <code>'modifying'</code> </p> </li> <li> <p> <code>'upgrading'</code> </p> </li> <li> <p> <code>'rebooting'</code> </p> </li> <li> <p> <code>'resetting-master-credentials'</code> </p> </li> <li> <p> <code>'storage-full'</code> </p> </li> <li> <p> <code>'incompatible-credentials'</code> </p> </li> <li> <p> <code>'incompatible-network'</code> </p> </li> <li> <p> <code>'maintenance'</code> </p> </li> </ul>
  /// [replicationSubnetGroup] <p>The subnet group for the replication instance.</p>
  /// [secondaryAvailabilityZone] <p>The Availability Zone of the standby replication instance in a Multi-AZ deployment.</p>
  /// [vpcSecurityGroups] <p>The VPC security group for the instance.</p>
  AwsDatabaseMigrationServiceReplicationInstancePropertiesResponse({
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
      'pendingModifiedValues': ?pendingModifiedValues == null ? null : pendingModifiedValues!.toMap(),
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
      'replicationSubnetGroup': ?replicationSubnetGroup == null ? null : replicationSubnetGroup!.toMap(),
      'secondaryAvailabilityZone': ?secondaryAvailabilityZone,
      'vpcSecurityGroups': ?vpcSecurityGroups == null ? null : pulumi.Input.encodeList<VpcSecurityGroupMembershipResponse, Map<String, dynamic>>(vpcSecurityGroups!, (value) => value.toMap()),
    };
  }

  factory AwsDatabaseMigrationServiceReplicationInstancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsDatabaseMigrationServiceReplicationInstancePropertiesResponse(
      allocatedStorage: map['allocatedStorage'] == null ? null : map['allocatedStorage'] as int,
      autoMinorVersionUpgrade: map['autoMinorVersionUpgrade'] == null ? null : map['autoMinorVersionUpgrade'] as bool,
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone'] as String,
      dnsNameServers: map['dnsNameServers'] == null ? null : map['dnsNameServers'] as String,
      engineVersion: map['engineVersion'] == null ? null : map['engineVersion'] as String,
      freeUntil: map['freeUntil'] == null ? null : map['freeUntil'] as String,
      instanceCreateTime: map['instanceCreateTime'] == null ? null : map['instanceCreateTime'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      multiAZ: map['multiAZ'] == null ? null : map['multiAZ'] as bool,
      networkType: map['networkType'] == null ? null : map['networkType'] as String,
      pendingModifiedValues: map['pendingModifiedValues'] == null ? null : ReplicationPendingModifiedValuesResponse.fromMap((map['pendingModifiedValues'] as Map).cast<String, dynamic>()),
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] == null ? null : map['preferredMaintenanceWindow'] as String,
      publiclyAccessible: map['publiclyAccessible'] == null ? null : map['publiclyAccessible'] as bool,
      replicationInstanceArn: map['replicationInstanceArn'] == null ? null : map['replicationInstanceArn'] as String,
      replicationInstanceClass: map['replicationInstanceClass'] == null ? null : map['replicationInstanceClass'] as String,
      replicationInstanceIdentifier: map['replicationInstanceIdentifier'] == null ? null : map['replicationInstanceIdentifier'] as String,
      replicationInstanceIpv6Addresses: map['replicationInstanceIpv6Addresses'] == null ? null : (map['replicationInstanceIpv6Addresses'] as List).cast<String>(),
      replicationInstancePrivateIpAddress: map['replicationInstancePrivateIpAddress'] == null ? null : map['replicationInstancePrivateIpAddress'] as String,
      replicationInstancePrivateIpAddresses: map['replicationInstancePrivateIpAddresses'] == null ? null : (map['replicationInstancePrivateIpAddresses'] as List).cast<String>(),
      replicationInstancePublicIpAddress: map['replicationInstancePublicIpAddress'] == null ? null : map['replicationInstancePublicIpAddress'] as String,
      replicationInstancePublicIpAddresses: map['replicationInstancePublicIpAddresses'] == null ? null : (map['replicationInstancePublicIpAddresses'] as List).cast<String>(),
      replicationInstanceStatus: map['replicationInstanceStatus'] == null ? null : map['replicationInstanceStatus'] as String,
      replicationSubnetGroup: map['replicationSubnetGroup'] == null ? null : ReplicationSubnetGroupResponse.fromMap((map['replicationSubnetGroup'] as Map).cast<String, dynamic>()),
      secondaryAvailabilityZone: map['secondaryAvailabilityZone'] == null ? null : map['secondaryAvailabilityZone'] as String,
      vpcSecurityGroups: map['vpcSecurityGroups'] == null ? null : pulumi.Input.decodeList<VpcSecurityGroupMembershipResponse>(map['vpcSecurityGroups'], (value) => VpcSecurityGroupMembershipResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

