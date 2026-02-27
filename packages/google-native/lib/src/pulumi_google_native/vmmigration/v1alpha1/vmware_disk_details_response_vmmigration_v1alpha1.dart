// ignore_for_file: unused_element, unnecessary_cast

/// The details of a Vmware VM disk.
class VmwareDiskDetailsResponseVmmigrationV1alpha1 {
  /// The ordinal number of the disk.
  final int diskNumber;

  /// The disk label.
  final String label;

  /// Size in GB.
  final String sizeGb;

  VmwareDiskDetailsResponseVmmigrationV1alpha1({
    required this.diskNumber,
    required this.label,
    required this.sizeGb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['diskNumber'] = diskNumber;
    map['label'] = label;
    map['sizeGb'] = sizeGb;
    return map;
  }

  factory VmwareDiskDetailsResponseVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return VmwareDiskDetailsResponseVmmigrationV1alpha1(
      diskNumber: map['diskNumber'] as int,
      label: map['label'] as String,
      sizeGb: map['sizeGb'] as String,
    );
  }
}
