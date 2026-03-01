// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstance {
  /// The type of the architecture. Valid values: `cluster`, `standard` and `SplitRW`.
  final String architectureType;
  /// Indicates whether auto-renewal is enabled for the instance.
  final bool autoRenew;
  /// The duration for which the instance is automatically renewed. Unit: months.
  final int autoRenewPeriod;
  /// It has been deprecated from provider version 1.101.0 and `zone_id` instead.
  final String availabilityZone;
  /// Instance bandwidth limit. Unit: Mbit/s.
  final int bandwidth;
  /// Capacity of the applied Tair (Redis OSS-Compatible) And Memcached (KVStore) Classic Instance. Unit: MB.
  final int capacity;
  /// It has been deprecated from provider version 1.101.0 and `payment_type` instead.
  final String chargeType;
  /// The parameter configuration of the instance.
  final Map<String, String> config;
  /// Instance connection domain (only Intranet access supported).
  final String connectionDomain;
  /// The connection mode of the instance.
  final String connectionMode;
  /// IIt has been deprecated from provider version 1.101.0 and `max_connections` instead.
  final int connections;
  /// Creation time of the instance.
  final String createTime;
  /// The ID of the instance.
  final String dbInstanceId;
  /// The name of the instance.
  final String dbInstanceName;
  /// The time when the instance was destroyed.
  final String destroyTime;
  /// Expiration time. Pay-As-You-Go instances are never expire.
  final String endTime;
  /// The engine version. Valid values: `2.8`, `4.0`, `5.0`, `6.0`, `7.0`.
  final String engineVersion;
  /// It has been deprecated from provider version 1.101.0 and `end_time` instead.
  final String expireTime;
  /// Indicates whether there was an order of renewal with configuration change that had not taken effect.
  final bool hasRenewChangeOrder;
  /// The ID of the instance.
  final String id;
  /// Type of the applied Tair (Redis OSS-Compatible) And Memcache (KVStore) Classic Instance. For more information, see [Instance type table](https://help.aliyun.com/zh/redis/developer-reference/instance-types).
  final String instanceClass;
  /// Indicates whether the release protection feature is enabled for the instance.
  final bool instanceReleaseProtection;
  /// The engine type of the KVStore DBInstance. Options are `Memcache`, and `Redis`. If no value is specified, all types are returned.
  final String instanceType;
  /// Indicates whether the instance is managed by Relational Database Service (RDS).
  final bool isRds;
  /// The end time of the maintenance window. The time is in the HH:mmZ format. The time is displayed in UTC.
  final String maintainEndTime;
  /// The start time of the maintenance window. The time is in the HH:mmZ format. The time is displayed in UTC.
  final String maintainStartTime;
  /// Instance connection quantity limit. Unit: count.
  final int maxConnections;
  /// It has been deprecated from provider version 1.101.0 and `db_instance_name` instead.
  final String name;
  /// The type of the network. Valid values: `CLASSIC`, `VPC`.
  final String networkType;
  /// The node type of the instance.
  final String nodeType;
  /// The type of the package.
  final String packageType;
  /// The payment type. Valid values: `PostPaid`, `PrePaid`.
  final String paymentType;
  /// The service port of the instance.
  final int port;
  /// Private IP address of the instance.
  final String privateIp;
  /// The queries per second (QPS) supported by the instance.
  final int qps;
  /// Region ID the instance belongs to.
  final String regionId;
  /// The logical ID of the replica instance.
  final String replacateId;
  /// The ID of the resource group.
  final String resourceGroupId;
  /// The name of the instance.
  final String searchKey;
  /// The ID of the secondary zone to which you want to migrate the Tair (Redis OSS-Compatible) And Memcache (KVStore) Classic Instance.
  final String secondaryZoneId;
  /// The ID of the security group associated with the instance.
  final String securityGroupId;
  /// By default, this parameter is left empty. The attribute of the whitelist. The console does not display the whitelist whose value of this parameter is hidden
  final String securityIpGroupAttribute;
  /// The name of the IP address whitelist.
  final String securityIpGroupName;
  /// The IP addresses in the whitelist.
  final List<String> securityIps;
  /// Indicates whether SSL encryption is enabled.
  final String sslEnable;
  /// The status of the KVStore DBInstance. Valid values: `Changing`, `CleaningUpExpiredData`, `Creating`, `Flushing`, `HASwitching`, `Inactive`, `MajorVersionUpgrading`, `Migrating`, `NetworkModifying`, `Normal`, `Rebooting`, `SSLModifying`, `Transforming`, `ZoneMigrating`.
  final String status;
  /// Query the instance bound to the tag. The format of the incoming value is `json` string, including `TagKey` and `TagValue`. `TagKey` cannot be null, and `TagValue` can be empty. Format example `{"key1":"value1"}`.
  final Map<String, String> tags;
  /// The username of the instance.
  final String userName;
  /// Indicates whether password authentication is enabled. Valid values: Open, Close.
  final String vpcAuthMode;
  /// Connection port of the instance.
  final String vpcCloudInstanceId;
  /// Used to retrieve instances belong to specified VPC.
  final String vpcId;
  /// Used to retrieve instances belong to specified `vswitch` resources.
  final String vswitchId;
  /// The ID of the zone.
  final String zoneId;

  /// Creates a new [GetInstancesInstance].
  /// [architectureType] The type of the architecture. Valid values: `cluster`, `standard` and `SplitRW`.
  /// [autoRenew] Indicates whether auto-renewal is enabled for the instance.
  /// [autoRenewPeriod] The duration for which the instance is automatically renewed. Unit: months.
  /// [availabilityZone] It has been deprecated from provider version 1.101.0 and `zone_id` instead.
  /// [bandwidth] Instance bandwidth limit. Unit: Mbit/s.
  /// [capacity] Capacity of the applied Tair (Redis OSS-Compatible) And Memcached (KVStore) Classic Instance. Unit: MB.
  /// [chargeType] It has been deprecated from provider version 1.101.0 and `payment_type` instead.
  /// [config] The parameter configuration of the instance.
  /// [connectionDomain] Instance connection domain (only Intranet access supported).
  /// [connectionMode] The connection mode of the instance.
  /// [connections] IIt has been deprecated from provider version 1.101.0 and `max_connections` instead.
  /// [createTime] Creation time of the instance.
  /// [dbInstanceId] The ID of the instance.
  /// [dbInstanceName] The name of the instance.
  /// [destroyTime] The time when the instance was destroyed.
  /// [endTime] Expiration time. Pay-As-You-Go instances are never expire.
  /// [engineVersion] The engine version. Valid values: `2.8`, `4.0`, `5.0`, `6.0`, `7.0`.
  /// [expireTime] It has been deprecated from provider version 1.101.0 and `end_time` instead.
  /// [hasRenewChangeOrder] Indicates whether there was an order of renewal with configuration change that had not taken effect.
  /// [id] The ID of the instance.
  /// [instanceClass] Type of the applied Tair (Redis OSS-Compatible) And Memcache (KVStore) Classic Instance. For more information, see [Instance type table](https://help.aliyun.com/zh/redis/developer-reference/instance-types).
  /// [instanceReleaseProtection] Indicates whether the release protection feature is enabled for the instance.
  /// [instanceType] The engine type of the KVStore DBInstance. Options are `Memcache`, and `Redis`. If no value is specified, all types are returned.
  /// [isRds] Indicates whether the instance is managed by Relational Database Service (RDS).
  /// [maintainEndTime] The end time of the maintenance window. The time is in the HH:mmZ format. The time is displayed in UTC.
  /// [maintainStartTime] The start time of the maintenance window. The time is in the HH:mmZ format. The time is displayed in UTC.
  /// [maxConnections] Instance connection quantity limit. Unit: count.
  /// [name] It has been deprecated from provider version 1.101.0 and `db_instance_name` instead.
  /// [networkType] The type of the network. Valid values: `CLASSIC`, `VPC`.
  /// [nodeType] The node type of the instance.
  /// [packageType] The type of the package.
  /// [paymentType] The payment type. Valid values: `PostPaid`, `PrePaid`.
  /// [port] The service port of the instance.
  /// [privateIp] Private IP address of the instance.
  /// [qps] The queries per second (QPS) supported by the instance.
  /// [regionId] Region ID the instance belongs to.
  /// [replacateId] The logical ID of the replica instance.
  /// [resourceGroupId] The ID of the resource group.
  /// [searchKey] The name of the instance.
  /// [secondaryZoneId] The ID of the secondary zone to which you want to migrate the Tair (Redis OSS-Compatible) And Memcache (KVStore) Classic Instance.
  /// [securityGroupId] The ID of the security group associated with the instance.
  /// [securityIpGroupAttribute] By default, this parameter is left empty. The attribute of the whitelist. The console does not display the whitelist whose value of this parameter is hidden
  /// [securityIpGroupName] The name of the IP address whitelist.
  /// [securityIps] The IP addresses in the whitelist.
  /// [sslEnable] Indicates whether SSL encryption is enabled.
  /// [status] The status of the KVStore DBInstance. Valid values: `Changing`, `CleaningUpExpiredData`, `Creating`, `Flushing`, `HASwitching`, `Inactive`, `MajorVersionUpgrading`, `Migrating`, `NetworkModifying`, `Normal`, `Rebooting`, `SSLModifying`, `Transforming`, `ZoneMigrating`.
  /// [tags] Query the instance bound to the tag. The format of the incoming value is `json` string, including `TagKey` and `TagValue`. `TagKey` cannot be null, and `TagValue` can be empty. Format example `{"key1":"value1"}`.
  /// [userName] The username of the instance.
  /// [vpcAuthMode] Indicates whether password authentication is enabled. Valid values: Open, Close.
  /// [vpcCloudInstanceId] Connection port of the instance.
  /// [vpcId] Used to retrieve instances belong to specified VPC.
  /// [vswitchId] Used to retrieve instances belong to specified `vswitch` resources.
  /// [zoneId] The ID of the zone.
  GetInstancesInstance({
    required this.architectureType,
    required this.autoRenew,
    required this.autoRenewPeriod,
    required this.availabilityZone,
    required this.bandwidth,
    required this.capacity,
    required this.chargeType,
    required this.config,
    required this.connectionDomain,
    required this.connectionMode,
    required this.connections,
    required this.createTime,
    required this.dbInstanceId,
    required this.dbInstanceName,
    required this.destroyTime,
    required this.endTime,
    required this.engineVersion,
    required this.expireTime,
    required this.hasRenewChangeOrder,
    required this.id,
    required this.instanceClass,
    required this.instanceReleaseProtection,
    required this.instanceType,
    required this.isRds,
    required this.maintainEndTime,
    required this.maintainStartTime,
    required this.maxConnections,
    required this.name,
    required this.networkType,
    required this.nodeType,
    required this.packageType,
    required this.paymentType,
    required this.port,
    required this.privateIp,
    required this.qps,
    required this.regionId,
    required this.replacateId,
    required this.resourceGroupId,
    required this.searchKey,
    required this.secondaryZoneId,
    required this.securityGroupId,
    required this.securityIpGroupAttribute,
    required this.securityIpGroupName,
    required this.securityIps,
    required this.sslEnable,
    required this.status,
    required this.tags,
    required this.userName,
    required this.vpcAuthMode,
    required this.vpcCloudInstanceId,
    required this.vpcId,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architectureType': architectureType,
      'autoRenew': autoRenew,
      'autoRenewPeriod': autoRenewPeriod,
      'availabilityZone': availabilityZone,
      'bandwidth': bandwidth,
      'capacity': capacity,
      'chargeType': chargeType,
      'config': config,
      'connectionDomain': connectionDomain,
      'connectionMode': connectionMode,
      'connections': connections,
      'createTime': createTime,
      'dbInstanceId': dbInstanceId,
      'dbInstanceName': dbInstanceName,
      'destroyTime': destroyTime,
      'endTime': endTime,
      'engineVersion': engineVersion,
      'expireTime': expireTime,
      'hasRenewChangeOrder': hasRenewChangeOrder,
      'id': id,
      'instanceClass': instanceClass,
      'instanceReleaseProtection': instanceReleaseProtection,
      'instanceType': instanceType,
      'isRds': isRds,
      'maintainEndTime': maintainEndTime,
      'maintainStartTime': maintainStartTime,
      'maxConnections': maxConnections,
      'name': name,
      'networkType': networkType,
      'nodeType': nodeType,
      'packageType': packageType,
      'paymentType': paymentType,
      'port': port,
      'privateIp': privateIp,
      'qps': qps,
      'regionId': regionId,
      'replacateId': replacateId,
      'resourceGroupId': resourceGroupId,
      'searchKey': searchKey,
      'secondaryZoneId': secondaryZoneId,
      'securityGroupId': securityGroupId,
      'securityIpGroupAttribute': securityIpGroupAttribute,
      'securityIpGroupName': securityIpGroupName,
      'securityIps': securityIps,
      'sslEnable': sslEnable,
      'status': status,
      'tags': tags,
      'userName': userName,
      'vpcAuthMode': vpcAuthMode,
      'vpcCloudInstanceId': vpcCloudInstanceId,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
      architectureType: map['architectureType'] as String,
      autoRenew: map['autoRenew'] as bool,
      autoRenewPeriod: map['autoRenewPeriod'] as int,
      availabilityZone: map['availabilityZone'] as String,
      bandwidth: map['bandwidth'] as int,
      capacity: map['capacity'] as int,
      chargeType: map['chargeType'] as String,
      config: (map['config'] as Map).cast<String, String>(),
      connectionDomain: map['connectionDomain'] as String,
      connectionMode: map['connectionMode'] as String,
      connections: map['connections'] as int,
      createTime: map['createTime'] as String,
      dbInstanceId: map['dbInstanceId'] as String,
      dbInstanceName: map['dbInstanceName'] as String,
      destroyTime: map['destroyTime'] as String,
      endTime: map['endTime'] as String,
      engineVersion: map['engineVersion'] as String,
      expireTime: map['expireTime'] as String,
      hasRenewChangeOrder: map['hasRenewChangeOrder'] as bool,
      id: map['id'] as String,
      instanceClass: map['instanceClass'] as String,
      instanceReleaseProtection: map['instanceReleaseProtection'] as bool,
      instanceType: map['instanceType'] as String,
      isRds: map['isRds'] as bool,
      maintainEndTime: map['maintainEndTime'] as String,
      maintainStartTime: map['maintainStartTime'] as String,
      maxConnections: map['maxConnections'] as int,
      name: map['name'] as String,
      networkType: map['networkType'] as String,
      nodeType: map['nodeType'] as String,
      packageType: map['packageType'] as String,
      paymentType: map['paymentType'] as String,
      port: map['port'] as int,
      privateIp: map['privateIp'] as String,
      qps: map['qps'] as int,
      regionId: map['regionId'] as String,
      replacateId: map['replacateId'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      searchKey: map['searchKey'] as String,
      secondaryZoneId: map['secondaryZoneId'] as String,
      securityGroupId: map['securityGroupId'] as String,
      securityIpGroupAttribute: map['securityIpGroupAttribute'] as String,
      securityIpGroupName: map['securityIpGroupName'] as String,
      securityIps: (map['securityIps'] as List).cast<String>(),
      sslEnable: map['sslEnable'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      userName: map['userName'] as String,
      vpcAuthMode: map['vpcAuthMode'] as String,
      vpcCloudInstanceId: map['vpcCloudInstanceId'] as String,
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

