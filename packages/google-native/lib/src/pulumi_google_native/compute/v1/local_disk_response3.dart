// ignore_for_file: unused_element, unnecessary_cast

class LocalDiskResponse3 {
  /// Specifies the number of such disks.
  final int diskCount;

  /// Specifies the size of the disk in base-2 GB.
  final int diskSizeGb;

  /// Specifies the desired disk type on the node. This disk type must be a local storage type (e.g.: local-ssd). Note that for nodeTemplates, this should be the name of the disk type and not its URL.
  final String diskType;

  LocalDiskResponse3({
    required this.diskCount,
    required this.diskSizeGb,
    required this.diskType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['diskCount'] = diskCount;
    map['diskSizeGb'] = diskSizeGb;
    map['diskType'] = diskType;
    return map;
  }

  factory LocalDiskResponse3.fromMap(Map<String, dynamic> map) {
    return LocalDiskResponse3(
      diskCount: map['diskCount'] as int,
      diskSizeGb: map['diskSizeGb'] as int,
      diskType: map['diskType'] as String,
    );
  }
}
