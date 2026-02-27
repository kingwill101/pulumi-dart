import 'package:pulumi/pulumi.dart' hide Config;
import 'snapshot_args5.dart';

/// Creates a snapshot.
/// Auto-naming is currently not supported for this resource.
class Snapshot5 extends CustomResource {
  /// The time when the snapshot was created.
  late final Output<String> createTime;

  /// A description of the snapshot with 2048 characters or less. Requests with longer descriptions will be rejected.
  late final Output<String> description;

  /// The amount of bytes needed to allocate a full copy of the snapshot content
  late final Output<String> filesystemUsedBytes;
  late final Output<String> instanceId;

  /// Resource labels to represent user provided metadata.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The resource name of the snapshot, in the format `projects/{project_id}/locations/{location_id}/instances/{instance_id}/snapshots/{snapshot_id}`.
  late final Output<String> name;
  late final Output<String> project;

  /// Required. The ID to use for the snapshot. The ID must be unique within the specified instance. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  late final Output<String> snapshotId;

  /// The snapshot state.
  late final Output<String> state;

  Snapshot5(
    String name, {
    SnapshotArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:file/v1:Snapshot',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
