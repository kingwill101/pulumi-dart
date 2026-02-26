// ignore_for_file: unused_element, unnecessary_cast

/// Details for the VM created VM as part of disks migration.
class DisksMigrationVmTargetDetailsResponse2 {
  /// The URI of the Compute Engine VM.
  final String vmUri;

  DisksMigrationVmTargetDetailsResponse2({
    required this.vmUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['vmUri'] = vmUri;
    return map;
  }

  factory DisksMigrationVmTargetDetailsResponse2.fromMap(
      Map<String, dynamic> map) {
    return DisksMigrationVmTargetDetailsResponse2(
      vmUri: map['vmUri'] as String,
    );
  }
}
