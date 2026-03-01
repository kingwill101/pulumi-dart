// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_instance_security_ip_group.dart';

/// {@template pulumi_mongodb_serverless_instance_serverless_instance_args_doc}
/// The set of arguments for ServerlessInstance.
/// {@endtemplate}
/// {@macro pulumi_mongodb_serverless_instance_serverless_instance_args_doc}
class ServerlessInstanceArgs {
  /// The password of the database logon account.
  /// * The password length is `8` to `32` bits.
  /// * The password consists of at least any three of uppercase letters, lowercase letters, numbers, and special characters. The special character is `!#$%^&*()_+-=`. The MongoDB Serverless instance provides a default database login account. This account cannot be modified. You can only set or modify the password for this account.
  final pulumi.Input<String> accountPassword;
  /// Set whether the instance is automatically renewed.
  final pulumi.Input<bool>? autoRenew;
  /// The I/O throughput consumed by the instance. Valid values: `100` to `8000`.
  final pulumi.Input<int> capacityUnit;
  /// The db instance description.
  final pulumi.Input<String>? dbInstanceDescription;
  /// The db instance storage. Valid values: `1` to `100`.
  final pulumi.Input<int> dbInstanceStorage;
  /// The database engine of the instance. Valid values: `MongoDB`.
  final pulumi.Input<String>? engine;
  /// The database version number. Valid values: `4.2`.
  final pulumi.Input<String> engineVersion;
  /// The end time of the maintenance window. Specify the time in the `HH:mmZ` format. The time must be in UTC. **NOTE:** The difference between the start time and end time must be one hour. For example, if `maintain_start_time` is `01:00Z`, `maintain_end_time` must be `02:00Z`.
  final pulumi.Input<String>? maintainEndTime;
  /// The start time of the maintenance window. Specify the time in the `HH:mmZ` format. The time must be in UTC.
  final pulumi.Input<String>? maintainStartTime;
  /// The purchase duration of the instance, in months. Valid values: `1` to `9`, `12`, `24`, `36`, `60`.
  final pulumi.Input<int>? period;
  /// The period price type. Valid values: `Day`, `Month`.
  final pulumi.Input<String>? periodPriceType;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// An array that consists of the information of IP whitelists.
  final pulumi.Input<List<ServerlessInstanceSecurityIpGroup>>? securityIpGroups;
  /// The storage engine used by the instance. Valid values: `WiredTiger`.
  final pulumi.Input<String>? storageEngine;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the VPC network.
  final pulumi.Input<String> vpcId;
  /// The of the vswitch.
  final pulumi.Input<String> vswitchId;
  /// The ID of the zone. Use this parameter to specify the zone created by the instance.
  final pulumi.Input<String> zoneId;

