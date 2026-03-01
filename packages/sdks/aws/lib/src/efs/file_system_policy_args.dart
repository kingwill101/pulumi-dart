// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_efs_file_system_policy_file_system_policy_args_doc}
/// The set of arguments for FileSystemPolicy.
/// {@endtemplate}
/// {@macro pulumi_efs_file_system_policy_file_system_policy_args_doc}
class FileSystemPolicyArgs {
  /// A flag to indicate whether to bypass the `aws.efs.FileSystemPolicy` lockout safety check. The policy lockout safety check determines whether the policy in the request will prevent the principal making the request will be locked out from making future `PutFileSystemPolicy` requests on the file system. Set `bypass_policy_lockout_safety_check` to `true` only when you intend to prevent the principal that is making the request from making a subsequent `PutFileSystemPolicy` request on the file system. The default value is `false`.
  final pulumi.Input<bool>? bypassPolicyLockoutSafetyCheck;
  /// The ID of the EFS file system.
  final pulumi.Input<String> fileSystemId;
  /// The JSON formatted file system policy for the EFS file system. see [Docs](https://docs.aws.amazon.com/efs/latest/ug/access-control-overview.html#access-control-manage-access-intro-resource-policies) for more info.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [FileSystemPolicyArgs].
  /// [bypassPolicyLockoutSafetyCheck] A flag to indicate whether to bypass the `aws.efs.FileSystemPolicy` lockout safety check. The policy lockout safety check determines whether the policy in the request will prevent the principal making the request will be locked out from making future `PutFileSystemPolicy` requests on the file system. Set `bypass_policy_lockout_safety_check` to `true` only when you intend to prevent the principal that is making the request from making a subsequent `PutFileSystemPolicy` request on the file system. The default value is `false`.
  /// [fileSystemId] The ID of the EFS file system.
  /// [policy] The JSON formatted file system policy for the EFS file system. see [Docs](https://docs.aws.amazon.com/efs/latest/ug/access-control-overview.html#access-control-manage-access-intro-resource-policies) for more info.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  FileSystemPolicyArgs({
    pulumi.Output<bool>? bypassPolicyLockoutSafetyCheck,
    required pulumi.Output<String> fileSystemId,
    required pulumi.Output<String> policy,
    pulumi.Output<String>? region,
  }) :
      bypassPolicyLockoutSafetyCheck = pulumi.Input.asOptionalInput<bool>(bypassPolicyLockoutSafetyCheck),
      fileSystemId = pulumi.Input.asInput<String>(fileSystemId),
      policy = pulumi.Input.asInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypassPolicyLockoutSafetyCheck': ?bypassPolicyLockoutSafetyCheck,
      'fileSystemId': fileSystemId,
      'policy': policy,
      'region': ?region,
    };
  }

  factory FileSystemPolicyArgs.fromMap(Map<String, dynamic> map) {
    return FileSystemPolicyArgs(
      bypassPolicyLockoutSafetyCheck: map['bypassPolicyLockoutSafetyCheck'] == null ? null : pulumi.Output.create<bool>(map['bypassPolicyLockoutSafetyCheck'] as bool),
      fileSystemId: pulumi.Output.create<String>(map['fileSystemId'] as String),
      policy: pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

