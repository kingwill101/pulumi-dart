// ignore_for_file: unused_element, unnecessary_cast

class V2VmDataDisk {
  /// The mode in which to attach this disk. If not specified, the default is READ_WRITE
  /// mode. Only applicable to dataDisks.
  /// Default value is `READ_WRITE`.
  /// Possible values are: `READ_WRITE`, `READ_ONLY`.
  final String? mode;

  /// Specifies the full path to an existing disk. For example:
  /// "projects/my-project/zones/us-central1-c/disks/my-disk".
  final String sourceDisk;

  V2VmDataDisk({
    this.mode,
    required this.sourceDisk,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    map['sourceDisk'] = sourceDisk;
    return map;
  }

  factory V2VmDataDisk.fromMap(Map<String, dynamic> map) {
    return V2VmDataDisk(
      mode: map['mode'] == null ? null : map['mode'] as String,
      sourceDisk: map['sourceDisk'] as String,
    );
  }
}
