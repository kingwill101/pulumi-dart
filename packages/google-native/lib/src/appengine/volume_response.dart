// ignore_for_file: unused_element, unnecessary_cast


/// Volumes mounted within the app container. Only applicable in the App Engine flexible environment.
class VolumeResponse {
  /// Unique name for the volume.
  final String name;
  /// Volume size in gigabytes.
  final double sizeGb;
  /// Underlying volume type, e.g. 'tmpfs'.
  final String volumeType;

  /// Creates a new [VolumeResponse].
  /// [name] Unique name for the volume.
  /// [sizeGb] Volume size in gigabytes.
  /// [volumeType] Underlying volume type, e.g. 'tmpfs'.
  VolumeResponse({
    required this.name,
    required this.sizeGb,
    required this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'sizeGb': sizeGb,
      'volumeType': volumeType,
    };
  }

  factory VolumeResponse.fromMap(Map<String, dynamic> map) {
    return VolumeResponse(
      name: map['name'] as String,
      sizeGb: map['sizeGb'] as double,
      volumeType: map['volumeType'] as String,
    );
  }
}

