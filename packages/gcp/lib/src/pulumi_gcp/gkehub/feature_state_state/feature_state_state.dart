// ignore_for_file: unused_element, unnecessary_cast

class FeatureStateState {
  /// (Output)
  /// The high-level, machine-readable status of this Feature.
  final String? code;

  /// (Output)
  /// A human-readable description of the current status.
  final String? description;

  /// (Output)
  /// The time this status and any related Feature-specific details were updated. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  final String? updateTime;

  FeatureStateState({
    this.code,
    this.description,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeValue = code;
    if (codeValue != null) {
      map['code'] = codeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    return map;
  }

  factory FeatureStateState.fromMap(Map<String, dynamic> map) {
    return FeatureStateState(
      code: map['code'] == null ? null : map['code'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      updateTime:
          map['updateTime'] == null ? null : map['updateTime'] as String,
    );
  }
}
