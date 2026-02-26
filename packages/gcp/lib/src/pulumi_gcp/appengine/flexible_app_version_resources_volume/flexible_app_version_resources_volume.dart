// ignore_for_file: unused_element, unnecessary_cast

class FlexibleAppVersionResourcesVolume {
  /// Unique name for the volume.
  final String name;

  /// Volume size in gigabytes.
  final int sizeGb;

  /// Underlying volume type, e.g. 'tmpfs'.
  final String volumeType;

  FlexibleAppVersionResourcesVolume({
    required this.name,
    required this.sizeGb,
    required this.volumeType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['sizeGb'] = sizeGb;
    map['volumeType'] = volumeType;
    return map;
  }

  factory FlexibleAppVersionResourcesVolume.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionResourcesVolume(
      name: map['name'] as String,
      sizeGb: map['sizeGb'] as int,
      volumeType: map['volumeType'] as String,
    );
  }
}
