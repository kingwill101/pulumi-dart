import 'package:pulumi/pulumi.dart';
import 'file_system_policy_args.dart';

/// Provides an Elastic File System (EFS) File System Policy resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import the EFS file system policies using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:efs/fileSystemPolicy:FileSystemPolicy foo fs-6fa144c6
/// ```
class FileSystemPolicy extends CustomResource {
  /// A flag to indicate whether to bypass the `aws.efs.FileSystemPolicy` lockout safety check. The policy lockout safety check determines whether the policy in the request will prevent the principal making the request will be locked out from making future `PutFileSystemPolicy` requests on the file system. Set `bypass_policy_lockout_safety_check` to `true` only when you intend to prevent the principal that is making the request from making a subsequent `PutFileSystemPolicy` request on the file system. The default value is `false`.
  late final Output<bool?> bypassPolicyLockoutSafetyCheck;

  /// The ID of the EFS file system.
  late final Output<String> fileSystemId;

  /// The JSON formatted file system policy for the EFS file system. see [Docs](https://docs.aws.amazon.com/efs/latest/ug/access-control-overview.html#access-control-manage-access-intro-resource-policies) for more info.
  ///
  /// The following arguments are optional:
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  FileSystemPolicy(
    String name, {
    FileSystemPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:efs/fileSystemPolicy:FileSystemPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bypassPolicyLockoutSafetyCheck =
        registerOutput<bool?>('bypassPolicyLockoutSafetyCheck');
    this.fileSystemId = registerOutput<String>('fileSystemId');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
  }
}
