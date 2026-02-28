// ignore_for_file: unused_element, unnecessary_cast


/// FeatureState describes the high-level state of a Feature. It may be used to describe a Feature's state at the environ-level, or per-membershop, depending on the context.
class FeatureStateResponse {
  /// The high-level, machine-readable status of this Feature.
  final String code;
  /// A human-readable description of the current status.
  final String description;
  /// The time this status and any related Feature-specific details were updated.
  final String updateTime;

  /// Creates a new [FeatureStateResponse].
  /// [code] The high-level, machine-readable status of this Feature.
  /// [description] A human-readable description of the current status.
  /// [updateTime] The time this status and any related Feature-specific details were updated.
  FeatureStateResponse({
    required this.code,
    required this.description,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'description': description,
      'updateTime': updateTime,
    };
  }

  factory FeatureStateResponse.fromMap(Map<String, dynamic> map) {
    return FeatureStateResponse(
      code: map['code'] as String,
      description: map['description'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

