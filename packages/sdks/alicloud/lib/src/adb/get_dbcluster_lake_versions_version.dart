// ignore_for_file: unused_element, unnecessary_cast


class GetDBClusterLakeVersionsVersion {
  /// The name of the service.
  final String commodityCode;
  /// The specifications of computing resources in elastic mode. The increase of resources can speed up queries.
  final String computeResource;
  /// The endpoint of the cluster.
  final String connectionString;
  /// The CreateTime of the ADB cluster.
  final String createTime;
  /// The ID of the DBCluster.
  final String dbClusterId;
  /// The db cluster version.
  final String dbClusterVersion;
  /// The engine of the database.
  final String engine;
  /// The engine version of the database.
  final String engineVersion;
  /// The time when the cluster expires.
  final String expireTime;
  /// Indicates whether the cluster has expired.
  final String expired;
  /// The ID of the DBCluster.
  final String id;
  /// The lock mode of the cluster.
  final String lockMode;
  /// The reason why the cluster is locked.
  final String lockReason;
  /// The payment type of the resource.
  final String paymentType;
  /// The port that is used to access the cluster.
  final String port;
  /// The ID of the resource group.
  final String resourceGroupId;
  /// The status of the resource. Valid values: `Preparing`, `Creating`, `Restoring`, `Running`, `Deleting`, `ClassChanging`, `NetAddressCreating`, `NetAddressDeleting`.
  final String status;
  /// The specifications of storage resources in elastic mode. The resources are used for data read and write operations.
  final String storageResource;
  /// The vpc id.
  final String vpcId;
  /// The vswitch id.
  final String vswitchId;
  /// The zone ID  of the resource.
  final String zoneId;

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
      commodityCode: map['commodityCode'] as String,
      computeResource: map['computeResource'] as String,
      connectionString: map['connectionString'] as String,
      createTime: map['createTime'] as String,
      dbClusterId: map['dbClusterId'] as String,
      dbClusterVersion: map['dbClusterVersion'] as String,
      engine: map['engine'] as String,
      engineVersion: map['engineVersion'] as String,
      expireTime: map['expireTime'] as String,
      expired: map['expired'] as String,
      id: map['id'] as String,
      lockMode: map['lockMode'] as String,
      lockReason: map['lockReason'] as String,
      paymentType: map['paymentType'] as String,
      port: map['port'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      status: map['status'] as String,
      storageResource: map['storageResource'] as String,
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

