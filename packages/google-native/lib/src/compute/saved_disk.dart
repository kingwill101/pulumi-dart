// ignore_for_file: unused_element, unnecessary_cast

/// An instance-attached disk resource.
class SavedDisk {
  /// Specifies a URL of the disk attached to the source instance.
  final String? sourceDisk;

  /// Creates a new [SavedDisk].
  /// [sourceDisk] Specifies a URL of the disk attached to the source instance.
  SavedDisk({this.sourceDisk});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sourceDisk': ?sourceDisk};
  }

  factory SavedDisk.fromMap(Map<String, dynamic> map) {
    return SavedDisk(
      sourceDisk: map['sourceDisk'] == null
          ? null
          : map['sourceDisk'] as String,
    );
  }
}
