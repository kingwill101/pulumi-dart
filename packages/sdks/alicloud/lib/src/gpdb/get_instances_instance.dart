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
      availabilityZone: pulumi.Input.fromValue(map['availabilityZone'] as String),
      chargeType: pulumi.Input.fromValue(map['chargeType'] as String),
      connectionString: pulumi.Input.fromValue(map['connectionString'] as String),
      cpuCores: pulumi.Input.fromValue(map['cpuCores'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      creationTime: pulumi.Input.fromValue(map['creationTime'] as String),
      dbInstanceCategory: pulumi.Input.fromValue(map['dbInstanceCategory'] as String),
      dbInstanceClass: pulumi.Input.fromValue(map['dbInstanceClass'] as String),
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      dbInstanceMode: pulumi.Input.fromValue(map['dbInstanceMode'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      engine: pulumi.Input.fromValue(map['engine'] as String),
      engineVersion: pulumi.Input.fromValue(map['engineVersion'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceNetworkType: pulumi.Input.fromValue(map['instanceNetworkType'] as String),
      ipWhitelists: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstancesInstanceIpWhitelist>(map['ipWhitelists']!, (value) => GetInstancesInstanceIpWhitelist.fromMap((value as Map).cast<String, dynamic>()))),
      maintainEndTime: pulumi.Input.fromValue(map['maintainEndTime'] as String),
      maintainStartTime: pulumi.Input.fromValue(map['maintainStartTime'] as String),
      masterNodeNum: pulumi.Input.fromValue(map['masterNodeNum'] as String),
      memorySize: pulumi.Input.fromValue(map['memorySize'] as String),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      segNodeNum: pulumi.Input.fromValue(map['segNodeNum'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      storageSize: pulumi.Input.fromValue(map['storageSize'] as int),
      storageType: pulumi.Input.fromValue(map['storageType'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

