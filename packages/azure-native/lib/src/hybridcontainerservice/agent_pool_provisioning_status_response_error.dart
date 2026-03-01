// ignore_for_file: unused_element, unnecessary_cast


class AgentPoolProvisioningStatusResponseError {
  final String? code;
  final String? message;

  /// Creates a new [AgentPoolProvisioningStatusResponseError].
  /// [code] Optional.
  /// [message] Optional.
  AgentPoolProvisioningStatusResponseError({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory AgentPoolProvisioningStatusResponseError.fromMap(Map<String, dynamic> map) {
    return AgentPoolProvisioningStatusResponseError(
      code: map['code'] == null ? null : map['code'] as String,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}

