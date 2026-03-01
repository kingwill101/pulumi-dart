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
    pulumi.Output<String>? adminPass,
    pulumi.Output<int>? cacheSize,
    pulumi.Output<int>? cacheSizePostpaid,
    pulumi.Output<int>? cacheSizePrepaid,
    pulumi.Output<int>? clusterCountPostpaid,
    pulumi.Output<int>? clusterCountPrepaid,
    pulumi.Output<int>? cpuPostpaid,
    pulumi.Output<int>? cpuPrepaid,
    pulumi.Output<String>? dbInstanceClass,
    pulumi.Output<String>? dbInstanceDescription,
    pulumi.Output<List<DbInstanceDesiredSecurityIpList>>? desiredSecurityIpLists,
    pulumi.Output<bool>? enablePublicNetwork,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? engineMinorVersion,
    pulumi.Output<String>? gmtCreated,
    pulumi.Output<String>? gmtExpired,
    pulumi.Output<String>? gmtModified,
    pulumi.Output<List<DbInstanceInstanceNetInfo>>? instanceNetInfos,
    pulumi.Output<String>? lockMode,
    pulumi.Output<String>? lockReason,
    pulumi.Output<int>? memoryPostpaid,
    pulumi.Output<int>? memoryPrepaid,
    pulumi.Output<String>? paymentType,
    pulumi.Output<String>? period,
    pulumi.Output<int>? periodTime,
    pulumi.Output<String>? regionId,
    pulumi.Output<List<DbInstanceSecurityIpList>>? securityIpLists,
    pulumi.Output<String>? status,
    pulumi.Output<String>? subDomain,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? upgradedEngineMinorVersion,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<String>? zoneId,
  }) :
      adminPass = pulumi.Input.asOptionalInput<String>(adminPass),
      cacheSize = pulumi.Input.asOptionalInput<int>(cacheSize),
      cacheSizePostpaid = pulumi.Input.asOptionalInput<int>(cacheSizePostpaid),
      cacheSizePrepaid = pulumi.Input.asOptionalInput<int>(cacheSizePrepaid),
      clusterCountPostpaid = pulumi.Input.asOptionalInput<int>(clusterCountPostpaid),
      clusterCountPrepaid = pulumi.Input.asOptionalInput<int>(clusterCountPrepaid),
      cpuPostpaid = pulumi.Input.asOptionalInput<int>(cpuPostpaid),
      cpuPrepaid = pulumi.Input.asOptionalInput<int>(cpuPrepaid),
      dbInstanceClass = pulumi.Input.asOptionalInput<String>(dbInstanceClass),
      dbInstanceDescription = pulumi.Input.asOptionalInput<String>(dbInstanceDescription),
      desiredSecurityIpLists = pulumi.Input.asOptionalInput<List<DbInstanceDesiredSecurityIpList>>(desiredSecurityIpLists),
      enablePublicNetwork = pulumi.Input.asOptionalInput<bool>(enablePublicNetwork),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineMinorVersion = pulumi.Input.asOptionalInput<String>(engineMinorVersion),
      gmtCreated = pulumi.Input.asOptionalInput<String>(gmtCreated),
      gmtExpired = pulumi.Input.asOptionalInput<String>(gmtExpired),
      gmtModified = pulumi.Input.asOptionalInput<String>(gmtModified),
      instanceNetInfos = pulumi.Input.asOptionalInput<List<DbInstanceInstanceNetInfo>>(instanceNetInfos),
      lockMode = pulumi.Input.asOptionalInput<String>(lockMode),
      lockReason = pulumi.Input.asOptionalInput<String>(lockReason),
      memoryPostpaid = pulumi.Input.asOptionalInput<int>(memoryPostpaid),
      memoryPrepaid = pulumi.Input.asOptionalInput<int>(memoryPrepaid),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<String>(period),
      periodTime = pulumi.Input.asOptionalInput<int>(periodTime),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      securityIpLists = pulumi.Input.asOptionalInput<List<DbInstanceSecurityIpList>>(securityIpLists),
      status = pulumi.Input.asOptionalInput<String>(status),
      subDomain = pulumi.Input.asOptionalInput<String>(subDomain),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      upgradedEngineMinorVersion = pulumi.Input.asOptionalInput<String>(upgradedEngineMinorVersion),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      adminPass: map['adminPass'] == null ? null : pulumi.Output.create<String>(map['adminPass'] as String),
      cacheSize: map['cacheSize'] == null ? null : pulumi.Output.create<int>(map['cacheSize'] as int),
      cacheSizePostpaid: map['cacheSizePostpaid'] == null ? null : pulumi.Output.create<int>(map['cacheSizePostpaid'] as int),
      cacheSizePrepaid: map['cacheSizePrepaid'] == null ? null : pulumi.Output.create<int>(map['cacheSizePrepaid'] as int),
      clusterCountPostpaid: map['clusterCountPostpaid'] == null ? null : pulumi.Output.create<int>(map['clusterCountPostpaid'] as int),
      clusterCountPrepaid: map['clusterCountPrepaid'] == null ? null : pulumi.Output.create<int>(map['clusterCountPrepaid'] as int),
      cpuPostpaid: map['cpuPostpaid'] == null ? null : pulumi.Output.create<int>(map['cpuPostpaid'] as int),
      cpuPrepaid: map['cpuPrepaid'] == null ? null : pulumi.Output.create<int>(map['cpuPrepaid'] as int),
      dbInstanceClass: map['dbInstanceClass'] == null ? null : pulumi.Output.create<String>(map['dbInstanceClass'] as String),
      dbInstanceDescription: map['dbInstanceDescription'] == null ? null : pulumi.Output.create<String>(map['dbInstanceDescription'] as String),
      desiredSecurityIpLists: map['desiredSecurityIpLists'] == null ? null : pulumi.Output.create<List<DbInstanceDesiredSecurityIpList>>(pulumi.Input.decodeList<DbInstanceDesiredSecurityIpList>(map['desiredSecurityIpLists'], (value) => DbInstanceDesiredSecurityIpList.fromMap((value as Map).cast<String, dynamic>()))),
      enablePublicNetwork: map['enablePublicNetwork'] == null ? null : pulumi.Output.create<bool>(map['enablePublicNetwork'] as bool),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineMinorVersion: map['engineMinorVersion'] == null ? null : pulumi.Output.create<String>(map['engineMinorVersion'] as String),
      gmtCreated: map['gmtCreated'] == null ? null : pulumi.Output.create<String>(map['gmtCreated'] as String),
      gmtExpired: map['gmtExpired'] == null ? null : pulumi.Output.create<String>(map['gmtExpired'] as String),
      gmtModified: map['gmtModified'] == null ? null : pulumi.Output.create<String>(map['gmtModified'] as String),
      instanceNetInfos: map['instanceNetInfos'] == null ? null : pulumi.Output.create<List<DbInstanceInstanceNetInfo>>(pulumi.Input.decodeList<DbInstanceInstanceNetInfo>(map['instanceNetInfos'], (value) => DbInstanceInstanceNetInfo.fromMap((value as Map).cast<String, dynamic>()))),
      lockMode: map['lockMode'] == null ? null : pulumi.Output.create<String>(map['lockMode'] as String),
      lockReason: map['lockReason'] == null ? null : pulumi.Output.create<String>(map['lockReason'] as String),
      memoryPostpaid: map['memoryPostpaid'] == null ? null : pulumi.Output.create<int>(map['memoryPostpaid'] as int),
      memoryPrepaid: map['memoryPrepaid'] == null ? null : pulumi.Output.create<int>(map['memoryPrepaid'] as int),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<String>(map['period'] as String),
      periodTime: map['periodTime'] == null ? null : pulumi.Output.create<int>(map['periodTime'] as int),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      securityIpLists: map['securityIpLists'] == null ? null : pulumi.Output.create<List<DbInstanceSecurityIpList>>(pulumi.Input.decodeList<DbInstanceSecurityIpList>(map['securityIpLists'], (value) => DbInstanceSecurityIpList.fromMap((value as Map).cast<String, dynamic>()))),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      subDomain: map['subDomain'] == null ? null : pulumi.Output.create<String>(map['subDomain'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      upgradedEngineMinorVersion: map['upgradedEngineMinorVersion'] == null ? null : pulumi.Output.create<String>(map['upgradedEngineMinorVersion'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

