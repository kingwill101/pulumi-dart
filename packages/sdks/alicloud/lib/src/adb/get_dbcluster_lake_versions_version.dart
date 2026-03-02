// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDBClusterLakeVersionsVersion {
  /// The name of the service.
  final pulumi.Input<String> commodityCode;
  /// The specifications of computing resources in elastic mode. The increase of resources can speed up queries.
  final pulumi.Input<String> computeResource;
  /// The endpoint of the cluster.
  final pulumi.Input<String> connectionString;
  /// The CreateTime of the ADB cluster.
  final pulumi.Input<String> createTime;
  /// The ID of the DBCluster.
  final pulumi.Input<String> dbClusterId;
  /// The db cluster version.
  final pulumi.Input<String> dbClusterVersion;
  /// The engine of the database.
  final pulumi.Input<String> engine;
  /// The engine version of the database.
  final pulumi.Input<String> engineVersion;
  /// The time when the cluster expires.
  final pulumi.Input<String> expireTime;
  /// Indicates whether the cluster has expired.
  final pulumi.Input<String> expired;
  /// The ID of the DBCluster.
  final pulumi.Input<String> id;
  /// The lock mode of the cluster.
  final pulumi.Input<String> lockMode;
  /// The reason why the cluster is locked.
  final pulumi.Input<String> lockReason;
  /// The payment type of the resource.
  final pulumi.Input<String> paymentType;
  /// The port that is used to access the cluster.
  final pulumi.Input<String> port;
  /// The ID of the resource group.
  final pulumi.Input<String> resourceGroupId;
  /// The status of the resource. Valid values: `Preparing`, `Creating`, `Restoring`, `Running`, `Deleting`, `ClassChanging`, `NetAddressCreating`, `NetAddressDeleting`.
  final pulumi.Input<String> status;
  /// The specifications of storage resources in elastic mode. The resources are used for data read and write operations.
  final pulumi.Input<String> storageResource;
  /// The vpc id.
  final pulumi.Input<String> vpcId;
  /// The vswitch id.
  final pulumi.Input<String> vswitchId;
  /// The zone ID  of the resource.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetDBClusterLakeVersionsVersion].
  /// [commodityCode] The name of the service.
  /// [computeResource] The specifications of computing resources in elastic mode. The increase of resources can speed up queries.
  /// [connectionString] The endpoint of the cluster.
  /// [createTime] The CreateTime of the ADB cluster.
  /// [dbClusterId] The ID of the DBCluster.
  /// [dbClusterVersion] The db cluster version.
  /// [engine] The engine of the database.
  /// [engineVersion] The engine version of the database.
  /// [expireTime] The time when the cluster expires.
  /// [expired] Indicates whether the cluster has expired.
  /// [id] The ID of the DBCluster.
  /// [lockMode] The lock mode of the cluster.
  /// [lockReason] The reason why the cluster is locked.
  /// [paymentType] The payment type of the resource.
  /// [port] The port that is used to access the cluster.
  /// [resourceGroupId] The ID of the resource group.
  /// [status] The status of the resource. Valid values: `Preparing`, `Creating`, `Restoring`, `Running`, `Deleting`, `ClassChanging`, `NetAddressCreating`, `NetAddressDeleting`.
  /// [storageResource] The specifications of storage resources in elastic mode. The resources are used for data read and write operations.
  /// [vpcId] The vpc id.
  /// [vswitchId] The vswitch id.
  /// [zoneId] The zone ID  of the resource.
  GetDBClusterLakeVersionsVersion({
    required this.commodityCode,
    required this.computeResource,
    required this.connectionString,
    required this.createTime,
    required this.dbClusterId,
    required this.dbClusterVersion,
    required this.engine,
    required this.engineVersion,
    required this.expireTime,
    required this.expired,
    required this.id,
    required this.lockMode,
    required this.lockReason,
    required this.paymentType,
    required this.port,
    required this.resourceGroupId,
    required this.status,
    required this.storageResource,
    required this.vpcId,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commodityCode': commodityCode,
      'computeResource': computeResource,
      'connectionString': connectionString,
      'createTime': createTime,
      'dbClusterId': dbClusterId,
      'dbClusterVersion': dbClusterVersion,
      'engine': engine,
      'engineVersion': engineVersion,
      'expireTime': expireTime,
      'expired': expired,
      'id': id,
      'lockMode': lockMode,
      'lockReason': lockReason,
      'paymentType': paymentType,
      'port': port,
      'resourceGroupId': resourceGroupId,
      'status': status,
      'storageResource': storageResource,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory GetDBClusterLakeVersionsVersion.fromMap(Map<String, dynamic> map) {
    return GetDBClusterLakeVersionsVersion(
      commodityCode: (map['commodityCode'] as String).input(),
      computeResource: (map['computeResource'] as String).input(),
      connectionString: (map['connectionString'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      dbClusterId: (map['dbClusterId'] as String).input(),
      dbClusterVersion: (map['dbClusterVersion'] as String).input(),
      engine: (map['engine'] as String).input(),
      engineVersion: (map['engineVersion'] as String).input(),
      expireTime: (map['expireTime'] as String).input(),
      expired: (map['expired'] as String).input(),
      id: (map['id'] as String).input(),
      lockMode: (map['lockMode'] as String).input(),
      lockReason: (map['lockReason'] as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      port: (map['port'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      status: (map['status'] as String).input(),
      storageResource: (map['storageResource'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

