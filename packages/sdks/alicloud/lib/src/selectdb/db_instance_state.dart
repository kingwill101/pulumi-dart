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
  const DbInstanceState({
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
      adminPass: (() { final guardedValue = map['adminPass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheSize: (() { final guardedValue = map['cacheSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cacheSizePostpaid: (() { final guardedValue = map['cacheSizePostpaid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cacheSizePrepaid: (() { final guardedValue = map['cacheSizePrepaid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      clusterCountPostpaid: (() { final guardedValue = map['clusterCountPostpaid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      clusterCountPrepaid: (() { final guardedValue = map['clusterCountPrepaid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cpuPostpaid: (() { final guardedValue = map['cpuPostpaid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cpuPrepaid: (() { final guardedValue = map['cpuPrepaid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dbInstanceClass: (() { final guardedValue = map['dbInstanceClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceDescription: (() { final guardedValue = map['dbInstanceDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desiredSecurityIpLists: (() { final guardedValue = map['desiredSecurityIpLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DbInstanceDesiredSecurityIpList>(guardedValue, (value) => DbInstanceDesiredSecurityIpList.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enablePublicNetwork: (() { final guardedValue = map['enablePublicNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineMinorVersion: (() { final guardedValue = map['engineMinorVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gmtCreated: (() { final guardedValue = map['gmtCreated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gmtExpired: (() { final guardedValue = map['gmtExpired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gmtModified: (() { final guardedValue = map['gmtModified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceNetInfos: (() { final guardedValue = map['instanceNetInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DbInstanceInstanceNetInfo>(guardedValue, (value) => DbInstanceInstanceNetInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lockMode: (() { final guardedValue = map['lockMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lockReason: (() { final guardedValue = map['lockReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memoryPostpaid: (() { final guardedValue = map['memoryPostpaid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      memoryPrepaid: (() { final guardedValue = map['memoryPrepaid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      periodTime: (() { final guardedValue = map['periodTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityIpLists: (() { final guardedValue = map['securityIpLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DbInstanceSecurityIpList>(guardedValue, (value) => DbInstanceSecurityIpList.fromMap((value as Map).cast<String, dynamic>()))); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subDomain: (() { final guardedValue = map['subDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      upgradedEngineMinorVersion: (() { final guardedValue = map['upgradedEngineMinorVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

