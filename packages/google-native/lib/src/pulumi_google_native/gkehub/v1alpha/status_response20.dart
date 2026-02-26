// ignore_for_file: unused_element, unnecessary_cast

/// Status specifies state for the subcomponent.
class StatusResponse20 {
  /// Code specifies AppDevExperienceFeature's subcomponent ready state.
  final String code;

  /// Description is populated if Code is Failed, explaining why it has failed.
  final String description;

  StatusResponse20({
    required this.code,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['description'] = description;
    return map;
  }

  factory StatusResponse20.fromMap(Map<String, dynamic> map) {
    return StatusResponse20(
      code: map['code'] as String,
      description: map['description'] as String,
    );
  }
}
