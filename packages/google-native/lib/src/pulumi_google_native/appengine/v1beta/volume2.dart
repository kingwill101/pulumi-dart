// ignore_for_file: unused_element, unnecessary_cast

/// Volumes mounted within the app container. Only applicable in the App Engine flexible environment.
class Volume2 {
  /// Unique name for the volume.
  final String? name;

  /// Volume size in gigabytes.
  final double? sizeGb;

  /// Underlying volume type, e.g. 'tmpfs'.
  final String? volumeType;

  Volume2({
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

  factory Volume2.fromMap(Map<String, dynamic> map) {
    return Volume2(
      name: map['name'] == null ? null : map['name'] as String,
      sizeGb: map['sizeGb'] == null ? null : map['sizeGb'] as double,
      volumeType:
          map['volumeType'] == null ? null : map['volumeType'] as String,
    );
  }
}
