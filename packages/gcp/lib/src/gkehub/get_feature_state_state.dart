// ignore_for_file: unused_element, unnecessary_cast

class GetFeatureStateState {
  /// The high-level, machine-readable status of this Feature.
  final String code;

  /// A human-readable description of the current status.
  final String description;

  /// The time this status and any related Feature-specific details were updated. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  final String updateTime;

  /// Creates a new [GetFeatureStateState].
  /// [code] The high-level, machine-readable status of this Feature.
  /// [description] A human-readable description of the current status.
  /// [updateTime] The time this status and any related Feature-specific details were updated. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  GetFeatureStateState({
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

  factory GetFeatureStateState.fromMap(Map<String, dynamic> map) {
    return GetFeatureStateState(
      code: map['code'] as String,
      description: map['description'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
