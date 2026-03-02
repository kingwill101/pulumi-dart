// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeSourceParametersSelfManagedKafkaParametersCredentials {
  /// The ARN of the Secrets Manager secret containing the credentials.
  final pulumi.Input<String>? basicAuth;
  /// The ARN of the Secrets Manager secret containing the credentials.
  final pulumi.Input<String>? clientCertificateTlsAuth;
  /// The ARN of the Secrets Manager secret containing the credentials.
  final pulumi.Input<String>? saslScram256Auth;
  /// The ARN of the Secrets Manager secret containing the credentials.
  final pulumi.Input<String>? saslScram512Auth;

  /// Creates a new [PipeSourceParametersSelfManagedKafkaParametersCredentials].
  /// [basicAuth] The ARN of the Secrets Manager secret containing the credentials.
  /// [clientCertificateTlsAuth] The ARN of the Secrets Manager secret containing the credentials.
  /// [saslScram256Auth] The ARN of the Secrets Manager secret containing the credentials.
  /// [saslScram512Auth] The ARN of the Secrets Manager secret containing the credentials.
  PipeSourceParametersSelfManagedKafkaParametersCredentials({
    this.basicAuth,
    this.clientCertificateTlsAuth,
    this.saslScram256Auth,
    this.saslScram512Auth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicAuth': ?basicAuth,
      'clientCertificateTlsAuth': ?clientCertificateTlsAuth,
      'saslScram256Auth': ?saslScram256Auth,
      'saslScram512Auth': ?saslScram512Auth,
    };
  }

  factory PipeSourceParametersSelfManagedKafkaParametersCredentials.fromMap(Map<String, dynamic> map) {
    return PipeSourceParametersSelfManagedKafkaParametersCredentials(
      basicAuth: map['basicAuth'] == null ? null : ((map['basicAuth'] as String).input()).input(),
      clientCertificateTlsAuth: map['clientCertificateTlsAuth'] == null ? null : ((map['clientCertificateTlsAuth'] as String).input()).input(),
      saslScram256Auth: map['saslScram256Auth'] == null ? null : ((map['saslScram256Auth'] as String).input()).input(),
      saslScram512Auth: map['saslScram512Auth'] == null ? null : ((map['saslScram512Auth'] as String).input()).input(),
    );
  }
}

