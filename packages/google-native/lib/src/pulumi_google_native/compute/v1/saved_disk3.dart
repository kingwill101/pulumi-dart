// ignore_for_file: unused_element, unnecessary_cast

/// An instance-attached disk resource.
class SavedDisk3 {
  /// Specifies a URL of the disk attached to the source instance.
  final String? sourceDisk;

  SavedDisk3({
    this.sourceDisk,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sourceDiskValue = sourceDisk;
    if (sourceDiskValue != null) {
      map['sourceDisk'] = sourceDiskValue;
    }
    return map;
  }

  factory SavedDisk3.fromMap(Map<String, dynamic> map) {
    return SavedDisk3(
      sourceDisk:
          map['sourceDisk'] == null ? null : map['sourceDisk'] as String,
    );
  }
}
