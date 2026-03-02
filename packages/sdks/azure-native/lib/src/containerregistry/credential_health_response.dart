// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The health of the auth credential.
class CredentialHealthResponse {
  /// Error code representing the health check error.
  final pulumi.Input<String>? errorCode;
  /// Descriptive message representing the health check error.
  final pulumi.Input<String>? errorMessage;
  /// The health status of credential.
  final pulumi.Input<String>? status;

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
      errorCode: map['errorCode'] == null ? null : (map['errorCode']! as String).input(),
      errorMessage: map['errorMessage'] == null ? null : (map['errorMessage']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

