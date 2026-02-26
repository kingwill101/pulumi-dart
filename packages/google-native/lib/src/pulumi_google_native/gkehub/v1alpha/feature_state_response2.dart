// ignore_for_file: unused_element, unnecessary_cast

/// FeatureState describes the high-level state of a Feature. It may be used to describe a Feature's state at the environ-level, or per-membershop, depending on the context.
class FeatureStateResponse2 {
  /// The high-level, machine-readable status of this Feature.
  final String code;

  /// A human-readable description of the current status.
  final String description;

  /// The time this status and any related Feature-specific details were updated.
  final String updateTime;

  FeatureStateResponse2({
    required this.code,
    required this.description,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['description'] = description;
    map['updateTime'] = updateTime;
    return map;
  }

  factory FeatureStateResponse2.fromMap(Map<String, dynamic> map) {
    return FeatureStateResponse2(
      code: map['code'] as String,
      description: map['description'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
