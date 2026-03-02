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
    this.accountPassword,
    this.createTime,
    this.diskPerformanceLevel,
    this.projectName,
    this.projectSpec,
    this.regionId,
    this.securityIpLists,
    this.status,
    this.storageSize,
    this.vpcId,
    this.vswitchId,
    this.zoneId,
  });

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
      accountPassword: map['accountPassword'] == null ? null : (map['accountPassword'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      diskPerformanceLevel: map['diskPerformanceLevel'] == null ? null : (map['diskPerformanceLevel'] as String).input(),
      projectName: map['projectName'] == null ? null : (map['projectName'] as String).input(),
      projectSpec: map['projectSpec'] == null ? null : (map['projectSpec'] as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      securityIpLists: map['securityIpLists'] == null ? null : ((map['securityIpLists'] as List).cast<String>()).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      storageSize: map['storageSize'] == null ? null : (map['storageSize'] as int).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
    );
  }
}

