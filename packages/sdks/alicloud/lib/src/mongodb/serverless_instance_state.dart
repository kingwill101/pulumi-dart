// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_instance_security_ip_group.dart';

/// Input properties used for looking up and filtering ServerlessInstance resources.
class ServerlessInstanceState {
  /// The password of the database logon account.
  /// * The password length is `8` to `32` bits.
  /// * The password consists of at least any three of uppercase letters, lowercase letters, numbers, and special characters. The special character is `!#$%^&*()_+-=`. The MongoDB Serverless instance provides a default database login account. This account cannot be modified. You can only set or modify the password for this account.
  final pulumi.Input<String>? accountPassword;
  /// Set whether the instance is automatically renewed.
  final pulumi.Input<bool>? autoRenew;
  /// The I/O throughput consumed by the instance. Valid values: `100` to `8000`.
  final pulumi.Input<int>? capacityUnit;
  /// The db instance description.
  final pulumi.Input<String>? dbInstanceDescription;
  /// The db instance storage. Valid values: `1` to `100`.
  final pulumi.Input<int>? dbInstanceStorage;
  /// The database engine of the instance. Valid values: `MongoDB`.
  final pulumi.Input<String>? engine;
  /// The database version number. Valid values: `4.2`.
  final pulumi.Input<String>? engineVersion;
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
  /// The instance status. For more information, see the instance Status Table.
  final pulumi.Input<String>? status;
  /// The storage engine used by the instance. Valid values: `WiredTiger`.
  final pulumi.Input<String>? storageEngine;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the VPC network.
  final pulumi.Input<String>? vpcId;
  /// The of the vswitch.
  final pulumi.Input<String>? vswitchId;
  /// The ID of the zone. Use this parameter to specify the zone created by the instance.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [ServerlessInstanceState].
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
  /// [status] The instance status. For more information, see the instance Status Table.
  /// [storageEngine] The storage engine used by the instance. Valid values: `WiredTiger`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vpcId] The ID of the VPC network.
  /// [vswitchId] The of the vswitch.
  /// [zoneId] The ID of the zone. Use this parameter to specify the zone created by the instance.
  ServerlessInstanceState({
    pulumi.Output<String>? accountPassword,
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<int>? capacityUnit,
    pulumi.Output<String>? dbInstanceDescription,
    pulumi.Output<int>? dbInstanceStorage,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<String>? maintainEndTime,
    pulumi.Output<String>? maintainStartTime,
    pulumi.Output<int>? period,
    pulumi.Output<String>? periodPriceType,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<List<ServerlessInstanceSecurityIpGroup>>? securityIpGroups,
    pulumi.Output<String>? status,
    pulumi.Output<String>? storageEngine,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<String>? zoneId,
  }) :
      accountPassword = pulumi.Input.asOptionalInput<String>(accountPassword),
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      capacityUnit = pulumi.Input.asOptionalInput<int>(capacityUnit),
      dbInstanceDescription = pulumi.Input.asOptionalInput<String>(dbInstanceDescription),
      dbInstanceStorage = pulumi.Input.asOptionalInput<int>(dbInstanceStorage),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      maintainEndTime = pulumi.Input.asOptionalInput<String>(maintainEndTime),
      maintainStartTime = pulumi.Input.asOptionalInput<String>(maintainStartTime),
      period = pulumi.Input.asOptionalInput<int>(period),
      periodPriceType = pulumi.Input.asOptionalInput<String>(periodPriceType),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      securityIpGroups = pulumi.Input.asOptionalInput<List<ServerlessInstanceSecurityIpGroup>>(securityIpGroups),
      status = pulumi.Input.asOptionalInput<String>(status),
      storageEngine = pulumi.Input.asOptionalInput<String>(storageEngine),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountPassword': ?accountPassword,
      'autoRenew': ?autoRenew,
      'capacityUnit': ?capacityUnit,
      'dbInstanceDescription': ?dbInstanceDescription,
      'dbInstanceStorage': ?dbInstanceStorage,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'maintainEndTime': ?maintainEndTime,
      'maintainStartTime': ?maintainStartTime,
      'period': ?period,
      'periodPriceType': ?periodPriceType,
      'resourceGroupId': ?resourceGroupId,
      'securityIpGroups': ?pulumi.Input.mapOptionalInputValue<List<ServerlessInstanceSecurityIpGroup>, List<Map<String, dynamic>>>(securityIpGroups, (value) => pulumi.Input.encodeList<ServerlessInstanceSecurityIpGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
      'storageEngine': ?storageEngine,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory ServerlessInstanceState.fromMap(Map<String, dynamic> map) {
    return ServerlessInstanceState(
      accountPassword: map['accountPassword'] == null ? null : pulumi.Output.create<String>(map['accountPassword'] as String),
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      capacityUnit: map['capacityUnit'] == null ? null : pulumi.Output.create<int>(map['capacityUnit'] as int),
      dbInstanceDescription: map['dbInstanceDescription'] == null ? null : pulumi.Output.create<String>(map['dbInstanceDescription'] as String),
      dbInstanceStorage: map['dbInstanceStorage'] == null ? null : pulumi.Output.create<int>(map['dbInstanceStorage'] as int),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      maintainEndTime: map['maintainEndTime'] == null ? null : pulumi.Output.create<String>(map['maintainEndTime'] as String),
      maintainStartTime: map['maintainStartTime'] == null ? null : pulumi.Output.create<String>(map['maintainStartTime'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      periodPriceType: map['periodPriceType'] == null ? null : pulumi.Output.create<String>(map['periodPriceType'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      securityIpGroups: map['securityIpGroups'] == null ? null : pulumi.Output.create<List<ServerlessInstanceSecurityIpGroup>>(pulumi.Input.decodeList<ServerlessInstanceSecurityIpGroup>(map['securityIpGroups'], (value) => ServerlessInstanceSecurityIpGroup.fromMap((value as Map).cast<String, dynamic>()))),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      storageEngine: map['storageEngine'] == null ? null : pulumi.Output.create<String>(map['storageEngine'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

