// ignore_for_file: unused_element, unnecessary_cast


/// The health of the auth credential.
class CredentialHealthResponse {
  /// Error code representing the health check error.
  final String? errorCode;
  /// Descriptive message representing the health check error.
  final String? errorMessage;
  /// The health status of credential.
  final String? status;

  /// Creates a new [CredentialHealthResponse].
  /// [errorCode] Error code representing the health check error.
  /// [errorMessage] Descriptive message representing the health check error.
  /// [status] The health status of credential.
  CredentialHealthResponse({
    this.errorCode,
    this.errorMessage,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': ?errorCode,
      'errorMessage': ?errorMessage,
      'status': ?status,
    };
  }

  factory CredentialHealthResponse.fromMap(Map<String, dynamic> map) {
    return CredentialHealthResponse(
      errorCode: map['errorCode'] == null ? null : map['errorCode'] as String,
      errorMessage: map['errorMessage'] == null ? null : map['errorMessage'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

