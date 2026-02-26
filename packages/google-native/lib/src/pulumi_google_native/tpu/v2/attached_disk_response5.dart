// ignore_for_file: unused_element, unnecessary_cast

/// A node-attached disk resource. Next ID: 8;
class AttachedDiskResponse5 {
  /// The mode in which to attach this disk. If not specified, the default is READ_WRITE mode. Only applicable to data_disks.
  final String mode;

  /// Specifies the full path to an existing disk. For example: "projects/my-project/zones/us-central1-c/disks/my-disk".
  final String sourceDisk;

  AttachedDiskResponse5({
    required this.mode,
    required this.sourceDisk,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    map['sourceDisk'] = sourceDisk;
    return map;
  }

  factory AttachedDiskResponse5.fromMap(Map<String, dynamic> map) {
    return AttachedDiskResponse5(
      mode: map['mode'] as String,
      sourceDisk: map['sourceDisk'] as String,
    );
  }
}
