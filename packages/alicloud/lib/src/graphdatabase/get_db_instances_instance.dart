// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_instances_instance_db_instance_ip_array.dart';

class GetDbInstancesInstance {
  /// Virtual Private Cloud (vpc connection such as a VPN connection or leased line domain name).
  final String connectionString;
  /// Creation time, which follows the format of `YYYY-MM-DD 'T'hh:mm:ssZ`, such as `2011-05-30 T12:11:4Z`.
  final String createTime;
  /// The current kernel image version.
  final String currentMinorVersion;
  /// The category of the db instance.
  final String dbInstanceCategory;
  /// For example, instances can be grouped according to Cpu core count.
  final String dbInstanceCpu;
  /// According to the practical example or notes.
  final String dbInstanceDescription;
  /// The ID of the instance.
  final String dbInstanceId;
  /// IP ADDRESS whitelist for the instance group list.
  final List<GetDbInstancesInstanceDbInstanceIpArray> dbInstanceIpArrays;
  /// Instance memory, which is measured in MB.
  final String dbInstanceMemory;
  /// The network type of the db instance.
  final String dbInstanceNetworkType;
  /// Disk storage type. Valid values: `cloud_essd`, `cloud_ssd`.
  final String dbInstanceStorageType;
  /// The type of the db instance.
  final String dbInstanceType;
  /// The class of the db node.
  final String dbNodeClass;
  /// The count of the db node.
  final String dbNodeCount;
  /// Instance storage space, which is measured in GB.
  final String dbNodeStorage;
  /// Kernel Version. Value range: `1.0` or `1.0-OpenCypher`. `1.0`: represented as gremlin, `1.0-OpenCypher`: said opencypher.
  final String dbVersion;
  /// The instance after it expires time for subscription instance.
  final String expireTime;
  /// The expire status of the db instance.
  final String expired;
  /// The ID of the Db Instance.
  final String id;
  /// The latest kernel image version.
  final String latestMinorVersion;
  /// Instance lock state. Value range: `Unlock`, `ManualLock`, `LockByExpiration`, `LockByRestoration` and `LockByDiskQuota`. `Unlock`: normal. `ManualLock`: the manual trigger lock. `LockByExpiration`: that represents the instance expires automatically lock. `LockByRestoration`: indicates that the instance rollback before auto-lock. `LockByDiskQuota`: that represents the instance space full automatic lock.
  final String lockMode;
  /// An instance is locked the reason.
  final String lockReason;
  /// Instance maintenance time such as `00:00Z-02:00Z`, 0 to 2 points to carry out routine maintenance.
  final String maintainTime;
  /// The master instance ID of the db instance.
  final String masterDbInstanceId;
  /// The paymen type of the resource.
  final String paymentType;
  /// Application Port.
  final int port;
  /// The public connection string ID of the resource.
  final String publicConnectionString;
  /// The public port ID of the resource.
  final int publicPort;
  /// The array of the readonly db instances.
  final List<String> readOnlyDbInstanceIds;
  /// Instance status. Value range: `Creating`, `Running`, `Deleting`, `Rebooting`, `DBInstanceClassChanging`, `NetAddressCreating` and `NetAddressDeleting`.
  final String status;
  /// The vpc id of the db instance.
  final String vpcId;
  /// The vswitch id.
  final String vswitchId;
  /// The zone ID of the resource.
  final String zoneId;