  /// Creates a new [ServerlessInstanceArgs].
  /// [accountPassword] The password of the database logon account.
  /// [autoRenew] Set whether the instance is automatically renewed.
  /// [capacityUnit] The I/O throughput consumed by the instance. Valid values: `100` to `8000`.
  /// [dbInstanceDescription] The db instance description.
  /// [dbInstanceStorage] The db instance storage. Valid values: `1` to `100`.
  /// [engine] The database engine of the instance. Valid values: `MongoDB`.
  /// [engineVersion] The database version number. Valid values: `4.2`.
  /// [maintainEndTime] The end time of the maintenance window. Specify the time in the `HH:mmZ` format. The time must be in UTC. **NOTE:** The difference between the start time and end time must be one hour. For example, if `maintain_start_time` is `01:00Z`, `maintain_end_time` must be `02:00Z`.
  /// [maintainStartTime] The start time of the maintenance window. Specify the time in the `HH:mmZ` format. The time must be in UTC.
  /// [period] The purchase duration of the instance, in months. Valid values: `1` to `9`, `12`, `24`, `36`, `60`.
  /// [periodPriceType] The period price type. Valid values: `Day`, `Month`.
  /// [resourceGroupId] The ID of the resource group.
  /// [securityIpGroups] An array that consists of the information of IP whitelists.
  /// [storageEngine] The storage engine used by the instance. Valid values: `WiredTiger`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vpcId] The ID of the VPC network.
  /// [vswitchId] The of the vswitch.
  /// [zoneId] The ID of the zone. Use this parameter to specify the zone created by the instance.
  ServerlessInstanceArgs({
    required String accountPassword,
    bool? autoRenew,
    required int capacityUnit,
    String? dbInstanceDescription,
    required int dbInstanceStorage,
    String? engine,
    required String engineVersion,
    String? maintainEndTime,
    String? maintainStartTime,
    int? period,
    String? periodPriceType,
    String? resourceGroupId,
    List<ServerlessInstanceSecurityIpGroup>? securityIpGroups,
    String? storageEngine,
    Map<String, String>? tags,
    required String vpcId,
    required String vswitchId,
    required String zoneId,
  }) :
      accountPassword = pulumi.Input.asInput<String>(accountPassword),
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      capacityUnit = pulumi.Input.asInput<int>(capacityUnit),
      dbInstanceDescription = pulumi.Input.asOptionalInput<String>(dbInstanceDescription),
      dbInstanceStorage = pulumi.Input.asInput<int>(dbInstanceStorage),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineVersion = pulumi.Input.asInput<String>(engineVersion),
      maintainEndTime = pulumi.Input.asOptionalInput<String>(maintainEndTime),
      maintainStartTime = pulumi.Input.asOptionalInput<String>(maintainStartTime),
      period = pulumi.Input.asOptionalInput<int>(period),
      periodPriceType = pulumi.Input.asOptionalInput<String>(periodPriceType),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      securityIpGroups = pulumi.Input.asOptionalInput<List<ServerlessInstanceSecurityIpGroup>>(securityIpGroups),
      storageEngine = pulumi.Input.asOptionalInput<String>(storageEngine),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asInput<String>(vpcId),
      vswitchId = pulumi.Input.asInput<String>(vswitchId),
      zoneId = pulumi.Input.asInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountPassword': accountPassword,
      'autoRenew': ?autoRenew,
      'capacityUnit': capacityUnit,
      'dbInstanceDescription': ?dbInstanceDescription,
      'dbInstanceStorage': dbInstanceStorage,
      'engine': ?engine,
      'engineVersion': engineVersion,
      'maintainEndTime': ?maintainEndTime,
      'maintainStartTime': ?maintainStartTime,
      'period': ?period,
      'periodPriceType': ?periodPriceType,
      'resourceGroupId': ?resourceGroupId,
      'securityIpGroups': ?pulumi.Input.mapOptionalInputValue<List<ServerlessInstanceSecurityIpGroup>, List<Map<String, dynamic>>>(securityIpGroups, (value) => pulumi.Input.encodeList<ServerlessInstanceSecurityIpGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageEngine': ?storageEngine,
      'tags': ?tags,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory ServerlessInstanceArgs.fromMap(Map<String, dynamic> map) {
    return ServerlessInstanceArgs(
      accountPassword: map['accountPassword'] as String,
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      capacityUnit: map['capacityUnit'] as int,
      dbInstanceDescription: map['dbInstanceDescription'] == null ? null : map['dbInstanceDescription'] as String,
      dbInstanceStorage: map['dbInstanceStorage'] as int,
      engine: map['engine'] == null ? null : map['engine'] as String,
      engineVersion: map['engineVersion'] as String,
      maintainEndTime: map['maintainEndTime'] == null ? null : map['maintainEndTime'] as String,
      maintainStartTime: map['maintainStartTime'] == null ? null : map['maintainStartTime'] as String,
      period: map['period'] == null ? null : map['period'] as int,
      periodPriceType: map['periodPriceType'] == null ? null : map['periodPriceType'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      securityIpGroups: map['securityIpGroups'] == null ? null : pulumi.Input.decodeList<ServerlessInstanceSecurityIpGroup>(map['securityIpGroups'], (value) => ServerlessInstanceSecurityIpGroup.fromMap((value as Map).cast<String, dynamic>())),
      storageEngine: map['storageEngine'] == null ? null : map['storageEngine'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

