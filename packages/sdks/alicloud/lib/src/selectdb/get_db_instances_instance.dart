// ignore_for_file: unused_element, unnecessary_cast


class GetDbInstancesInstance {
  /// The sum of cache size for every `PayAsYouGo` clusters in DBInstance.
  final int cacheSizePostpaid;
  /// The sum of cache size for every `Subscription` clusters in DBInstance.
  final int cacheSizePrepaid;
  /// The sum of cluster counts for `PayAsYouGo` clusters in DBInstance.
  final int clusterCountPostpaid;
  /// The sum of cluster counts for `Subscription` clusters in DBInstance.
  final int clusterCountPrepaid;
  /// The sum of cpu resource amount for every `PayAsYouGo` clusters in DBInstance.
  final int cpuPostpaid;
  /// The sum of cpu resource amount for every `Subscription` clusters in DBInstance.
  final int cpuPrepaid;
  /// The DBInstance description.
  final String dbInstanceDescription;
  /// The instance ID.
  final String dbInstanceId;
  /// The Engine of the DBInstance.
  final String engine;
  /// The engine minor version of the DBInstance.
  final String engineMinorVersion;
  /// The engine version of the DBInstance.
  final String engineVersion;
  /// The time when DBInstance is created.
  final String gmtCreated;
  /// The time when DBInstance will be expired. Available on `Subscription` DBInstance.
  final String gmtExpired;
  /// The time when DBInstance is modified.
  final String gmtModified;
  final String id;
  /// The lock mode of the instance. Set the value to lock, which specifies that the instance is locked when it automatically expires or has an overdue payment.
  final String lockMode;
  /// The reason why the instance is locked.
  final String lockReason;
  /// The sum of memory resource amount offor every `PayAsYouGo` clusters in DBInstance.
  final int memoryPostpaid;
  /// The sum of memory resource amount offor every `Subscription` clusters in DBInstance.
  final int memoryPrepaid;
  /// The payment type of the resource. Valid values: `PayAsYouGo`,`Subscription`.
  final String paymentType;
  /// The ID of region for DBInstance.
  final String regionId;
  /// The status of the DBInstance. Valid values: `ACTIVATION`,`CREATING`,`DELETING`,`RESTARTING`,`ORDER_PREPARING`.
  final String status;
  /// The sub domain of DBInstance.
  final String subDomain;
  /// The ID of the VPC for DBInstance.
  final String vpcId;
  /// The ID of vswitch for DBInstance.
  final String vswitchId;
  /// The ID of zone for DBInstance.
  final String zoneId;

