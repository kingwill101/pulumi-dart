import 'package:pulumi/pulumi.dart';
import '../access_point_posix_user/access_point_posix_user.dart';
import '../access_point_root_directory/access_point_root_directory.dart';
import 'access_point_args.dart';

/// Provides an Elastic File System (EFS) access point.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import the EFS access points using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:efs/accessPoint:AccessPoint test fsap-52a643fb
/// ```
class AccessPoint extends CustomResource {
  /// ARN of the access point.
  late final Output<String> arn;

  /// ARN of the file system.
  late final Output<String> fileSystemArn;

  /// ID of the file system for which the access point is intended.
  late final Output<String> fileSystemId;
  late final Output<String> ownerId;

  /// Operating system user and group applied to all file system requests made using the access point. Detailed below.
  late final Output<AccessPointPosixUser?> posixUser;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Directory on the Amazon EFS file system that the access point provides access to. Detailed below.
  late final Output<AccessPointRootDirectory> rootDirectory;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  AccessPoint(
    String name, {
    AccessPointArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:efs/accessPoint:AccessPoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.fileSystemArn = registerOutput<String>('fileSystemArn');
    this.fileSystemId = registerOutput<String>('fileSystemId');
    this.ownerId = registerOutput<String>('ownerId');
    this.posixUser = registerOutput<AccessPointPosixUser?>('posixUser');
    this.region = registerOutput<String>('region');
    this.rootDirectory =
        registerOutput<AccessPointRootDirectory>('rootDirectory');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
