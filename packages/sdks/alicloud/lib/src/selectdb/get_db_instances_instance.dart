// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDbInstancesInstance {
  /// The sum of cache size for every `PayAsYouGo` clusters in DBInstance.
  final pulumi.Input<int> cacheSizePostpaid;
  /// The sum of cache size for every `Subscription` clusters in DBInstance.
  final pulumi.Input<int> cacheSizePrepaid;
  /// The sum of cluster counts for `PayAsYouGo` clusters in DBInstance.
  final pulumi.Input<int> clusterCountPostpaid;
  /// The sum of cluster counts for `Subscription` clusters in DBInstance.
  final pulumi.Input<int> clusterCountPrepaid;
  /// The sum of cpu resource amount for every `PayAsYouGo` clusters in DBInstance.
  final pulumi.Input<int> cpuPostpaid;
  /// The sum of cpu resource amount for every `Subscription` clusters in DBInstance.
  final pulumi.Input<int> cpuPrepaid;
  /// The DBInstance description.
  final pulumi.Input<String> dbInstanceDescription;
  /// The instance ID.
  final pulumi.Input<String> dbInstanceId;
  /// The Engine of the DBInstance.
  final pulumi.Input<String> engine;
  /// The engine minor version of the DBInstance.
  final pulumi.Input<String> engineMinorVersion;
  /// The engine version of the DBInstance.
  final pulumi.Input<String> engineVersion;
  /// The time when DBInstance is created.
  final pulumi.Input<String> gmtCreated;
  /// The time when DBInstance will be expired. Available on `Subscription` DBInstance.
  final pulumi.Input<String> gmtExpired;
  /// The time when DBInstance is modified.
  final pulumi.Input<String> gmtModified;
  final pulumi.Input<String> id;
  /// The lock mode of the instance. Set the value to lock, which specifies that the instance is locked when it automatically expires or has an overdue payment.
  final pulumi.Input<String> lockMode;
  /// The reason why the instance is locked.
  final pulumi.Input<String> lockReason;
  /// The sum of memory resource amount offor every `PayAsYouGo` clusters in DBInstance.
  final pulumi.Input<int> memoryPostpaid;
  /// The sum of memory resource amount offor every `Subscription` clusters in DBInstance.
  final pulumi.Input<int> memoryPrepaid;
  /// The payment type of the resource. Valid values: `PayAsYouGo`,`Subscription`.
  final pulumi.Input<String> paymentType;
  /// The ID of region for DBInstance.
  final pulumi.Input<String> regionId;
  /// The status of the DBInstance. Valid values: `ACTIVATION`,`CREATING`,`DELETING`,`RESTARTING`,`ORDER_PREPARING`.
  final pulumi.Input<String> status;
  /// The sub domain of DBInstance.
  final pulumi.Input<String> subDomain;
  /// The ID of the VPC for DBInstance.
  final pulumi.Input<String> vpcId;
  /// The ID of vswitch for DBInstance.
  final pulumi.Input<String> vswitchId;
  /// The ID of zone for DBInstance.
  final pulumi.Input<String> zoneId;

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
      cacheSizePostpaid: pulumi.Input.fromValue(map['cacheSizePostpaid'] as int),
      cacheSizePrepaid: pulumi.Input.fromValue(map['cacheSizePrepaid'] as int),
      clusterCountPostpaid: pulumi.Input.fromValue(map['clusterCountPostpaid'] as int),
      clusterCountPrepaid: pulumi.Input.fromValue(map['clusterCountPrepaid'] as int),
      cpuPostpaid: pulumi.Input.fromValue(map['cpuPostpaid'] as int),
      cpuPrepaid: pulumi.Input.fromValue(map['cpuPrepaid'] as int),
      dbInstanceDescription: pulumi.Input.fromValue(map['dbInstanceDescription'] as String),
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      engine: pulumi.Input.fromValue(map['engine'] as String),
      engineMinorVersion: pulumi.Input.fromValue(map['engineMinorVersion'] as String),
      engineVersion: pulumi.Input.fromValue(map['engineVersion'] as String),
      gmtCreated: pulumi.Input.fromValue(map['gmtCreated'] as String),
      gmtExpired: pulumi.Input.fromValue(map['gmtExpired'] as String),
      gmtModified: pulumi.Input.fromValue(map['gmtModified'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      lockMode: pulumi.Input.fromValue(map['lockMode'] as String),
      lockReason: pulumi.Input.fromValue(map['lockReason'] as String),
      memoryPostpaid: pulumi.Input.fromValue(map['memoryPostpaid'] as int),
      memoryPrepaid: pulumi.Input.fromValue(map['memoryPrepaid'] as int),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      subDomain: pulumi.Input.fromValue(map['subDomain'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

