// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for FileSystemPolicy.
class FileSystemPolicyArgs {
  /// A flag to indicate whether to bypass the <span pulumi-lang-nodejs="`aws.efs.FileSystemPolicy`" pulumi-lang-dotnet="`aws.efs.FileSystemPolicy`" pulumi-lang-go="`efs.FileSystemPolicy`" pulumi-lang-python="`efs.FileSystemPolicy`" pulumi-lang-yaml="`aws.efs.FileSystemPolicy`" pulumi-lang-java="`aws.efs.FileSystemPolicy`">`aws.efs.FileSystemPolicy`</span> lockout safety check. The policy lockout safety check determines whether the policy in the request will prevent the principal making the request will be locked out from making future `PutFileSystemPolicy` requests on the file system. Set <span pulumi-lang-nodejs="`bypassPolicyLockoutSafetyCheck`" pulumi-lang-dotnet="`BypassPolicyLockoutSafetyCheck`" pulumi-lang-go="`bypassPolicyLockoutSafetyCheck`" pulumi-lang-python="`bypass_policy_lockout_safety_check`" pulumi-lang-yaml="`bypassPolicyLockoutSafetyCheck`" pulumi-lang-java="`bypassPolicyLockoutSafetyCheck`">`bypass_policy_lockout_safety_check`</span> to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> only when you intend to prevent the principal that is making the request from making a subsequent `PutFileSystemPolicy` request on the file system. The default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? bypassPolicyLockoutSafetyCheck;

  /// The ID of the EFS file system.
  final Input<String> fileSystemId;

  /// The JSON formatted file system policy for the EFS file system. see [Docs](https://docs.aws.amazon.com/efs/latest/ug/access-control-overview.html#access-control-manage-access-intro-resource-policies) for more info.
  ///
  /// The following arguments are optional:
  final Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
      bypassPolicyLockoutSafetyCheck:
          Input.asOptionalInput<bool>(map['bypassPolicyLockoutSafetyCheck']),
      fileSystemId: Input.asInput<String>(map['fileSystemId']),
      policy: Input.asInput<String>(map['policy']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
