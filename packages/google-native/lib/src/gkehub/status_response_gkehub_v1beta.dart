// ignore_for_file: unused_element, unnecessary_cast

/// Status specifies state for the subcomponent.
class StatusResponseGkehubV1beta {
  /// Code specifies AppDevExperienceFeature's subcomponent ready state.
  final String code;

  /// Description is populated if Code is Failed, explaining why it has failed.
  final String description;

  /// Creates a new [StatusResponseGkehubV1beta].
  /// [code] Code specifies AppDevExperienceFeature's subcomponent ready state.
  /// [description] Description is populated if Code is Failed, explaining why it has failed.
  StatusResponseGkehubV1beta({
    required this.code,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['description'] = description;
    return map;
  }

  factory StatusResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return StatusResponseGkehubV1beta(
      code: map['code'] as String,
      description: map['description'] as String,
    );
  }
}
