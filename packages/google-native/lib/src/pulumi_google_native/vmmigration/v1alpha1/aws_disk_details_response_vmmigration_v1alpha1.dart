// ignore_for_file: unused_element, unnecessary_cast

/// The details of an AWS instance disk.
class AwsDiskDetailsResponseVmmigrationV1alpha1 {
  /// The ordinal number of the disk.
  final int diskNumber;

  /// Size in GB.
  final String sizeGb;

  /// AWS volume ID.
  final String volumeId;

  AwsDiskDetailsResponseVmmigrationV1alpha1({
    required this.diskNumber,
    required this.sizeGb,
    required this.volumeId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['diskNumber'] = diskNumber;
    map['sizeGb'] = sizeGb;
    map['volumeId'] = volumeId;
    return map;
  }

  factory AwsDiskDetailsResponseVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return AwsDiskDetailsResponseVmmigrationV1alpha1(
      diskNumber: map['diskNumber'] as int,
      sizeGb: map['sizeGb'] as String,
      volumeId: map['volumeId'] as String,
    );
  }
}
