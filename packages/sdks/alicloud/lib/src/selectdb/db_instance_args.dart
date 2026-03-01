// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_instance_desired_security_ip_list.dart';

/// {@template pulumi_selectdb_db_instance_db_instance_args_doc}
/// The set of arguments for DbInstance.
/// {@endtemplate}
/// {@macro pulumi_selectdb_db_instance_db_instance_args_doc}
class DbInstanceArgs {
  /// The password for DBInstance using admin account.
  final pulumi.Input<String>? adminPass;
  /// The cache size in DBInstance on creating default cluster. The number should be divided by 100.
  final pulumi.Input<int> cacheSize;
  /// The class for default cluster in DBInstance. db_cluster_class has a range of class from `selectdb.xlarge` to `selectdb.256xlarge`.
  final pulumi.Input<String> dbInstanceClass;
  /// The DBInstance description.
  final pulumi.Input<String> dbInstanceDescription;
  /// The modified IP address whitelists. See `desired_security_ip_lists` below.
  final pulumi.Input<List<DbInstanceDesiredSecurityIpList>>? desiredSecurityIpLists;
  /// If DBInstance need to open public network, set it to `true`.
  final pulumi.Input<bool>? enablePublicNetwork;
  /// The DBInstance minor version. Valid values: `3.0.12`,`4.0.4`.
  final pulumi.Input<String>? engineMinorVersion;
  /// The payment type of the resource. Valid values: `PayAsYouGo`,`Subscription`.
  final pulumi.Input<String> paymentType;
  /// It is valid when payment_type is `Subscription`. Valid values are `Year`, `Month`.
  final pulumi.Input<String>? period;
  /// The duration that you will buy DBInstance. It is valid when payment_type is `Subscription`. Valid values: [1~9], 12, 24, 36.
  final pulumi.Input<int>? periodTime;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  final pulumi.Input<Map<String, String>>? tags;
  /// Field `upgraded_engine_minor_version` has been deprecated from provider version 1.248.0. New field `engine_minor_version` instead.
  final pulumi.Input<String>? upgradedEngineMinorVersion;
  /// The ID of the VPC for DBInstance.
  final pulumi.Input<String> vpcId;
  /// The ID of vswitch for DBInstance.
  final pulumi.Input<String> vswitchId;
  /// The ID of zone for DBInstance.
  final pulumi.Input<String> zoneId;

