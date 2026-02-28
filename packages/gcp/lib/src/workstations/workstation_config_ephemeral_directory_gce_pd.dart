// ignore_for_file: unused_element, unnecessary_cast

class WorkstationConfigEphemeralDirectoryGcePd {
  /// Type of the disk to use. Defaults to `"pd-standard"`.
  final String? diskType;

  /// Whether the disk is read only. If true, the disk may be shared by multiple VMs and `sourceSnapshot` must be set.
  final bool? readOnly;

  /// Name of the disk image to use as the source for the disk.
  /// Must be empty `sourceSnapshot` is set.
  /// Updating `sourceImage` will update content in the ephemeral directory after the workstation is restarted.
  final String? sourceImage;

  /// Name of the snapshot to use as the source for the disk.
  /// Must be empty if `sourceImage` is set.
  /// Must be empty if `read_only` is false.
  /// Updating `source_snapshot` will update content in the ephemeral directory after the workstation is restarted.
  final String? sourceSnapshot;

  /// Creates a new [WorkstationConfigEphemeralDirectoryGcePd].
  /// [diskType] Type of the disk to use. Defaults to `"pd-standard"`.
  /// [readOnly] Whether the disk is read only. If true, the disk may be shared by multiple VMs and `sourceSnapshot` must be set.
  /// [sourceImage] Name of the disk image to use as the source for the disk.
  /// [sourceSnapshot] Name of the snapshot to use as the source for the disk.
  WorkstationConfigEphemeralDirectoryGcePd({
    this.diskType,
    this.readOnly,
    this.sourceImage,
    this.sourceSnapshot,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final diskTypeValue = diskType;
    if (diskTypeValue != null) {
      map['diskType'] = diskTypeValue;
    }
    final readOnlyValue = readOnly;
    if (readOnlyValue != null) {
      map['readOnly'] = readOnlyValue;
    }
    final sourceImageValue = sourceImage;
    if (sourceImageValue != null) {
      map['sourceImage'] = sourceImageValue;
    }
    final sourceSnapshotValue = sourceSnapshot;
    if (sourceSnapshotValue != null) {
      map['sourceSnapshot'] = sourceSnapshotValue;
    }
    return map;
  }

  factory WorkstationConfigEphemeralDirectoryGcePd.fromMap(
      Map<String, dynamic> map) {
    return WorkstationConfigEphemeralDirectoryGcePd(
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      sourceImage:
          map['sourceImage'] == null ? null : map['sourceImage'] as String,
      sourceSnapshot: map['sourceSnapshot'] == null
          ? null
          : map['sourceSnapshot'] as String,
    );
  }
}
