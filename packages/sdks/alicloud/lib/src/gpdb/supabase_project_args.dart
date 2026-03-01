// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gpdb_supabase_project_supabase_project_args_doc}
/// The set of arguments for SupabaseProject.
/// {@endtemplate}
/// {@macro pulumi_gpdb_supabase_project_supabase_project_args_doc}
class SupabaseProjectArgs {
  /// The password for the initial account.
  /// - Consists of three or more of uppercase letters, lowercase letters, numbers, and special characters.
  /// - Support for special characters:! @#$%^& *()_+-=
  /// - Length is 8~32 characters.
  final pulumi.Input<String> accountPassword;
  /// cloud disk performance level
  final pulumi.Input<String>? diskPerformanceLevel;
  /// The project name. The naming rules are as follows:
  /// - 1~128 characters in length.
  /// - Can only contain English letters, numbers, dashes (-) and underscores (_).
  /// - Must begin with an English letter or an underscore (_).
  final pulumi.Input<String> projectName;
  /// The performance level of the Supabase instance.
  final pulumi.Input<String> projectSpec;
  /// The IP address whitelist.
  final pulumi.Input<List<String>> securityIpLists;
  /// The storage capacity of the instance. Unit: GB.
  final pulumi.Input<int>? storageSize;
  /// The VPC ID.
  final pulumi.Input<String> vpcId;
  /// The vSwitch ID.
  final pulumi.Input<String> vswitchId;
  /// The Zone ID.
  final pulumi.Input<String> zoneId;

  /// Creates a new [SupabaseProjectArgs].
  /// [accountPassword] The password for the initial account.
  /// [diskPerformanceLevel] cloud disk performance level
  /// [projectName] The project name. The naming rules are as follows:
  /// [projectSpec] The performance level of the Supabase instance.
  /// [securityIpLists] The IP address whitelist.
  /// [storageSize] The storage capacity of the instance. Unit: GB.
  /// [vpcId] The VPC ID.
  /// [vswitchId] The vSwitch ID.
  /// [zoneId] The Zone ID.
  SupabaseProjectArgs({
    required pulumi.Output<String> accountPassword,
    pulumi.Output<String>? diskPerformanceLevel,
    required pulumi.Output<String> projectName,
    required pulumi.Output<String> projectSpec,
    required pulumi.Output<List<String>> securityIpLists,
    pulumi.Output<int>? storageSize,
    required pulumi.Output<String> vpcId,
    required pulumi.Output<String> vswitchId,
    required pulumi.Output<String> zoneId,
  }) :
      accountPassword = pulumi.Input.asInput<String>(accountPassword),
      diskPerformanceLevel = pulumi.Input.asOptionalInput<String>(diskPerformanceLevel),
      projectName = pulumi.Input.asInput<String>(projectName),
      projectSpec = pulumi.Input.asInput<String>(projectSpec),
      securityIpLists = pulumi.Input.asInput<List<String>>(securityIpLists),
      storageSize = pulumi.Input.asOptionalInput<int>(storageSize),
      vpcId = pulumi.Input.asInput<String>(vpcId),
      vswitchId = pulumi.Input.asInput<String>(vswitchId),
      zoneId = pulumi.Input.asInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountPassword': accountPassword,
      'diskPerformanceLevel': ?diskPerformanceLevel,
      'projectName': projectName,
      'projectSpec': projectSpec,
      'securityIpLists': securityIpLists,
      'storageSize': ?storageSize,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory SupabaseProjectArgs.fromMap(Map<String, dynamic> map) {
    return SupabaseProjectArgs(
      accountPassword: pulumi.Output.create<String>(map['accountPassword'] as String),
      diskPerformanceLevel: map['diskPerformanceLevel'] == null ? null : pulumi.Output.create<String>(map['diskPerformanceLevel'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      projectSpec: pulumi.Output.create<String>(map['projectSpec'] as String),
      securityIpLists: pulumi.Output.create<List<String>>((map['securityIpLists'] as List).cast<String>()),
      storageSize: map['storageSize'] == null ? null : pulumi.Output.create<int>(map['storageSize'] as int),
      vpcId: pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

