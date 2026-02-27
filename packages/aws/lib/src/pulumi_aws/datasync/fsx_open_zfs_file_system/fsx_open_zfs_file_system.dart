import 'package:pulumi/pulumi.dart' as pulumi;
import '../fsx_open_zfs_file_system_protocol/fsx_open_zfs_file_system_protocol.dart';
import 'fsx_open_zfs_file_system_args.dart';

/// Manages an AWS DataSync FSx OpenZfs Location.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.datasync.FsxOpenZfsFileSystem` using the `DataSync-ARN#FSx-openzfs-ARN`. For example:
///
/// ```sh
/// $ pulumi import aws:datasync/fsxOpenZfsFileSystem:FsxOpenZfsFileSystem example arn:aws:datasync:us-west-2:123456789012:location/loc-12345678901234567#arn:aws:fsx:us-west-2:123456789012:file-system/fs-08e04cd442c1bb94a
/// ```
class FsxOpenZfsFileSystem extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the DataSync Location.
  late final pulumi.Output<String> arn;

  /// The time that the FSx for openzfs location was created.
  late final pulumi.Output<String> creationTime;

  /// The Amazon Resource Name (ARN) for the FSx for OpenZfs file system.
  late final pulumi.Output<String> fsxFilesystemArn;

  /// The type of protocol that DataSync uses to access your file system. See below.
  late final pulumi.Output<FsxOpenZfsFileSystemProtocol> protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Names (ARNs) of the security groups that are to use to configure the FSx for openzfs file system.
  late final pulumi.Output<List<String>> securityGroupArns;

  /// Subdirectory to perform actions as source or destination. Must start with `/fsx`.
  late final pulumi.Output<String> subdirectory;

  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The URL of the FSx for openzfs location that was described.
  late final pulumi.Output<String> uri;

  FsxOpenZfsFileSystem(
    String name, {
    FsxOpenZfsFileSystemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datasync/fsxOpenZfsFileSystem:FsxOpenZfsFileSystem',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.creationTime = registerOutput<String>('creationTime');
    this.fsxFilesystemArn = registerOutput<String>('fsxFilesystemArn');
    this.protocol = registerOutput<FsxOpenZfsFileSystemProtocol>('protocol');
    this.region = registerOutput<String>('region');
    this.securityGroupArns = registerOutput<List<String>>('securityGroupArns');
    this.subdirectory = registerOutput<String>('subdirectory');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.uri = registerOutput<String>('uri');
  }
}
