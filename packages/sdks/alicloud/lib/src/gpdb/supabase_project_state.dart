// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SupabaseProject resources.
class SupabaseProjectState {
  /// The password for the initial account.
  /// - Consists of three or more of uppercase letters, lowercase letters, numbers, and special characters.
  /// - Support for special characters:! @#$%^& *()_+-=
  /// - Length is 8~32 characters.
  final pulumi.Input<String>? accountPassword;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// cloud disk performance level
  final pulumi.Input<String>? diskPerformanceLevel;
  /// The project name. The naming rules are as follows:
  /// - 1~128 characters in length.
  /// - Can only contain English letters, numbers, dashes (-) and underscores (_).
  /// - Must begin with an English letter or an underscore (_).
  final pulumi.Input<String>? projectName;
  /// The performance level of the Supabase instance.
  final pulumi.Input<String>? projectSpec;
  /// The region ID.
  final pulumi.Input<String>? regionId;
  /// The IP address whitelist.
  final pulumi.Input<List<String>>? securityIpLists;
  /// The status of the Supabase instance.
  final pulumi.Input<String>? status;
  /// The storage capacity of the instance. Unit: GB.
  final pulumi.Input<int>? storageSize;
  /// The VPC ID.
  final pulumi.Input<String>? vpcId;
  /// The vSwitch ID.
  final pulumi.Input<String>? vswitchId;
  /// The Zone ID.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [SupabaseProjectState].
  /// [accountPassword] The password for the initial account.
  /// [createTime] The creation time of the resource
  /// [diskPerformanceLevel] cloud disk performance level
  /// [projectName] The project name. The naming rules are as follows:
  /// [projectSpec] The performance level of the Supabase instance.
  /// [regionId] The region ID.
  /// [securityIpLists] The IP address whitelist.
  /// [status] The status of the Supabase instance.
  /// [storageSize] The storage capacity of the instance. Unit: GB.
  /// [vpcId] The VPC ID.
  /// [vswitchId] The vSwitch ID.
  /// [zoneId] The Zone ID.
  SupabaseProjectState({
    pulumi.Output<String>? accountPassword,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? diskPerformanceLevel,
    pulumi.Output<String>? projectName,
    pulumi.Output<String>? projectSpec,
    pulumi.Output<String>? regionId,
    pulumi.Output<List<String>>? securityIpLists,
    pulumi.Output<String>? status,
    pulumi.Output<int>? storageSize,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<String>? zoneId,
  }) :
      accountPassword = pulumi.Input.asOptionalInput<String>(accountPassword),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      diskPerformanceLevel = pulumi.Input.asOptionalInput<String>(diskPerformanceLevel),
      projectName = pulumi.Input.asOptionalInput<String>(projectName),
      projectSpec = pulumi.Input.asOptionalInput<String>(projectSpec),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      securityIpLists = pulumi.Input.asOptionalInput<List<String>>(securityIpLists),
      status = pulumi.Input.asOptionalInput<String>(status),
      storageSize = pulumi.Input.asOptionalInput<int>(storageSize),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountPassword': ?accountPassword,
      'createTime': ?createTime,
      'diskPerformanceLevel': ?diskPerformanceLevel,
      'projectName': ?projectName,
      'projectSpec': ?projectSpec,
      'regionId': ?regionId,
      'securityIpLists': ?securityIpLists,
      'status': ?status,
      'storageSize': ?storageSize,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory SupabaseProjectState.fromMap(Map<String, dynamic> map) {
    return SupabaseProjectState(
      accountPassword: map['accountPassword'] == null ? null : pulumi.Output.create<String>(map['accountPassword'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      diskPerformanceLevel: map['diskPerformanceLevel'] == null ? null : pulumi.Output.create<String>(map['diskPerformanceLevel'] as String),
      projectName: map['projectName'] == null ? null : pulumi.Output.create<String>(map['projectName'] as String),
      projectSpec: map['projectSpec'] == null ? null : pulumi.Output.create<String>(map['projectSpec'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      securityIpLists: map['securityIpLists'] == null ? null : pulumi.Output.create<List<String>>((map['securityIpLists'] as List).cast<String>()),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      storageSize: map['storageSize'] == null ? null : pulumi.Output.create<int>(map['storageSize'] as int),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

