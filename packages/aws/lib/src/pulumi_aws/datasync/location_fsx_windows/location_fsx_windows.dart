import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_fsx_windows_args.dart';

/// Manages an AWS DataSync FSx Windows Location.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.datasync.LocationFsxWindows` using the `DataSync-ARN#FSx-Windows-ARN`. For example:
///
/// ```sh
/// $ pulumi import aws:datasync/locationFsxWindows:LocationFsxWindows example arn:aws:datasync:us-west-2:123456789012:location/loc-12345678901234567#arn:aws:fsx:us-west-2:476956259333:file-system/fs-08e04cd442c1bb94a
/// ```
class LocationFsxWindows extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the DataSync Location.
  late final pulumi.Output<String> arn;

  /// The time that the FSx for Windows location was created.
  late final pulumi.Output<String> creationTime;

  /// The name of the Windows domain that the FSx for Windows server belongs to.
  late final pulumi.Output<String?> domain;

  /// The Amazon Resource Name (ARN) for the FSx for Windows file system.
  late final pulumi.Output<String> fsxFilesystemArn;

  /// The password of the user who has the permissions to access files and folders in the FSx for Windows file system.
  late final pulumi.Output<String> password;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Names (ARNs) of the security groups that are to use to configure the FSx for Windows file system.
  late final pulumi.Output<List<String>> securityGroupArns;

  /// Subdirectory to perform actions as source or destination.
  late final pulumi.Output<String> subdirectory;

  /// Key-value pairs of resource tags to assign to the DataSync Location. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The URL of the FSx for Windows location that was described.
  late final pulumi.Output<String> uri;

  /// The user who has the permissions to access files and folders in the FSx for Windows file system.
  late final pulumi.Output<String> user;

  LocationFsxWindows(
    String name, {
    LocationFsxWindowsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datasync/locationFsxWindows:LocationFsxWindows',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.creationTime = registerOutput<String>('creationTime');
    this.domain = registerOutput<String?>('domain');
    this.fsxFilesystemArn = registerOutput<String>('fsxFilesystemArn');
    this.password = registerOutput<String>('password');
    this.region = registerOutput<String>('region');
    this.securityGroupArns = registerOutput<List<String>>('securityGroupArns');
    this.subdirectory = registerOutput<String>('subdirectory');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.uri = registerOutput<String>('uri');
    this.user = registerOutput<String>('user');
  }
}
