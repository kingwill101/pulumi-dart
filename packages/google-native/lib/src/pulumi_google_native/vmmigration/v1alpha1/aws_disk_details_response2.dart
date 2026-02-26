// ignore_for_file: unused_element, unnecessary_cast

/// The details of an AWS instance disk.
class AwsDiskDetailsResponse2 {
  /// The ordinal number of the disk.
  final int diskNumber;

  /// Size in GB.
  final String sizeGb;

  /// AWS volume ID.
  final String volumeId;

  AwsDiskDetailsResponse2({
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

  factory AwsDiskDetailsResponse2.fromMap(Map<String, dynamic> map) {
    return AwsDiskDetailsResponse2(
      diskNumber: map['diskNumber'] as int,
      sizeGb: map['sizeGb'] as String,
      volumeId: map['volumeId'] as String,
    );
  }
}
