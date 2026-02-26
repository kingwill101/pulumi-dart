// ignore_for_file: unused_element, unnecessary_cast

/// Volumes mounted within the app container. Only applicable in the App Engine flexible environment.
class VolumeResponse2 {
  /// Unique name for the volume.
  final String name;

  /// Volume size in gigabytes.
  final double sizeGb;

  /// Underlying volume type, e.g. 'tmpfs'.
  final String volumeType;

  VolumeResponse2({
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

  factory VolumeResponse2.fromMap(Map<String, dynamic> map) {
    return VolumeResponse2(
      name: map['name'] as String,
      sizeGb: map['sizeGb'] as double,
      volumeType: map['volumeType'] as String,
    );
  }
}
