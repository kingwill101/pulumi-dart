// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_instance_desired_security_ip_list.dart';
import 'db_instance_instance_net_info.dart';
import 'db_instance_security_ip_list.dart';

/// Input properties used for looking up and filtering DbInstance resources.
class DbInstanceState {
  /// The password for DBInstance using admin account.
  final pulumi.Input<String>? adminPass;
  /// The cache size in DBInstance on creating default cluster. The number should be divided by 100.
  final pulumi.Input<int>? cacheSize;
  /// The sum of cache size for every `PayAsYouGo` clusters in DBInstance.
  final pulumi.Input<int>? cacheSizePostpaid;
  /// The sum of cache size for every `Subscription` clusters in DBInstance.
  final pulumi.Input<int>? cacheSizePrepaid;
  /// The sum of cluster counts for `PayAsYouGo` clusters in DBInstance.
  final pulumi.Input<int>? clusterCountPostpaid;
  /// The sum of cluster counts for `Subscription` clusters in DBInstance.
  final pulumi.Input<int>? clusterCountPrepaid;
  /// The sum of cpu resource amount for every `PayAsYouGo` clusters in DBInstance.
  final pulumi.Input<int>? cpuPostpaid;
  /// The sum of cpu resource amount for every `Subscription` clusters in DBInstance.
  final pulumi.Input<int>? cpuPrepaid;
  /// The class for default cluster in DBInstance. db_cluster_class has a range of class from `selectdb.xlarge` to `selectdb.256xlarge`.
  final pulumi.Input<String>? dbInstanceClass;
  /// The DBInstance description.
  final pulumi.Input<String>? dbInstanceDescription;
  /// The modified IP address whitelists. See `desired_security_ip_lists` below.
  final pulumi.Input<List<DbInstanceDesiredSecurityIpList>>? desiredSecurityIpLists;
  /// If DBInstance need to open public network, set it to `true`.
  final pulumi.Input<bool>? enablePublicNetwork;
  /// The engine of DBInstance. Always `selectdb`.
  final pulumi.Input<String>? engine;
  /// The DBInstance minor version. Valid values: `3.0.12`,`4.0.4`.
  final pulumi.Input<String>? engineMinorVersion;
  /// The time when DBInstance is created.
  final pulumi.Input<String>? gmtCreated;
  /// The time when DBInstance will be expired. Available on `Subscription` DBInstance.
  final pulumi.Input<String>? gmtExpired;
  /// The time when DBInstance is modified.
  final pulumi.Input<String>? gmtModified;
  /// The net infos for instances.
  final pulumi.Input<List<DbInstanceInstanceNetInfo>>? instanceNetInfos;
  /// The lock mode of the instance. Set the value to lock, which specifies that the instance is locked when it automatically expires or has an overdue payment.
  final pulumi.Input<String>? lockMode;
  /// The reason why the instance is locked.
  final pulumi.Input<String>? lockReason;
  /// The sum of memory resource amount offor every `PayAsYouGo` clusters in DBInstance.
  final pulumi.Input<int>? memoryPostpaid;
  /// The sum of memory resource amount offor every `Subscription` clusters in DBInstance.
  final pulumi.Input<int>? memoryPrepaid;
  /// The payment type of the resource. Valid values: `PayAsYouGo`,`Subscription`.
  final pulumi.Input<String>? paymentType;
  /// It is valid when payment_type is `Subscription`. Valid values are `Year`, `Month`.
  final pulumi.Input<String>? period;
  /// The duration that you will buy DBInstance. It is valid when payment_type is `Subscription`. Valid values: [1~9], 12, 24, 36.
  final pulumi.Input<int>? periodTime;
  /// The region ID of the instance.
  final pulumi.Input<String>? regionId;
  /// The details about each IP address whitelist returned.
  final pulumi.Input<List<DbInstanceSecurityIpList>>? securityIpLists;
  /// The status of the resource. Valid values: `ACTIVATION`,`STOPPED`,`STARTING`,`RESTART`.
  final pulumi.Input<String>? status;
  /// The sub domain of DBInstance.
  final pulumi.Input<String>? subDomain;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  final pulumi.Input<Map<String, String>>? tags;
  /// Field `upgraded_engine_minor_version` has been deprecated from provider version 1.248.0. New field `engine_minor_version` instead.
  final pulumi.Input<String>? upgradedEngineMinorVersion;
  /// The ID of the VPC for DBInstance.
  final pulumi.Input<String>? vpcId;
  /// The ID of vswitch for DBInstance.
  final pulumi.Input<String>? vswitchId;
  /// The ID of zone for DBInstance.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [DbInstanceState].
  /// [adminPass] The password for DBInstance using admin account.
  /// [cacheSize] The cache size in DBInstance on creating default cluster. The number should be divided by 100.
  /// [cacheSizePostpaid] The sum of cache size for every `PayAsYouGo` clusters in DBInstance.
  /// [cacheSizePrepaid] The sum of cache size for every `Subscription` clusters in DBInstance.
  /// [clusterCountPostpaid] The sum of cluster counts for `PayAsYouGo` clusters in DBInstance.
  /// [clusterCountPrepaid] The sum of cluster counts for `Subscription` clusters in DBInstance.
  /// [cpuPostpaid] The sum of cpu resource amount for every `PayAsYouGo` clusters in DBInstance.
  /// [cpuPrepaid] The sum of cpu resource amount for every `Subscription` clusters in DBInstance.
  /// [dbInstanceClass] The class for default cluster in DBInstance. db_cluster_class has a range of class from `selectdb.xlarge` to `selectdb.256xlarge`.
  /// [dbInstanceDescription] The DBInstance description.
  /// [desiredSecurityIpLists] The modified IP address whitelists. See `desired_security_ip_lists` below.
  /// [enablePublicNetwork] If DBInstance need to open public network, set it to `true`.
  /// [engine] The engine of DBInstance. Always `selectdb`.
  /// [engineMinorVersion] The DBInstance minor version. Valid values: `3.0.12`,`4.0.4`.
  /// [gmtCreated] The time when DBInstance is created.
  /// [gmtExpired] The time when DBInstance will be expired. Available on `Subscription` DBInstance.
  /// [gmtModified] The time when DBInstance is modified.
  /// [instanceNetInfos] The net infos for instances.
  /// [lockMode] The lock mode of the instance. Set the value to lock, which specifies that the instance is locked when it automatically expires or has an overdue payment.
  /// [lockReason] The reason why the instance is locked.
  /// [memoryPostpaid] The sum of memory resource amount offor every `PayAsYouGo` clusters in DBInstance.
  /// [memoryPrepaid] The sum of memory resource amount offor every `Subscription` clusters in DBInstance.
  /// [paymentType] The payment type of the resource. Valid values: `PayAsYouGo`,`Subscription`.
  /// [period] It is valid when payment_type is `Subscription`. Valid values are `Year`, `Month`.
  /// [periodTime] The duration that you will buy DBInstance. It is valid when payment_type is `Subscription`. Valid values: [1~9], 12, 24, 36.
  /// [regionId] The region ID of the instance.
  /// [securityIpLists] The details about each IP address whitelist returned.
  /// [status] The status of the resource. Valid values: `ACTIVATION`,`STOPPED`,`STARTING`,`RESTART`.
  /// [subDomain] The sub domain of DBInstance.
  /// [tags] A mapping of tags to assign to the resource.
  /// [upgradedEngineMinorVersion] Field `upgraded_engine_minor_version` has been deprecated from provider version 1.248.0. New field `engine_minor_version` instead.
  /// [vpcId] The ID of the VPC for DBInstance.
  /// [vswitchId] The ID of vswitch for DBInstance.
  /// [zoneId] The ID of zone for DBInstance.
  DbInstanceState({
    this.adminPass,
    this.cacheSize,
    this.cacheSizePostpaid,
    this.cacheSizePrepaid,
    this.clusterCountPostpaid,
    this.clusterCountPrepaid,
    this.cpuPostpaid,
    this.cpuPrepaid,
    this.dbInstanceClass,
    this.dbInstanceDescription,
    this.desiredSecurityIpLists,
    this.enablePublicNetwork,
    this.engine,
    this.engineMinorVersion,
    this.gmtCreated,
    this.gmtExpired,
    this.gmtModified,
    this.instanceNetInfos,
    this.lockMode,
    this.lockReason,
    this.memoryPostpaid,
    this.memoryPrepaid,
    this.paymentType,
    this.period,
    this.periodTime,
    this.regionId,
    this.securityIpLists,
    this.status,
    this.subDomain,
    this.tags,
    this.upgradedEngineMinorVersion,
    this.vpcId,
    this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPass': ?adminPass,
      'cacheSize': ?cacheSize,
      'cacheSizePostpaid': ?cacheSizePostpaid,
      'cacheSizePrepaid': ?cacheSizePrepaid,
      'clusterCountPostpaid': ?clusterCountPostpaid,
      'clusterCountPrepaid': ?clusterCountPrepaid,
      'cpuPostpaid': ?cpuPostpaid,
      'cpuPrepaid': ?cpuPrepaid,
      'dbInstanceClass': ?dbInstanceClass,
      'dbInstanceDescription': ?dbInstanceDescription,
      'desiredSecurityIpLists': ?pulumi.Input.mapOptionalInputValue<List<DbInstanceDesiredSecurityIpList>, List<Map<String, dynamic>>>(desiredSecurityIpLists, (value) => pulumi.Input.encodeList<DbInstanceDesiredSecurityIpList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enablePublicNetwork': ?enablePublicNetwork,
      'engine': ?engine,
      'engineMinorVersion': ?engineMinorVersion,
      'gmtCreated': ?gmtCreated,
      'gmtExpired': ?gmtExpired,
      'gmtModified': ?gmtModified,
      'instanceNetInfos': ?pulumi.Input.mapOptionalInputValue<List<DbInstanceInstanceNetInfo>, List<Map<String, dynamic>>>(instanceNetInfos, (value) => pulumi.Input.encodeList<DbInstanceInstanceNetInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lockMode': ?lockMode,
      'lockReason': ?lockReason,
      'memoryPostpaid': ?memoryPostpaid,
      'memoryPrepaid': ?memoryPrepaid,
      'paymentType': ?paymentType,
      'period': ?period,
      'periodTime': ?periodTime,
      'regionId': ?regionId,
      'securityIpLists': ?pulumi.Input.mapOptionalInputValue<List<DbInstanceSecurityIpList>, List<Map<String, dynamic>>>(securityIpLists, (value) => pulumi.Input.encodeList<DbInstanceSecurityIpList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
      'subDomain': ?subDomain,
      'tags': ?tags,
      'upgradedEngineMinorVersion': ?upgradedEngineMinorVersion,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory DbInstanceState.fromMap(Map<String, dynamic> map) {
    return DbInstanceState(
      adminPass: map['adminPass'] == null ? null : (map['adminPass']! as String).input(),
      cacheSize: map['cacheSize'] == null ? null : (map['cacheSize']! as int).input(),
      cacheSizePostpaid: map['cacheSizePostpaid'] == null ? null : (map['cacheSizePostpaid']! as int).input(),
      cacheSizePrepaid: map['cacheSizePrepaid'] == null ? null : (map['cacheSizePrepaid']! as int).input(),
      clusterCountPostpaid: map['clusterCountPostpaid'] == null ? null : (map['clusterCountPostpaid']! as int).input(),
      clusterCountPrepaid: map['clusterCountPrepaid'] == null ? null : (map['clusterCountPrepaid']! as int).input(),
      cpuPostpaid: map['cpuPostpaid'] == null ? null : (map['cpuPostpaid']! as int).input(),
      cpuPrepaid: map['cpuPrepaid'] == null ? null : (map['cpuPrepaid']! as int).input(),
      dbInstanceClass: map['dbInstanceClass'] == null ? null : (map['dbInstanceClass']! as String).input(),
      dbInstanceDescription: map['dbInstanceDescription'] == null ? null : (map['dbInstanceDescription']! as String).input(),
      desiredSecurityIpLists: map['desiredSecurityIpLists'] == null ? null : (pulumi.Input.decodeList<DbInstanceDesiredSecurityIpList>(map['desiredSecurityIpLists']!, (value) => DbInstanceDesiredSecurityIpList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enablePublicNetwork: map['enablePublicNetwork'] == null ? null : (map['enablePublicNetwork']! as bool).input(),
      engine: map['engine'] == null ? null : (map['engine']! as String).input(),
      engineMinorVersion: map['engineMinorVersion'] == null ? null : (map['engineMinorVersion']! as String).input(),
      gmtCreated: map['gmtCreated'] == null ? null : (map['gmtCreated']! as String).input(),
      gmtExpired: map['gmtExpired'] == null ? null : (map['gmtExpired']! as String).input(),
      gmtModified: map['gmtModified'] == null ? null : (map['gmtModified']! as String).input(),
      instanceNetInfos: map['instanceNetInfos'] == null ? null : (pulumi.Input.decodeList<DbInstanceInstanceNetInfo>(map['instanceNetInfos']!, (value) => DbInstanceInstanceNetInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      lockMode: map['lockMode'] == null ? null : (map['lockMode']! as String).input(),
      lockReason: map['lockReason'] == null ? null : (map['lockReason']! as String).input(),
      memoryPostpaid: map['memoryPostpaid'] == null ? null : (map['memoryPostpaid']! as int).input(),
      memoryPrepaid: map['memoryPrepaid'] == null ? null : (map['memoryPrepaid']! as int).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType']! as String).input(),
      period: map['period'] == null ? null : (map['period']! as String).input(),
      periodTime: map['periodTime'] == null ? null : (map['periodTime']! as int).input(),
      regionId: map['regionId'] == null ? null : (map['regionId']! as String).input(),
      securityIpLists: map['securityIpLists'] == null ? null : (pulumi.Input.decodeList<DbInstanceSecurityIpList>(map['securityIpLists']!, (value) => DbInstanceSecurityIpList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      subDomain: map['subDomain'] == null ? null : (map['subDomain']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      upgradedEngineMinorVersion: map['upgradedEngineMinorVersion'] == null ? null : (map['upgradedEngineMinorVersion']! as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId']! as String).input(),
    );
  }
}

