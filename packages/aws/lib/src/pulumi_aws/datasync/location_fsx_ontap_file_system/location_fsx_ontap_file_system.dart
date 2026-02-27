import 'package:pulumi/pulumi.dart' as pulumi;
import '../location_fsx_ontap_file_system_protocol/location_fsx_ontap_file_system_protocol.dart';
import 'location_fsx_ontap_file_system_args.dart';

/// Resource for managing an AWS DataSync Location FSx Ontap File System.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.datasync.LocationFsxOntapFileSystem` using the `DataSync-ARN#FSx-ontap-svm-ARN`. For example:
///
/// ```sh
/// $ pulumi import aws:datasync/locationFsxOntapFileSystem:LocationFsxOntapFileSystem example arn:aws:datasync:us-west-2:123456789012:location/loc-12345678901234567#arn:aws:fsx:us-west-2:123456789012:storage-virtual-machine/svm-12345678abcdef123
/// ```
class LocationFsxOntapFileSystem extends pulumi.CustomResource {
  /// ARN of the DataSync Location for the FSx Ontap File System.
  late final pulumi.Output<String> arn;
  late final pulumi.Output<String> creationTime;

  /// ARN of the FSx Ontap File System.
  late final pulumi.Output<String> fsxFilesystemArn;

  /// The data transfer protocol that DataSync uses to access your Amazon FSx file system. See Protocol below.
  late final pulumi.Output<LocationFsxOntapFileSystemProtocol> protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The security groups that provide access to your file system's preferred subnet. The security groups must allow outbbound traffic on the following ports (depending on the protocol you use):
  /// * Network File System (NFS): TCP ports 111, 635, and 2049
  /// * Server Message Block (SMB): TCP port 445
  late final pulumi.Output<List<String>> securityGroupArns;

  /// The ARN of the SVM in your file system where you want to copy data to of from.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> storageVirtualMachineArn;

  /// Path to the file share in the SVM where you'll copy your data. You can specify a junction path (also known as a mount point), qtree path (for NFS file shares), or share name (for SMB file shares) (e.g. `/vol1`, `/vol1/tree1`, `share1`).
  late final pulumi.Output<String> subdirectory;

  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// URI of the FSx ONTAP file system location
  late final pulumi.Output<String> uri;

  LocationFsxOntapFileSystem(
    String name, {
    LocationFsxOntapFileSystemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datasync/locationFsxOntapFileSystem:LocationFsxOntapFileSystem',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.creationTime = registerOutput<String>('creationTime');
    this.fsxFilesystemArn = registerOutput<String>('fsxFilesystemArn');
    this.protocol =
        registerOutput<LocationFsxOntapFileSystemProtocol>('protocol');
    this.region = registerOutput<String>('region');
    this.securityGroupArns = registerOutput<List<String>>('securityGroupArns');
    this.storageVirtualMachineArn =
        registerOutput<String>('storageVirtualMachineArn');
    this.subdirectory = registerOutput<String>('subdirectory');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.uri = registerOutput<String>('uri');
  }
}