  /// Creates a new [GetDbInstancesInstance].
  /// [cacheSizePostpaid] The sum of cache size for every `PayAsYouGo` clusters in DBInstance.
  /// [cacheSizePrepaid] The sum of cache size for every `Subscription` clusters in DBInstance.
  /// [clusterCountPostpaid] The sum of cluster counts for `PayAsYouGo` clusters in DBInstance.
  /// [clusterCountPrepaid] The sum of cluster counts for `Subscription` clusters in DBInstance.
  /// [cpuPostpaid] The sum of cpu resource amount for every `PayAsYouGo` clusters in DBInstance.
  /// [cpuPrepaid] The sum of cpu resource amount for every `Subscription` clusters in DBInstance.
  /// [dbInstanceDescription] The DBInstance description.
  /// [dbInstanceId] The instance ID.
  /// [engine] The Engine of the DBInstance.
  /// [engineMinorVersion] The engine minor version of the DBInstance.
  /// [engineVersion] The engine version of the DBInstance.
  /// [gmtCreated] The time when DBInstance is created.
  /// [gmtExpired] The time when DBInstance will be expired. Available on `Subscription` DBInstance.
  /// [gmtModified] The time when DBInstance is modified.
  /// [id] Required.
  /// [lockMode] The lock mode of the instance. Set the value to lock, which specifies that the instance is locked when it automatically expires or has an overdue payment.
  /// [lockReason] The reason why the instance is locked.
  /// [memoryPostpaid] The sum of memory resource amount offor every `PayAsYouGo` clusters in DBInstance.
  /// [memoryPrepaid] The sum of memory resource amount offor every `Subscription` clusters in DBInstance.
  /// [paymentType] The payment type of the resource. Valid values: `PayAsYouGo`,`Subscription`.
  /// [regionId] The ID of region for DBInstance.
  /// [status] The status of the DBInstance. Valid values: `ACTIVATION`,`CREATING`,`DELETING`,`RESTARTING`,`ORDER_PREPARING`.
  /// [subDomain] The sub domain of DBInstance.
  /// [vpcId] The ID of the VPC for DBInstance.
  /// [vswitchId] The ID of vswitch for DBInstance.
  /// [zoneId] The ID of zone for DBInstance.
  GetDbInstancesInstance({
    required this.cacheSizePostpaid,
    required this.cacheSizePrepaid,
    required this.clusterCountPostpaid,
    required this.clusterCountPrepaid,
    required this.cpuPostpaid,
    required this.cpuPrepaid,
    required this.dbInstanceDescription,
    required this.dbInstanceId,
    required this.engine,
    required this.engineMinorVersion,
    required this.engineVersion,
    required this.gmtCreated,
    required this.gmtExpired,
    required this.gmtModified,
    required this.id,
    required this.lockMode,
    required this.lockReason,
    required this.memoryPostpaid,
    required this.memoryPrepaid,
    required this.paymentType,
    required this.regionId,
    required this.status,
    required this.subDomain,
    required this.vpcId,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheSizePostpaid': cacheSizePostpaid,
      'cacheSizePrepaid': cacheSizePrepaid,
      'clusterCountPostpaid': clusterCountPostpaid,
      'clusterCountPrepaid': clusterCountPrepaid,
      'cpuPostpaid': cpuPostpaid,
      'cpuPrepaid': cpuPrepaid,
      'dbInstanceDescription': dbInstanceDescription,
      'dbInstanceId': dbInstanceId,
      'engine': engine,
      'engineMinorVersion': engineMinorVersion,
      'engineVersion': engineVersion,
      'gmtCreated': gmtCreated,
      'gmtExpired': gmtExpired,
      'gmtModified': gmtModified,
      'id': id,
      'lockMode': lockMode,
      'lockReason': lockReason,
      'memoryPostpaid': memoryPostpaid,
      'memoryPrepaid': memoryPrepaid,
      'paymentType': paymentType,
      'regionId': regionId,
      'status': status,
      'subDomain': subDomain,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory GetDbInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetDbInstancesInstance(
      cacheSizePostpaid: map['cacheSizePostpaid'] as int,
      cacheSizePrepaid: map['cacheSizePrepaid'] as int,
      clusterCountPostpaid: map['clusterCountPostpaid'] as int,
      clusterCountPrepaid: map['clusterCountPrepaid'] as int,
      cpuPostpaid: map['cpuPostpaid'] as int,
      cpuPrepaid: map['cpuPrepaid'] as int,
      dbInstanceDescription: map['dbInstanceDescription'] as String,
      dbInstanceId: map['dbInstanceId'] as String,
      engine: map['engine'] as String,
      engineMinorVersion: map['engineMinorVersion'] as String,
      engineVersion: map['engineVersion'] as String,
      gmtCreated: map['gmtCreated'] as String,
      gmtExpired: map['gmtExpired'] as String,
      gmtModified: map['gmtModified'] as String,
      id: map['id'] as String,
      lockMode: map['lockMode'] as String,
      lockReason: map['lockReason'] as String,
      memoryPostpaid: map['memoryPostpaid'] as int,
      memoryPrepaid: map['memoryPrepaid'] as int,
      paymentType: map['paymentType'] as String,
      regionId: map['regionId'] as String,
      status: map['status'] as String,
      subDomain: map['subDomain'] as String,
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

