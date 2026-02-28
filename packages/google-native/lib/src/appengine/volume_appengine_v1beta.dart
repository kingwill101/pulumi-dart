// ignore_for_file: unused_element, unnecessary_cast

/// Volumes mounted within the app container. Only applicable in the App Engine flexible environment.
class VolumeAppengineV1beta {
  /// Unique name for the volume.
  final String? name;

  /// Volume size in gigabytes.
  final double? sizeGb;

  /// Underlying volume type, e.g. 'tmpfs'.
  final String? volumeType;

  /// Creates a new [VolumeAppengineV1beta].
  /// [name] Unique name for the volume.
  /// [sizeGb] Volume size in gigabytes.
  /// [volumeType] Underlying volume type, e.g. 'tmpfs'.
  VolumeAppengineV1beta({
    this.name,
    this.sizeGb,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final sizeGbValue = sizeGb;
    if (sizeGbValue != null) {
      map['sizeGb'] = sizeGbValue;
    }
    final volumeTypeValue = volumeType;
    if (volumeTypeValue != null) {
      map['volumeType'] = volumeTypeValue;
    }
    return map;
  }

  factory VolumeAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return VolumeAppengineV1beta(
      name: map['name'] == null ? null : map['name'] as String,
      sizeGb: map['sizeGb'] == null ? null : map['sizeGb'] as double,
      volumeType:
          map['volumeType'] == null ? null : map['volumeType'] as String,
    );
  }
}
