// ignore_for_file: unused_element, unnecessary_cast

/// A node-attached disk resource. Next ID: 8;
class AttachedDiskResponseTpuV2alpha1 {
  /// The mode in which to attach this disk. If not specified, the default is READ_WRITE mode. Only applicable to data_disks.
  final String mode;

  /// Specifies the full path to an existing disk. For example: "projects/my-project/zones/us-central1-c/disks/my-disk".
  final String sourceDisk;

  /// Creates a new [AttachedDiskResponseTpuV2alpha1].
  /// [mode] The mode in which to attach this disk. If not specified, the default is READ_WRITE mode. Only applicable to data_disks.
  /// [sourceDisk] Specifies the full path to an existing disk. For example: "projects/my-project/zones/us-central1-c/disks/my-disk".
  AttachedDiskResponseTpuV2alpha1({
    required this.mode,
    required this.sourceDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mode': mode, 'sourceDisk': sourceDisk};
  }

  factory AttachedDiskResponseTpuV2alpha1.fromMap(Map<String, dynamic> map) {
    return AttachedDiskResponseTpuV2alpha1(
      mode: map['mode'] as String,
      sourceDisk: map['sourceDisk'] as String,
    );
  }
}
