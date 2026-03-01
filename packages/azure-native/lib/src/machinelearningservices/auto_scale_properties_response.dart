// ignore_for_file: unused_element, unnecessary_cast


/// Auto scale properties
class AutoScalePropertiesResponse {
  final bool? enabled;
  final int? maxNodeCount;
  final int? minNodeCount;

  /// Creates a new [AutoScalePropertiesResponse].
  /// [enabled] Optional.
  /// [maxNodeCount] Optional.
  /// [minNodeCount] Optional.
  AutoScalePropertiesResponse({
    this.enabled,
    this.maxNodeCount,
    this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'maxNodeCount': ?maxNodeCount,
      'minNodeCount': ?minNodeCount,
    };
  }

  factory AutoScalePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AutoScalePropertiesResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      maxNodeCount: map['maxNodeCount'] == null ? null : map['maxNodeCount'] as int,
      minNodeCount: map['minNodeCount'] == null ? null : map['minNodeCount'] as int,
    );
  }
}

