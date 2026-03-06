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
  const CredentialHealthResponse({
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
      errorCode: (() { final guardedValue = map['errorCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

