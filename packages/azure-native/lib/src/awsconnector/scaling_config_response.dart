// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ScalingConfig
class ScalingConfigResponse {
  /// Property desiredSize
  final int? desiredSize;
  /// Property maxSize
  final int? maxSize;
  /// Property minSize
  final int? minSize;

  /// Creates a new [ScalingConfigResponse].
  /// [desiredSize] Property desiredSize
  /// [maxSize] Property maxSize
  /// [minSize] Property minSize
  ScalingConfigResponse({
    this.desiredSize,
    this.maxSize,
    this.minSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredSize': ?desiredSize,
      'maxSize': ?maxSize,
      'minSize': ?minSize,
    };
  }

  factory ScalingConfigResponse.fromMap(Map<String, dynamic> map) {
    return ScalingConfigResponse(
      desiredSize: map['desiredSize'] == null ? null : map['desiredSize'] as int,
      maxSize: map['maxSize'] == null ? null : map['maxSize'] as int,
      minSize: map['minSize'] == null ? null : map['minSize'] as int,
    );
  }
}

