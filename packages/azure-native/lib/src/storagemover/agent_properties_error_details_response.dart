// ignore_for_file: unused_element, unnecessary_cast


class AgentPropertiesErrorDetailsResponse {
  /// Error code reported by Agent
  final String? code;
  /// Expanded description of reported error code
  final String? message;

  /// Creates a new [AgentPropertiesErrorDetailsResponse].
  /// [code] Error code reported by Agent
  /// [message] Expanded description of reported error code
  AgentPropertiesErrorDetailsResponse({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory AgentPropertiesErrorDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AgentPropertiesErrorDetailsResponse(
      code: map['code'] == null ? null : map['code'] as String,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}

