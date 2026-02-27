// ignore_for_file: unused_element, unnecessary_cast

/// The details of an Azure VM disk.
class AzureDiskDetailsResponseVmmigrationV1alpha1 {
  /// Azure disk ID.
  final String diskId;

  /// The ordinal number of the disk.
  final int diskNumber;

  /// Size in GB.
  final String sizeGb;

  AzureDiskDetailsResponseVmmigrationV1alpha1({
    required this.diskId,
    required this.diskNumber,
    required this.sizeGb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['diskId'] = diskId;
    map['diskNumber'] = diskNumber;
    map['sizeGb'] = sizeGb;
    return map;
  }

  factory AzureDiskDetailsResponseVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return AzureDiskDetailsResponseVmmigrationV1alpha1(
      diskId: map['diskId'] as String,
      diskNumber: map['diskNumber'] as int,
      sizeGb: map['sizeGb'] as String,
    );
  }
}
