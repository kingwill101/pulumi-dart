// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for FileSystemPolicy.
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

  FileSystemPolicyArgs({
    this.bypassPolicyLockoutSafetyCheck,
    required this.fileSystemId,
    required this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bypassPolicyLockoutSafetyCheckValue = bypassPolicyLockoutSafetyCheck;
    if (bypassPolicyLockoutSafetyCheckValue != null) {
      map['bypassPolicyLockoutSafetyCheck'] =
          bypassPolicyLockoutSafetyCheckValue;
    }
    map['fileSystemId'] = fileSystemId;
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory FileSystemPolicyArgs.fromMap(Map<String, dynamic> map) {
    return FileSystemPolicyArgs(
      bypassPolicyLockoutSafetyCheck: pulumi.Input.asOptionalInput<bool>(
          map['bypassPolicyLockoutSafetyCheck']),
      fileSystemId: pulumi.Input.asInput<String>(map['fileSystemId']),
      policy: pulumi.Input.asInput<String>(map['policy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