  /// Creates a new [DbInstanceArgs].
  /// [adminPass] The password for DBInstance using admin account.
  /// [cacheSize] The cache size in DBInstance on creating default cluster. The number should be divided by 100.
  /// [dbInstanceClass] The class for default cluster in DBInstance. db_cluster_class has a range of class from `selectdb.xlarge` to `selectdb.256xlarge`.
  /// [dbInstanceDescription] The DBInstance description.
  /// [desiredSecurityIpLists] The modified IP address whitelists. See `desired_security_ip_lists` below.
  /// [enablePublicNetwork] If DBInstance need to open public network, set it to `true`.
  /// [engineMinorVersion] The DBInstance minor version. Valid values: `3.0.12`,`4.0.4`.
  /// [paymentType] The payment type of the resource. Valid values: `PayAsYouGo`,`Subscription`.
  /// [period] It is valid when payment_type is `Subscription`. Valid values are `Year`, `Month`.
  /// [periodTime] The duration that you will buy DBInstance. It is valid when payment_type is `Subscription`. Valid values: [1~9], 12, 24, 36.
  /// [tags] A mapping of tags to assign to the resource.
  /// [upgradedEngineMinorVersion] Field `upgraded_engine_minor_version` has been deprecated from provider version 1.248.0. New field `engine_minor_version` instead.
  /// [vpcId] The ID of the VPC for DBInstance.
  /// [vswitchId] The ID of vswitch for DBInstance.
  /// [zoneId] The ID of zone for DBInstance.
  DbInstanceArgs({
    pulumi.Output<String>? adminPass,
    required pulumi.Output<int> cacheSize,
    required pulumi.Output<String> dbInstanceClass,
    required pulumi.Output<String> dbInstanceDescription,
    pulumi.Output<List<DbInstanceDesiredSecurityIpList>>? desiredSecurityIpLists,
    pulumi.Output<bool>? enablePublicNetwork,
    pulumi.Output<String>? engineMinorVersion,
    required pulumi.Output<String> paymentType,
    pulumi.Output<String>? period,
    pulumi.Output<int>? periodTime,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? upgradedEngineMinorVersion,
    required pulumi.Output<String> vpcId,
    required pulumi.Output<String> vswitchId,
    required pulumi.Output<String> zoneId,
  }) :
      adminPass = pulumi.Input.asOptionalInput<String>(adminPass),
      cacheSize = pulumi.Input.asInput<int>(cacheSize),
      dbInstanceClass = pulumi.Input.asInput<String>(dbInstanceClass),
      dbInstanceDescription = pulumi.Input.asInput<String>(dbInstanceDescription),
      desiredSecurityIpLists = pulumi.Input.asOptionalInput<List<DbInstanceDesiredSecurityIpList>>(desiredSecurityIpLists),
      enablePublicNetwork = pulumi.Input.asOptionalInput<bool>(enablePublicNetwork),
      engineMinorVersion = pulumi.Input.asOptionalInput<String>(engineMinorVersion),
      paymentType = pulumi.Input.asInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<String>(period),
      periodTime = pulumi.Input.asOptionalInput<int>(periodTime),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      upgradedEngineMinorVersion = pulumi.Input.asOptionalInput<String>(upgradedEngineMinorVersion),
      vpcId = pulumi.Input.asInput<String>(vpcId),
      vswitchId = pulumi.Input.asInput<String>(vswitchId),
      zoneId = pulumi.Input.asInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPass': ?adminPass,
      'cacheSize': cacheSize,
      'dbInstanceClass': dbInstanceClass,
      'dbInstanceDescription': dbInstanceDescription,
      'desiredSecurityIpLists': ?pulumi.Input.mapOptionalInputValue<List<DbInstanceDesiredSecurityIpList>, List<Map<String, dynamic>>>(desiredSecurityIpLists, (value) => pulumi.Input.encodeList<DbInstanceDesiredSecurityIpList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enablePublicNetwork': ?enablePublicNetwork,
      'engineMinorVersion': ?engineMinorVersion,
      'paymentType': paymentType,
      'period': ?period,
      'periodTime': ?periodTime,
      'tags': ?tags,
      'upgradedEngineMinorVersion': ?upgradedEngineMinorVersion,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory DbInstanceArgs.fromMap(Map<String, dynamic> map) {
    return DbInstanceArgs(
      adminPass: map['adminPass'] == null ? null : pulumi.Output.create<String>(map['adminPass'] as String),
      cacheSize: pulumi.Output.create<int>(map['cacheSize'] as int),
      dbInstanceClass: pulumi.Output.create<String>(map['dbInstanceClass'] as String),
      dbInstanceDescription: pulumi.Output.create<String>(map['dbInstanceDescription'] as String),
      desiredSecurityIpLists: map['desiredSecurityIpLists'] == null ? null : pulumi.Output.create<List<DbInstanceDesiredSecurityIpList>>(pulumi.Input.decodeList<DbInstanceDesiredSecurityIpList>(map['desiredSecurityIpLists'], (value) => DbInstanceDesiredSecurityIpList.fromMap((value as Map).cast<String, dynamic>()))),
      enablePublicNetwork: map['enablePublicNetwork'] == null ? null : pulumi.Output.create<bool>(map['enablePublicNetwork'] as bool),
      engineMinorVersion: map['engineMinorVersion'] == null ? null : pulumi.Output.create<String>(map['engineMinorVersion'] as String),
      paymentType: pulumi.Output.create<String>(map['paymentType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<String>(map['period'] as String),
      periodTime: map['periodTime'] == null ? null : pulumi.Output.create<int>(map['periodTime'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      upgradedEngineMinorVersion: map['upgradedEngineMinorVersion'] == null ? null : pulumi.Output.create<String>(map['upgradedEngineMinorVersion'] as String),
      vpcId: pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

