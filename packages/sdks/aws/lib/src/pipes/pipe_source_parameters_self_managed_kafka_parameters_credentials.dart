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

  factory PipeSourceParametersSelfManagedKafkaParametersCredentials.fromMap(
    Map<String, dynamic> map,
  ) {
    return PipeSourceParametersSelfManagedKafkaParametersCredentials(
      basicAuth: (() {
        final guardedValue = map['basicAuth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientCertificateTlsAuth: (() {
        final guardedValue = map['clientCertificateTlsAuth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      saslScram256Auth: (() {
        final guardedValue = map['saslScram256Auth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      saslScram512Auth: (() {
        final guardedValue = map['saslScram512Auth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
