// ignore_for_file: unused_element, unnecessary_cast

/// Details for the VM created VM as part of disks migration.
class DisksMigrationVmTargetDetailsResponse {
  /// The URI of the Compute Engine VM.
  final String vmUri;

  /// Creates a new [DisksMigrationVmTargetDetailsResponse].
  /// [vmUri] The URI of the Compute Engine VM.
  DisksMigrationVmTargetDetailsResponse({required this.vmUri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'vmUri': vmUri};
  }

  factory DisksMigrationVmTargetDetailsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DisksMigrationVmTargetDetailsResponse(vmUri: map['vmUri'] as String);
  }
}
