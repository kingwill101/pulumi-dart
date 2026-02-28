import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_args.dart';

/// Creates a snapshot.
/// Auto-naming is currently not supported for this resource.
class Snapshot extends pulumi.CustomResource {
  /// The time when the snapshot was created.
  late final pulumi.Output<String> createTime;
  /// A description of the snapshot with 2048 characters or less. Requests with longer descriptions will be rejected.
  late final pulumi.Output<String> description;
  /// The amount of bytes needed to allocate a full copy of the snapshot content
  late final pulumi.Output<String> filesystemUsedBytes;
  late final pulumi.Output<String> instanceId;
  /// Resource labels to represent user provided metadata.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// The resource name of the snapshot, in the format `projects/{project_id}/locations/{location_id}/instances/{instance_id}/snapshots/{snapshot_id}`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Required. The ID to use for the snapshot. The ID must be unique within the specified instance. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  late final pulumi.Output<String> snapshotId;
  /// The snapshot state.
  late final pulumi.Output<String> state;

  /// Creates a new [Snapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Snapshot]. {@macro pulumi_file_v1_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Snapshot(
    String name, {
    SnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:file/v1:Snapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.filesystemUsedBytes = registerOutput<String>('filesystemUsedBytes');
    this.instanceId = registerOutput<String>('instanceId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.snapshotId = registerOutput<String>('snapshotId');
    this.state = registerOutput<String>('state');
  }
}
