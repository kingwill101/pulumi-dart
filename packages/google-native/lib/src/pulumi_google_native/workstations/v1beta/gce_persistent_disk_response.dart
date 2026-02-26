// ignore_for_file: unused_element, unnecessary_cast

/// An EphemeralDirectory is backed by a Compute Engine persistent disk.
class GcePersistentDiskResponse {
  /// Optional. Type of the disk to use. Defaults to `"pd-standard"`.
  final String diskType;

  /// Optional. Whether the disk is read only. If true, the disk may be shared by multiple VMs and source_snapshot must be set.
  final bool readOnly;

  /// Optional. Name of the disk image to use as the source for the disk. Must be empty if source_snapshot is set. Updating source_image will update content in the ephemeral directory after the workstation is restarted. This field is mutable.
  final String sourceImage;

  /// Optional. Name of the snapshot to use as the source for the disk. Must be empty if source_image is set. Must be empty if read_only is false. Updating source_snapshot will update content in the ephemeral directory after the workstation is restarted. This field is mutable.
  final String sourceSnapshot;

  GcePersistentDiskResponse({
    required this.diskType,
    required this.readOnly,
    required this.sourceImage,
    required this.sourceSnapshot,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['diskType'] = diskType;
    map['readOnly'] = readOnly;
    map['sourceImage'] = sourceImage;
    map['sourceSnapshot'] = sourceSnapshot;
    return map;
  }

  factory GcePersistentDiskResponse.fromMap(Map<String, dynamic> map) {
    return GcePersistentDiskResponse(
      diskType: map['diskType'] as String,
      readOnly: map['readOnly'] as bool,
      sourceImage: map['sourceImage'] as String,
      sourceSnapshot: map['sourceSnapshot'] as String,
    );
  }
}
