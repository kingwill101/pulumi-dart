import 'package:pulumi/pulumi.dart' as pulumi;
import '../nfs_location_mount_options/nfs_location_mount_options.dart';
import '../nfs_location_on_prem_config/nfs_location_on_prem_config.dart';
import 'nfs_location_args.dart';

/// Manages an NFS Location within AWS DataSync.
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
/// - `arn` (String) Amazon Resource Name (ARN) of the DataSync NFS location.
///
///
/// Using `pulumi import`, import `aws.datasync.NfsLocation` using the DataSync Task Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:datasync/nfsLocation:NfsLocation example arn:aws:datasync:us-east-1:123456789012:location/loc-12345678901234567
/// ```
class NfsLocation extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the DataSync Location.
  late final pulumi.Output<String> arn;

  /// Configuration block containing mount options used by DataSync to access the NFS Server.
  late final pulumi.Output<NfsLocationMountOptions?> mountOptions;

  /// Configuration block containing information for connecting to the NFS File System.
  late final pulumi.Output<NfsLocationOnPremConfig> onPremConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Specifies the IP address or DNS name of the NFS server. The DataSync Agent(s) use this to mount the NFS server.
  late final pulumi.Output<String> serverHostname;

  /// Subdirectory to perform actions as source or destination. Should be exported by the NFS server.
  late final pulumi.Output<String> subdirectory;

  /// Key-value pairs of resource tags to assign to the DataSync Location. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<String> uri;

  NfsLocation(
    String name, {
    NfsLocationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datasync/nfsLocation:NfsLocation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.mountOptions =
        registerOutput<NfsLocationMountOptions?>('mountOptions');
    this.onPremConfig = registerOutput<NfsLocationOnPremConfig>('onPremConfig');
    this.region = registerOutput<String>('region');
    this.serverHostname = registerOutput<String>('serverHostname');
    this.subdirectory = registerOutput<String>('subdirectory');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.uri = registerOutput<String>('uri');
  }
}
