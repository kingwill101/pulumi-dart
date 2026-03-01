// ignore_for_file: unused_element, unnecessary_cast


/// Auto scale properties
class AutoScaleProperties {
  final bool? enabled;
  final int? maxNodeCount;
  final int? minNodeCount;

  /// Creates a new [AutoScaleProperties].
  /// [enabled] Optional.
  /// [maxNodeCount] Optional.
  /// [minNodeCount] Optional.
  AutoScaleProperties({
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

  factory AutoScaleProperties.fromMap(Map<String, dynamic> map) {
    return AutoScaleProperties(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      maxNodeCount: map['maxNodeCount'] == null ? null : map['maxNodeCount'] as int,
      minNodeCount: map['minNodeCount'] == null ? null : map['minNodeCount'] as int,
    );
  }
}

