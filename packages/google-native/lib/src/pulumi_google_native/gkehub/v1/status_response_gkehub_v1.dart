// ignore_for_file: unused_element, unnecessary_cast

/// Status specifies state for the subcomponent.
class StatusResponseGkehubV1 {
  /// Code specifies AppDevExperienceFeature's subcomponent ready state.
  final String code;

  /// Description is populated if Code is Failed, explaining why it has failed.
  final String description;

  StatusResponseGkehubV1({
    required this.code,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['description'] = description;
    return map;
  }

  factory StatusResponseGkehubV1.fromMap(Map<String, dynamic> map) {
    return StatusResponseGkehubV1(
      code: map['code'] as String,
      description: map['description'] as String,
    );
  }
}
