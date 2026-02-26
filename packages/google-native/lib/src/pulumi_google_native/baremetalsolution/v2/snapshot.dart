import 'package:pulumi/pulumi.dart';
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
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.storageVolume = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
    this.volumeId = Output.createUnknown<String>();
  }
}
