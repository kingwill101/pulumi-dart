// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeSourceParametersManagedStreamingKafkaParametersCredentials {
  /// The ARN of the Secrets Manager secret containing the credentials.
  final pulumi.Input<String>? clientCertificateTlsAuth;
  /// The ARN of the Secrets Manager secret containing the credentials.
  final pulumi.Input<String>? saslScram512Auth;

  /// Creates a new [PipeSourceParametersManagedStreamingKafkaParametersCredentials].
  /// [clientCertificateTlsAuth] The ARN of the Secrets Manager secret containing the credentials.
  /// [saslScram512Auth] The ARN of the Secrets Manager secret containing the credentials.
  const PipeSourceParametersManagedStreamingKafkaParametersCredentials({
    this.clientCertificateTlsAuth,
    this.saslScram512Auth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertificateTlsAuth': ?clientCertificateTlsAuth,
      'saslScram512Auth': ?saslScram512Auth,
    };
  }

  factory PipeSourceParametersManagedStreamingKafkaParametersCredentials.fromMap(Map<String, dynamic> map) {
    return PipeSourceParametersManagedStreamingKafkaParametersCredentials(
      clientCertificateTlsAuth: (() { final guardedValue = map['clientCertificateTlsAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      saslScram512Auth: (() { final guardedValue = map['saslScram512Auth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

