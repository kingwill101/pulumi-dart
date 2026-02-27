import 'package:pulumi/pulumi.dart' hide Config;
import 'snapshot_args.dart';

/// Takes a snapshot of a boot volume. Returns INVALID_ARGUMENT if called for a non-boot volume.
class Snapshot extends CustomResource {
  /// The creation time of the snapshot.
  late final Output<String> createTime;

  /// The description of the snapshot.
  late final Output<String> description;
  late final Output<String> location;

  /// The name of the snapshot.
  late final Output<String> name;
  late final Output<String> project;

  /// The name of the volume which this snapshot belongs to.
  late final Output<String> storageVolume;

  /// The type of the snapshot which indicates whether it was scheduled or manual/ad-hoc.
  late final Output<String> type;
  late final Output<String> volumeId;

  Snapshot(
    String name, {
    SnapshotArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:baremetalsolution/v2:Snapshot',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
