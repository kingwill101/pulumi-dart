// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance_ip_whitelist.dart';

class GetInstancesInstance {
  /// Instance availability zone.
  final String availabilityZone;
  final String chargeType;
  /// The connection string of the instance.
  final String connectionString;
  /// The number of CPU cores of the computing node. Unit: Core.
  final String cpuCores;
  /// The time when the instance was created. The time is in the YYYY-MM-DDThh:mm:ssZ format, such as 2011-05-30T12:11:4Z.
  final String createTime;
  final String creationTime;
  /// The db instance category. Valid values: `HighAvailability`, `Basic`.
  final String dbInstanceCategory;
  /// The db instance class.
  final String dbInstanceClass;
  /// The db instance id.
  final String dbInstanceId;
  /// The db instance mode. Valid values: `StorageElastic`, `Serverless`, `Classic`.
  final String dbInstanceMode;
  /// The description of the instance.
  final String description;
  /// The database engine used by the instance.
  final String engine;
  /// The version of the database engine used by the instance.
  final String engineVersion;
  /// The ID of the db Instance.
  final String id;
  /// The network type of the instance.
  final String instanceNetworkType;
  /// The ip whitelist.
  final List<GetInstancesInstanceIpWhitelist> ipWhitelists;
  /// The end time of the maintenance window for the instance.
  final String maintainEndTime;
  /// The start time of the maintenance window for the instance.
  final String maintainStartTime;
  /// The number of Master nodes. Valid values: 1 to 2. if it is not filled in, the default value is 1 Master node.
  final String masterNodeNum;
  /// The memory size of the compute node.
  final String memorySize;
  /// The billing method of the instance. Valid values: `Subscription`, `PayAsYouGo`.
  final String paymentType;
  /// Region ID the instance belongs to.
  final String regionId;
  /// Calculate the number of nodes. The value range of the high-availability version of the storage elastic mode is 4 to 512, and the value must be a multiple of 4. The value range of the basic version of the storage elastic mode is 2 to 512, and the value must be a multiple of 2. The-Serverless version has a value range of 2 to 512. The value must be a multiple of 2.
  final String segNodeNum;
  /// The status of the instance. Valid values: `Creating`, `DBInstanceClassChanging`, `DBInstanceNetTypeChanging`, `Deleting`, `EngineVersionUpgrading`, `GuardDBInstanceCreating`, `GuardSwitching`, `Importing`, `ImportingFromOtherInstance`, `Rebooting`, `Restoring`, `Running`, `Transfering`, `TransferingToOtherInstance`.
  final String status;
  /// The storage capacity. Unit: GB. Value: `50` to `4000`.
  final int storageSize;
  /// The type of disks. Valid values: `cloud_essd`, `cloud_efficiency`.
  final String storageType;
  /// The tags of the instance.
  final Map<String, String> tags;
  /// The ID of the VPC。.
  final String vpcId;
  /// The vswitch id.
  final String vswitchId;
  /// The zone ID of the instance.
  final String zoneId;

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
      'ipWhitelists': pulumi.Input.encodeList<GetInstancesInstanceIpWhitelist, Map<String, dynamic>>(ipWhitelists, (value) => value.toMap()),
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
      availabilityZone: map['availabilityZone'] as String,
      chargeType: map['chargeType'] as String,
      connectionString: map['connectionString'] as String,
      cpuCores: map['cpuCores'] as String,
      createTime: map['createTime'] as String,
      creationTime: map['creationTime'] as String,
      dbInstanceCategory: map['dbInstanceCategory'] as String,
      dbInstanceClass: map['dbInstanceClass'] as String,
      dbInstanceId: map['dbInstanceId'] as String,
      dbInstanceMode: map['dbInstanceMode'] as String,
      description: map['description'] as String,
      engine: map['engine'] as String,
      engineVersion: map['engineVersion'] as String,
      id: map['id'] as String,
      instanceNetworkType: map['instanceNetworkType'] as String,
      ipWhitelists: pulumi.Input.decodeList<GetInstancesInstanceIpWhitelist>(map['ipWhitelists'], (value) => GetInstancesInstanceIpWhitelist.fromMap((value as Map).cast<String, dynamic>())),
      maintainEndTime: map['maintainEndTime'] as String,
      maintainStartTime: map['maintainStartTime'] as String,
      masterNodeNum: map['masterNodeNum'] as String,
      memorySize: map['memorySize'] as String,
      paymentType: map['paymentType'] as String,
      regionId: map['regionId'] as String,
      segNodeNum: map['segNodeNum'] as String,
      status: map['status'] as String,
      storageSize: map['storageSize'] as int,
      storageType: map['storageType'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

