// ignore_for_file: unused_element, unnecessary_cast

/// The details of a Vmware VM disk.
class VmwareDiskDetailsResponseVmmigrationV1alpha1 {
  /// The ordinal number of the disk.
  final int diskNumber;

  /// The disk label.
  final String label;

  /// Size in GB.
  final String sizeGb;

  /// Creates a new [VmwareDiskDetailsResponseVmmigrationV1alpha1].
  /// [diskNumber] The ordinal number of the disk.
  /// [label] The disk label.
  /// [sizeGb] Size in GB.
  VmwareDiskDetailsResponseVmmigrationV1alpha1({
    required this.diskNumber,
    required this.label,
    required this.sizeGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskNumber': diskNumber,
      'label': label,
      'sizeGb': sizeGb,
    };
  }

  factory VmwareDiskDetailsResponseVmmigrationV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return VmwareDiskDetailsResponseVmmigrationV1alpha1(
      diskNumber: map['diskNumber'] as int,
      label: map['label'] as String,
      sizeGb: map['sizeGb'] as String,
    );
  }
}
