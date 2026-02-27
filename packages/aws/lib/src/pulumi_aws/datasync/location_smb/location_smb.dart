import 'package:pulumi/pulumi.dart';
import '../location_smb_mount_options/location_smb_mount_options.dart';
import 'location_smb_args.dart';

/// Manages a SMB Location within AWS DataSync.
///
/// > **NOTE:** The DataSync Agents must be available before creating this resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the DataSync SMB location.
///
///
/// Using `pulumi import`, import `aws.datasync.LocationSmb` using the Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:datasync/locationSmb:LocationSmb example arn:aws:datasync:us-east-1:123456789012:location/loc-12345678901234567
/// ```
class LocationSmb extends CustomResource {
  /// A list of DataSync Agent ARNs with which this location will be associated.
  late final Output<List<String>> agentArns;

  /// Amazon Resource Name (ARN) of the DataSync Location.
  late final Output<String> arn;

  /// The name of the Windows domain the SMB server belongs to.
  late final Output<String> domain;

  /// Configuration block containing mount options used by DataSync to access the SMB Server. Can be `AUTOMATIC`, `SMB2`, or `SMB3`.
  late final Output<LocationSmbMountOptions?> mountOptions;

  /// The password of the user who can mount the share and has file permissions in the SMB.
  late final Output<String> password;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies the IP address or DNS name of the SMB server. The DataSync Agent(s) use this to mount the SMB share.
  late final Output<String> serverHostname;

  /// Subdirectory to perform actions as source or destination. Should be exported by the NFS server.
  late final Output<String> subdirectory;

  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<String> uri;

  /// The user who can mount the share and has file and folder permissions in the SMB share.
  late final Output<String> user;

  LocationSmb(
    String name, {
    LocationSmbArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:datasync/locationSmb:LocationSmb',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.agentArns = registerOutput<List<String>>('agentArns');
    this.arn = registerOutput<String>('arn');
    this.domain = registerOutput<String>('domain');
    this.mountOptions =
        registerOutput<LocationSmbMountOptions?>('mountOptions');
    this.password = registerOutput<String>('password');
    this.region = registerOutput<String>('region');
    this.serverHostname = registerOutput<String>('serverHostname');
    this.subdirectory = registerOutput<String>('subdirectory');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.uri = registerOutput<String>('uri');
    this.user = registerOutput<String>('user');
  }
}
