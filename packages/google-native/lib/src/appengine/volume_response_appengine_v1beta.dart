// ignore_for_file: unused_element, unnecessary_cast

/// Volumes mounted within the app container. Only applicable in the App Engine flexible environment.
class VolumeResponseAppengineV1beta {
  /// Unique name for the volume.
  final String name;

  /// Volume size in gigabytes.
  final double sizeGb;

  /// Underlying volume type, e.g. 'tmpfs'.
  final String volumeType;

  /// Creates a new [VolumeResponseAppengineV1beta].
  /// [name] Unique name for the volume.
  /// [sizeGb] Volume size in gigabytes.
  /// [volumeType] Underlying volume type, e.g. 'tmpfs'.
  VolumeResponseAppengineV1beta({
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

  factory VolumeResponseAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return VolumeResponseAppengineV1beta(
      name: map['name'] as String,
      sizeGb: map['sizeGb'] as double,
      volumeType: map['volumeType'] as String,
    );
  }
}
