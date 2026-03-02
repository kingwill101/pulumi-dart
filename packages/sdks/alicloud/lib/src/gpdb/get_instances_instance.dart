// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance_ip_whitelist.dart';

class GetInstancesInstance {
  /// Instance availability zone.
  final pulumi.Input<String> availabilityZone;
  final pulumi.Input<String> chargeType;
  /// The connection string of the instance.
  final pulumi.Input<String> connectionString;
  /// The number of CPU cores of the computing node. Unit: Core.
  final pulumi.Input<String> cpuCores;
  /// The time when the instance was created. The time is in the YYYY-MM-DDThh:mm:ssZ format, such as 2011-05-30T12:11:4Z.
  final pulumi.Input<String> createTime;
  final pulumi.Input<String> creationTime;
  /// The db instance category. Valid values: `HighAvailability`, `Basic`.
  final pulumi.Input<String> dbInstanceCategory;
  /// The db instance class.
  final pulumi.Input<String> dbInstanceClass;
  /// The db instance id.
  final pulumi.Input<String> dbInstanceId;
  /// The db instance mode. Valid values: `StorageElastic`, `Serverless`, `Classic`.
  final pulumi.Input<String> dbInstanceMode;
  /// The description of the instance.
  final pulumi.Input<String> description;
  /// The database engine used by the instance.
  final pulumi.Input<String> engine;
  /// The version of the database engine used by the instance.
  final pulumi.Input<String> engineVersion;
  /// The ID of the db Instance.
  final pulumi.Input<String> id;
  /// The network type of the instance.
  final pulumi.Input<String> instanceNetworkType;
  /// The ip whitelist.
  final pulumi.Input<List<GetInstancesInstanceIpWhitelist>> ipWhitelists;
  /// The end time of the maintenance window for the instance.
  final pulumi.Input<String> maintainEndTime;
  /// The start time of the maintenance window for the instance.
  final pulumi.Input<String> maintainStartTime;
  /// The number of Master nodes. Valid values: 1 to 2. if it is not filled in, the default value is 1 Master node.
  final pulumi.Input<String> masterNodeNum;
  /// The memory size of the compute node.
  final pulumi.Input<String> memorySize;
  /// The billing method of the instance. Valid values: `Subscription`, `PayAsYouGo`.
  final pulumi.Input<String> paymentType;
  /// Region ID the instance belongs to.
  final pulumi.Input<String> regionId;
  /// Calculate the number of nodes. The value range of the high-availability version of the storage elastic mode is 4 to 512, and the value must be a multiple of 4. The value range of the basic version of the storage elastic mode is 2 to 512, and the value must be a multiple of 2. The-Serverless version has a value range of 2 to 512. The value must be a multiple of 2.
  final pulumi.Input<String> segNodeNum;
  /// The status of the instance. Valid values: `Creating`, `DBInstanceClassChanging`, `DBInstanceNetTypeChanging`, `Deleting`, `EngineVersionUpgrading`, `GuardDBInstanceCreating`, `GuardSwitching`, `Importing`, `ImportingFromOtherInstance`, `Rebooting`, `Restoring`, `Running`, `Transfering`, `TransferingToOtherInstance`.
  final pulumi.Input<String> status;
  /// The storage capacity. Unit: GB. Value: `50` to `4000`.
  final pulumi.Input<int> storageSize;
  /// The type of disks. Valid values: `cloud_essd`, `cloud_efficiency`.
  final pulumi.Input<String> storageType;
  /// The tags of the instance.
  final pulumi.Input<Map<String, String>> tags;
  /// The ID of the VPC。.
  final pulumi.Input<String> vpcId;
  /// The vswitch id.
  final pulumi.Input<String> vswitchId;
  /// The zone ID of the instance.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetInstancesInstance].
  /// [availabilityZone] Instance availability zone.
  /// [chargeType] Required.
  /// [connectionString] The connection string of the instance.
  /// [cpuCores] The number of CPU cores of the computing node. Unit: Core.
  /// [createTime] The time when the instance was created. The time is in the YYYY-MM-DDThh:mm:ssZ format, such as 2011-05-30T12:11:4Z.
  /// [creationTime] Required.
  /// [dbInstanceCategory] The db instance category. Valid values: `HighAvailability`, `Basic`.
  /// [dbInstanceClass] The db instance class.
  /// [dbInstanceId] The db instance id.
  /// [dbInstanceMode] The db instance mode. Valid values: `StorageElastic`, `Serverless`, `Classic`.
  /// [description] The description of the instance.
  /// [engine] The database engine used by the instance.
  /// [engineVersion] The version of the database engine used by the instance.
  /// [id] The ID of the db Instance.
  /// [instanceNetworkType] The network type of the instance.
  /// [ipWhitelists] The ip whitelist.
  /// [maintainEndTime] The end time of the maintenance window for the instance.
  /// [maintainStartTime] The start time of the maintenance window for the instance.
  /// [masterNodeNum] The number of Master nodes. Valid values: 1 to 2. if it is not filled in, the default value is 1 Master node.
  /// [memorySize] The memory size of the compute node.
  /// [paymentType] The billing method of the instance. Valid values: `Subscription`, `PayAsYouGo`.
  /// [regionId] Region ID the instance belongs to.
  /// [segNodeNum] Calculate the number of nodes. The value range of the high-availability version of the storage elastic mode is 4 to 512, and the value must be a multiple of 4. The value range of the basic version of the storage elastic mode is 2 to 512, and the value must be a multiple of 2. The-Serverless version has a value range of 2 to 512. The value must be a multiple of 2.
  /// [status] The status of the instance. Valid values: `Creating`, `DBInstanceClassChanging`, `DBInstanceNetTypeChanging`, `Deleting`, `EngineVersionUpgrading`, `GuardDBInstanceCreating`, `GuardSwitching`, `Importing`, `ImportingFromOtherInstance`, `Rebooting`, `Restoring`, `Running`, `Transfering`, `TransferingToOtherInstance`.
  /// [storageSize] The storage capacity. Unit: GB. Value: `50` to `4000`.
  /// [storageType] The type of disks. Valid values: `cloud_essd`, `cloud_efficiency`.
  /// [tags] The tags of the instance.
  /// [vpcId] The ID of the VPC。.
  /// [vswitchId] The vswitch id.
  /// [zoneId] The zone ID of the instance.
  GetInstancesInstance({
    required this.availabilityZone,
    required this.chargeType,
    required this.connectionString,
    required this.cpuCores,
    required this.createTime,
    required this.creationTime,
    required this.dbInstanceCategory,
    required this.dbInstanceClass,
    required this.dbInstanceId,
    required this.dbInstanceMode,
    required this.description,
    required this.engine,
    required this.engineVersion,
    required this.id,
    required this.instanceNetworkType,
    required this.ipWhitelists,
    required this.maintainEndTime,
    required this.maintainStartTime,
    required this.masterNodeNum,
    required this.memorySize,
    required this.paymentType,
    required this.regionId,
    required this.segNodeNum,
    required this.status,
    required this.storageSize,
    required this.storageType,
    required this.tags,
    required this.vpcId,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': availabilityZone,
      'chargeType': chargeType,
      'connectionString': connectionString,
      'cpuCores': cpuCores,
      'createTime': createTime,
      'creationTime': creationTime,
      'dbInstanceCategory': dbInstanceCategory,
      'dbInstanceClass': dbInstanceClass,
      'dbInstanceId': dbInstanceId,
      'dbInstanceMode': dbInstanceMode,
      'description': description,
      'engine': engine,
      'engineVersion': engineVersion,
      'id': id,
      'instanceNetworkType': instanceNetworkType,
      'ipWhitelists': pulumi.Input.mapInputValue<List<GetInstancesInstanceIpWhitelist>, List<Map<String, dynamic>>>(ipWhitelists, (value) => pulumi.Input.encodeList<GetInstancesInstanceIpWhitelist, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maintainEndTime': maintainEndTime,
      'maintainStartTime': maintainStartTime,
      'masterNodeNum': masterNodeNum,
      'memorySize': memorySize,
      'paymentType': paymentType,
      'regionId': regionId,
      'segNodeNum': segNodeNum,
      'status': status,
      'storageSize': storageSize,
      'storageType': storageType,
      'tags': tags,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
      availabilityZone: (map['availabilityZone'] as String).input(),
      chargeType: (map['chargeType'] as String).input(),
      connectionString: (map['connectionString'] as String).input(),
      cpuCores: (map['cpuCores'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      creationTime: (map['creationTime'] as String).input(),
      dbInstanceCategory: (map['dbInstanceCategory'] as String).input(),
      dbInstanceClass: (map['dbInstanceClass'] as String).input(),
      dbInstanceId: (map['dbInstanceId'] as String).input(),
      dbInstanceMode: (map['dbInstanceMode'] as String).input(),
      description: (map['description'] as String).input(),
      engine: (map['engine'] as String).input(),
      engineVersion: (map['engineVersion'] as String).input(),
      id: (map['id'] as String).input(),
      instanceNetworkType: (map['instanceNetworkType'] as String).input(),
      ipWhitelists: (pulumi.Input.decodeList<GetInstancesInstanceIpWhitelist>(map['ipWhitelists'], (value) => GetInstancesInstanceIpWhitelist.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maintainEndTime: (map['maintainEndTime'] as String).input(),
      maintainStartTime: (map['maintainStartTime'] as String).input(),
      masterNodeNum: (map['masterNodeNum'] as String).input(),
      memorySize: (map['memorySize'] as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      regionId: (map['regionId'] as String).input(),
      segNodeNum: (map['segNodeNum'] as String).input(),
      status: (map['status'] as String).input(),
      storageSize: (map['storageSize'] as int).input(),
      storageType: (map['storageType'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

