// ignore_for_file: unused_element, unnecessary_cast

class LocalDiskComputeBeta {
  /// Specifies the number of such disks.
  final int? diskCount;

  /// Specifies the size of the disk in base-2 GB.
  final int? diskSizeGb;

  /// Specifies the desired disk type on the node. This disk type must be a local storage type (e.g.: local-ssd). Note that for nodeTemplates, this should be the name of the disk type and not its URL.
  final String? diskType;

  LocalDiskComputeBeta({
    this.diskCount,
    this.diskSizeGb,
    this.diskType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final diskCountValue = diskCount;
    if (diskCountValue != null) {
      map['diskCount'] = diskCountValue;
    }
    final diskSizeGbValue = diskSizeGb;
    if (diskSizeGbValue != null) {
      map['diskSizeGb'] = diskSizeGbValue;
    }
    final diskTypeValue = diskType;
    if (diskTypeValue != null) {
      map['diskType'] = diskTypeValue;
    }
    return map;
  }

  factory LocalDiskComputeBeta.fromMap(Map<String, dynamic> map) {
    return LocalDiskComputeBeta(
      diskCount: map['diskCount'] == null ? null : map['diskCount'] as int,
      diskSizeGb: map['diskSizeGb'] == null ? null : map['diskSizeGb'] as int,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
    );
  }
}
