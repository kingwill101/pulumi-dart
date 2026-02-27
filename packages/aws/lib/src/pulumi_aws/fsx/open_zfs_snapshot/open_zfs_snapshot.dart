import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_zfs_snapshot_args.dart';

/// Manages an Amazon FSx for OpenZFS volume.
/// See the [FSx OpenZFS User Guide](https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/what-is-fsx.html) for more information.
///
/// ## Example Usage
///
/// ### Root volume Example
///
///
///
/// ### Child volume Example
///
///
///
/// ## Import
///
/// Using `pulumi import`, import FSx OpenZFS snapshot using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:fsx/openZfsSnapshot:OpenZfsSnapshot example fs-543ab12b1ca672f33
/// ```
class OpenZfsSnapshot extends pulumi.CustomResource {
  /// Amazon Resource Name of the snapshot.
  late final pulumi.Output<String> arn;
  late final pulumi.Output<String> creationTime;

  /// The name of the Snapshot. You can use a maximum of 203 alphanumeric characters plus either _ or -  or : or . for the name.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the file system. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set `copy_tags_to_backups` to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The ID of the volume to snapshot. This can be the root volume or a child volume.
  late final pulumi.Output<String> volumeId;

  OpenZfsSnapshot(
    String name, {
    OpenZfsSnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fsx/openZfsSnapshot:OpenZfsSnapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.creationTime = registerOutput<String>('creationTime');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.volumeId = registerOutput<String>('volumeId');
  }
}
