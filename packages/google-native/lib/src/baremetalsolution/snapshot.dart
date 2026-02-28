import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_args.dart';

/// Takes a snapshot of a boot volume. Returns INVALID_ARGUMENT if called for a non-boot volume.
class Snapshot extends pulumi.CustomResource {
  /// The creation time of the snapshot.
  late final pulumi.Output<String> createTime;

  /// The description of the snapshot.
  late final pulumi.Output<String> description;
  late final pulumi.Output<String> location;

  /// The name of the snapshot.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The name of the volume which this snapshot belongs to.
  late final pulumi.Output<String> storageVolume;

  /// The type of the snapshot which indicates whether it was scheduled or manual/ad-hoc.
  late final pulumi.Output<String> type;
  late final pulumi.Output<String> volumeId;

  /// Creates a new [Snapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Snapshot]. {@macro pulumi_baremetalsolution_v2_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Snapshot(
    String name, {
    SnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:baremetalsolution/v2:Snapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.storageVolume = registerOutput<String>('storageVolume');
    this.type = registerOutput<String>('type');
    this.volumeId = registerOutput<String>('volumeId');
  }
}
