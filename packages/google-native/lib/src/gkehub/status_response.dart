// ignore_for_file: unused_element, unnecessary_cast


/// Status specifies state for the subcomponent.
class StatusResponse {
  /// Code specifies AppDevExperienceFeature's subcomponent ready state.
  final String code;
  /// Description is populated if Code is Failed, explaining why it has failed.
  final String description;

  /// Creates a new [StatusResponse].
  /// [code] Code specifies AppDevExperienceFeature's subcomponent ready state.
  /// [description] Description is populated if Code is Failed, explaining why it has failed.
  StatusResponse({
    required this.code,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'description': description,
    };
  }

  factory StatusResponse.fromMap(Map<String, dynamic> map) {
    return StatusResponse(
      code: map['code'] as String,
      description: map['description'] as String,
    );
  }
}

