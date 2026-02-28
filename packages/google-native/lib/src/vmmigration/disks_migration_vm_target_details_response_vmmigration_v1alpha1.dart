// ignore_for_file: unused_element, unnecessary_cast

/// Details for the VM created VM as part of disks migration.
class DisksMigrationVmTargetDetailsResponseVmmigrationV1alpha1 {
  /// The URI of the Compute Engine VM.
  final String vmUri;

  /// Creates a new [DisksMigrationVmTargetDetailsResponseVmmigrationV1alpha1].
  /// [vmUri] The URI of the Compute Engine VM.
  DisksMigrationVmTargetDetailsResponseVmmigrationV1alpha1({
    required this.vmUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['vmUri'] = vmUri;
    return map;
  }

  factory DisksMigrationVmTargetDetailsResponseVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return DisksMigrationVmTargetDetailsResponseVmmigrationV1alpha1(
      vmUri: map['vmUri'] as String,
    );
  }
}
