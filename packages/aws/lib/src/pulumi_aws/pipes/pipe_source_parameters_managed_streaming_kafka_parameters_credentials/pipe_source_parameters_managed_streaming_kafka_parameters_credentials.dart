// ignore_for_file: unused_element, unnecessary_cast

class PipeSourceParametersManagedStreamingKafkaParametersCredentials {
  /// The ARN of the Secrets Manager secret containing the credentials.
  final String? clientCertificateTlsAuth;

  /// The ARN of the Secrets Manager secret containing the credentials.
  final String? saslScram512Auth;

  PipeSourceParametersManagedStreamingKafkaParametersCredentials({
    this.clientCertificateTlsAuth,
    this.saslScram512Auth,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientCertificateTlsAuthValue = clientCertificateTlsAuth;
    if (clientCertificateTlsAuthValue != null) {
      map['clientCertificateTlsAuth'] = clientCertificateTlsAuthValue;
    }
    final saslScram512AuthValue = saslScram512Auth;
    if (saslScram512AuthValue != null) {
      map['saslScram512Auth'] = saslScram512AuthValue;
    }
    return map;
  }

  factory PipeSourceParametersManagedStreamingKafkaParametersCredentials.fromMap(
      Map<String, dynamic> map) {
    return PipeSourceParametersManagedStreamingKafkaParametersCredentials(
      clientCertificateTlsAuth: map['clientCertificateTlsAuth'] == null
          ? null
          : map['clientCertificateTlsAuth'] as String,
      saslScram512Auth: map['saslScram512Auth'] == null
          ? null
          : map['saslScram512Auth'] as String,
    );
  }
}