  /// Creates a new [GetDbInstancesInstance].
  /// [connectionString] Virtual Private Cloud (vpc connection such as a VPN connection or leased line domain name).
  /// [createTime] Creation time, which follows the format of `YYYY-MM-DD 'T'hh:mm:ssZ`, such as `2011-05-30 T12:11:4Z`.
  /// [currentMinorVersion] The current kernel image version.
  /// [dbInstanceCategory] The category of the db instance.
  /// [dbInstanceCpu] For example, instances can be grouped according to Cpu core count.
  /// [dbInstanceDescription] According to the practical example or notes.
  /// [dbInstanceId] The ID of the instance.
  /// [dbInstanceIpArrays] IP ADDRESS whitelist for the instance group list.
  /// [dbInstanceMemory] Instance memory, which is measured in MB.
  /// [dbInstanceNetworkType] The network type of the db instance.
  /// [dbInstanceStorageType] Disk storage type. Valid values: `cloud_essd`, `cloud_ssd`.
  /// [dbInstanceType] The type of the db instance.
  /// [dbNodeClass] The class of the db node.
  /// [dbNodeCount] The count of the db node.
  /// [dbNodeStorage] Instance storage space, which is measured in GB.
  /// [dbVersion] Kernel Version. Value range: `1.0` or `1.0-OpenCypher`. `1.0`: represented as gremlin, `1.0-OpenCypher`: said opencypher.
  /// [expireTime] The instance after it expires time for subscription instance.
  /// [expired] The expire status of the db instance.
  /// [id] The ID of the Db Instance.
  /// [latestMinorVersion] The latest kernel image version.
  /// [lockMode] Instance lock state. Value range: `Unlock`, `ManualLock`, `LockByExpiration`, `LockByRestoration` and `LockByDiskQuota`. `Unlock`: normal. `ManualLock`: the manual trigger lock. `LockByExpiration`: that represents the instance expires automatically lock. `LockByRestoration`: indicates that the instance rollback before auto-lock. `LockByDiskQuota`: that represents the instance space full automatic lock.
  /// [lockReason] An instance is locked the reason.
  /// [maintainTime] Instance maintenance time such as `00:00Z-02:00Z`, 0 to 2 points to carry out routine maintenance.
  /// [masterDbInstanceId] The master instance ID of the db instance.
  /// [paymentType] The paymen type of the resource.
  /// [port] Application Port.
  /// [publicConnectionString] The public connection string ID of the resource.
  /// [publicPort] The public port ID of the resource.
  /// [readOnlyDbInstanceIds] The array of the readonly db instances.
  /// [status] Instance status. Value range: `Creating`, `Running`, `Deleting`, `Rebooting`, `DBInstanceClassChanging`, `NetAddressCreating` and `NetAddressDeleting`.
  /// [vpcId] The vpc id of the db instance.
  /// [vswitchId] The vswitch id.
  /// [zoneId] The zone ID of the resource.
  GetDbInstancesInstance({
    required this.connectionString,
    required this.createTime,
    required this.currentMinorVersion,
    required this.dbInstanceCategory,
    required this.dbInstanceCpu,
    required this.dbInstanceDescription,
    required this.dbInstanceId,
    required this.dbInstanceIpArrays,
    required this.dbInstanceMemory,
    required this.dbInstanceNetworkType,
    required this.dbInstanceStorageType,
    required this.dbInstanceType,
    required this.dbNodeClass,
    required this.dbNodeCount,
    required this.dbNodeStorage,
    required this.dbVersion,
    required this.expireTime,
    required this.expired,
    required this.id,
    required this.latestMinorVersion,
    required this.lockMode,
    required this.lockReason,
    required this.maintainTime,
    required this.masterDbInstanceId,
    required this.paymentType,
    required this.port,
    required this.publicConnectionString,
    required this.publicPort,
    required this.readOnlyDbInstanceIds,
    required this.status,
    required this.vpcId,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': connectionString,
      'createTime': createTime,
      'currentMinorVersion': currentMinorVersion,
      'dbInstanceCategory': dbInstanceCategory,
      'dbInstanceCpu': dbInstanceCpu,
      'dbInstanceDescription': dbInstanceDescription,
      'dbInstanceId': dbInstanceId,
      'dbInstanceIpArrays': pulumi.Input.encodeList<GetDbInstancesInstanceDbInstanceIpArray, Map<String, dynamic>>(dbInstanceIpArrays, (value) => value.toMap()),
      'dbInstanceMemory': dbInstanceMemory,
      'dbInstanceNetworkType': dbInstanceNetworkType,
      'dbInstanceStorageType': dbInstanceStorageType,
      'dbInstanceType': dbInstanceType,
      'dbNodeClass': dbNodeClass,
      'dbNodeCount': dbNodeCount,
      'dbNodeStorage': dbNodeStorage,
      'dbVersion': dbVersion,
      'expireTime': expireTime,
      'expired': expired,
      'id': id,
      'latestMinorVersion': latestMinorVersion,
      'lockMode': lockMode,
      'lockReason': lockReason,
      'maintainTime': maintainTime,
      'masterDbInstanceId': masterDbInstanceId,
      'paymentType': paymentType,
      'port': port,
      'publicConnectionString': publicConnectionString,
      'publicPort': publicPort,
      'readOnlyDbInstanceIds': readOnlyDbInstanceIds,
      'status': status,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory GetDbInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetDbInstancesInstance(
      connectionString: map['connectionString'] as String,
      createTime: map['createTime'] as String,
      currentMinorVersion: map['currentMinorVersion'] as String,
      dbInstanceCategory: map['dbInstanceCategory'] as String,
      dbInstanceCpu: map['dbInstanceCpu'] as String,
      dbInstanceDescription: map['dbInstanceDescription'] as String,
      dbInstanceId: map['dbInstanceId'] as String,
      dbInstanceIpArrays: pulumi.Input.decodeList<GetDbInstancesInstanceDbInstanceIpArray>(map['dbInstanceIpArrays'], (value) => GetDbInstancesInstanceDbInstanceIpArray.fromMap((value as Map).cast<String, dynamic>())),
      dbInstanceMemory: map['dbInstanceMemory'] as String,
      dbInstanceNetworkType: map['dbInstanceNetworkType'] as String,
      dbInstanceStorageType: map['dbInstanceStorageType'] as String,
      dbInstanceType: map['dbInstanceType'] as String,
      dbNodeClass: map['dbNodeClass'] as String,
      dbNodeCount: map['dbNodeCount'] as String,
      dbNodeStorage: map['dbNodeStorage'] as String,
      dbVersion: map['dbVersion'] as String,
      expireTime: map['expireTime'] as String,
      expired: map['expired'] as String,
      id: map['id'] as String,
      latestMinorVersion: map['latestMinorVersion'] as String,
      lockMode: map['lockMode'] as String,
      lockReason: map['lockReason'] as String,
      maintainTime: map['maintainTime'] as String,
      masterDbInstanceId: map['masterDbInstanceId'] as String,
      paymentType: map['paymentType'] as String,
      port: map['port'] as int,
      publicConnectionString: map['publicConnectionString'] as String,
      publicPort: map['publicPort'] as int,
      readOnlyDbInstanceIds: (map['readOnlyDbInstanceIds'] as List).cast<String>(),
      status: map['status'] as String,
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

