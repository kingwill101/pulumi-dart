// ignore_for_file: unused_element, unnecessary_cast

class GetDiskGuestOsFeature {
  /// URL of the disk type resource describing which disk type to use to
  /// create the disk.
  final String type;

  GetDiskGuestOsFeature({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory GetDiskGuestOsFeature.fromMap(Map<String, dynamic> map) {
    return GetDiskGuestOsFeature(
      type: map['type'] as String,
    );
  }
}
