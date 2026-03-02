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
  PipeSourceParametersManagedStreamingKafkaParametersCredentials({
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
      clientCertificateTlsAuth: map['clientCertificateTlsAuth'] == null ? null : (map['clientCertificateTlsAuth'] as String).input(),
      saslScram512Auth: map['saslScram512Auth'] == null ? null : (map['saslScram512Auth'] as String).input(),
    );
  }
}

