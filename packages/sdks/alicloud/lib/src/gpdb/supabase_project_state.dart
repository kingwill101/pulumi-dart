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
  const SupabaseProjectState({
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
      accountPassword: (() { final guardedValue = map['accountPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskPerformanceLevel: (() { final guardedValue = map['diskPerformanceLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectName: (() { final guardedValue = map['projectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectSpec: (() { final guardedValue = map['projectSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityIpLists: (() { final guardedValue = map['securityIpLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageSize: (() { final guardedValue = map['storageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

