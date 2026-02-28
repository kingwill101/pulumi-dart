// ignore_for_file: unused_element, unnecessary_cast


class PipeSourceParametersSelfManagedKafkaParametersCredentials {
  /// The ARN of the Secrets Manager secret containing the credentials.
  final String? basicAuth;
  /// The ARN of the Secrets Manager secret containing the credentials.
  final String? clientCertificateTlsAuth;
  /// The ARN of the Secrets Manager secret containing the credentials.
  final String? saslScram256Auth;
  /// The ARN of the Secrets Manager secret containing the credentials.
  final String? saslScram512Auth;

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
      basicAuth: map['basicAuth'] == null ? null : map['basicAuth'] as String,
      clientCertificateTlsAuth: map['clientCertificateTlsAuth'] == null ? null : map['clientCertificateTlsAuth'] as String,
      saslScram256Auth: map['saslScram256Auth'] == null ? null : map['saslScram256Auth'] as String,
      saslScram512Auth: map['saslScram512Auth'] == null ? null : map['saslScram512Auth'] as String,
    );
  }
}

