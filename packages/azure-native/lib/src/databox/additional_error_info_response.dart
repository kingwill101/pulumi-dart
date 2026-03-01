// ignore_for_file: unused_element, unnecessary_cast


/// This class represents additional info which Resource Providers pass when an error occurs.
class AdditionalErrorInfoResponse {
  /// Additional information of the type of error.
  final dynamic info;
  /// Type of error (e.g. CustomerIntervention, PolicyViolation, SecurityViolation).
  final String? type;

  /// Creates a new [AdditionalErrorInfoResponse].
  /// [info] Additional information of the type of error.
  /// [type] Type of error (e.g. CustomerIntervention, PolicyViolation, SecurityViolation).
  AdditionalErrorInfoResponse({
    this.info,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'info': ?info,
      'type': ?type,
    };
  }

  factory AdditionalErrorInfoResponse.fromMap(Map<String, dynamic> map) {
    return AdditionalErrorInfoResponse(
      info: map['info'] == null ? null : map['info'],
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

