// ignore_for_file: unused_element, unnecessary_cast


class LocalDiskResponse {
  /// Specifies the number of such disks.
  final int diskCount;
  /// Specifies the size of the disk in base-2 GB.
  final int diskSizeGb;
  /// Specifies the desired disk type on the node. This disk type must be a local storage type (e.g.: local-ssd). Note that for nodeTemplates, this should be the name of the disk type and not its URL.
  final String diskType;

  /// Creates a new [LocalDiskResponse].
  /// [diskCount] Specifies the number of such disks.
  /// [diskSizeGb] Specifies the size of the disk in base-2 GB.
  /// [diskType] Specifies the desired disk type on the node. This disk type must be a local storage type (e.g.: local-ssd). Note that for nodeTemplates, this should be the name of the disk type and not its URL.
  LocalDiskResponse({
    required this.diskCount,
    required this.diskSizeGb,
    required this.diskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskCount': diskCount,
      'diskSizeGb': diskSizeGb,
      'diskType': diskType,
    };
  }

  factory LocalDiskResponse.fromMap(Map<String, dynamic> map) {
    return LocalDiskResponse(
      diskCount: map['diskCount'] as int,
      diskSizeGb: map['diskSizeGb'] as int,
      diskType: map['diskType'] as String,
    );
  }
}

