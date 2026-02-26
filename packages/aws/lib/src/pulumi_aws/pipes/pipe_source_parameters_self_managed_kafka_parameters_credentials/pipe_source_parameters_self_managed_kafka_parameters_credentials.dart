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

  PipeSourceParametersSelfManagedKafkaParametersCredentials({
    this.basicAuth,
    this.clientCertificateTlsAuth,
    this.saslScram256Auth,
    this.saslScram512Auth,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final basicAuthValue = basicAuth;
    if (basicAuthValue != null) {
      map['basicAuth'] = basicAuthValue;
    }
    final clientCertificateTlsAuthValue = clientCertificateTlsAuth;
    if (clientCertificateTlsAuthValue != null) {
      map['clientCertificateTlsAuth'] = clientCertificateTlsAuthValue;
    }
    final saslScram256AuthValue = saslScram256Auth;
    if (saslScram256AuthValue != null) {
      map['saslScram256Auth'] = saslScram256AuthValue;
    }
    final saslScram512AuthValue = saslScram512Auth;
    if (saslScram512AuthValue != null) {
      map['saslScram512Auth'] = saslScram512AuthValue;
    }
    return map;
  }

  factory PipeSourceParametersSelfManagedKafkaParametersCredentials.fromMap(
      Map<String, dynamic> map) {
    return PipeSourceParametersSelfManagedKafkaParametersCredentials(
      basicAuth: map['basicAuth'] == null ? null : map['basicAuth'] as String,
      clientCertificateTlsAuth: map['clientCertificateTlsAuth'] == null
          ? null
          : map['clientCertificateTlsAuth'] as String,
      saslScram256Auth: map['saslScram256Auth'] == null
          ? null
          : map['saslScram256Auth'] as String,
      saslScram512Auth: map['saslScram512Auth'] == null
          ? null
          : map['saslScram512Auth'] as String,
    );
  }
}
