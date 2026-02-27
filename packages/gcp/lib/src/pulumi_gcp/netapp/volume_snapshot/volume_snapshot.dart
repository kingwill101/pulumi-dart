import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_snapshot_args.dart';

/// NetApp Volumes helps you manage your data usage with snapshots that can quickly restore lost data.
/// Snapshots are point-in-time versions of your volume's content. They are resources of volumes and are
/// instant captures of your data that consume space only for modified data. Because data changes over
/// time, snapshots usually consume more space as they get older.
/// NetApp Volumes volumes use just-in-time copy-on-write so that unmodified files in snapshots don't
/// consume any of the volume's capacity.
///
///
/// To get more information about VolumeSnapshot, see:
///
/// * [API documentation](https://cloud.google.com/netapp/volumes/docs/reference/rest/v1/projects.locations.volumes.snapshots)
/// * How-to Guides
/// * [Documentation](https://cloud.google.com/netapp/volumes/docs/configure-and-use/volume-snapshots/overview)
///
/// ## Example Usage
///
/// ### Volume Snapshot Create
///
///
///
///
/// ## Import
///
/// VolumeSnapshot can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/volumes/{{volume_name}}/snapshots/{{name}}`
///
/// * `{{project}}/{{location}}/{{volume_name}}/{{name}}`
///
/// * `{{location}}/{{volume_name}}/{{name}}`
///
/// When using the `pulumi import` command, VolumeSnapshot can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:netapp/volumeSnapshot:VolumeSnapshot default projects/{{project}}/locations/{{location}}/volumes/{{volume_name}}/snapshots/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/volumeSnapshot:VolumeSnapshot default {{project}}/{{location}}/{{volume_name}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/volumeSnapshot:VolumeSnapshot default {{location}}/{{volume_name}}/{{name}}
/// ```
class VolumeSnapshot extends pulumi.CustomResource {
  /// Description for the snapshot.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Name of the snapshot location. Snapshots are child resources of volumes and live in the same location.
  late final pulumi.Output<String> location;

  /// The name of the snapshot.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Storage used to store blocks unique to this snapshot.
  late final pulumi.Output<int> usedBytes;

  /// The name of the volume to create the snapshot in.
  late final pulumi.Output<String> volumeName;

  VolumeSnapshot(
    String name, {
    VolumeSnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:netapp/volumeSnapshot:VolumeSnapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.usedBytes = registerOutput<int>('usedBytes');
    this.volumeName = registerOutput<String>('volumeName');
  }
}
