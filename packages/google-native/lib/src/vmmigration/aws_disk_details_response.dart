// ignore_for_file: unused_element, unnecessary_cast

/// The details of an AWS instance disk.
class AwsDiskDetailsResponse {
  /// The ordinal number of the disk.
  final int diskNumber;

  /// Size in GB.
  final String sizeGb;

  /// AWS volume ID.
  final String volumeId;

  /// Creates a new [AwsDiskDetailsResponse].
  /// [diskNumber] The ordinal number of the disk.
  /// [sizeGb] Size in GB.
  /// [volumeId] AWS volume ID.
  AwsDiskDetailsResponse({
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

  factory AwsDiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AwsDiskDetailsResponse(
      diskNumber: map['diskNumber'] as int,
      sizeGb: map['sizeGb'] as String,
      volumeId: map['volumeId'] as String,
    );
  }
}
