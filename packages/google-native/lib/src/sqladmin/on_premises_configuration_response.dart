// ignore_for_file: unused_element, unnecessary_cast

import 'instance_reference_response.dart';

/// On-premises instance configuration.
class OnPremisesConfigurationResponse {
  /// PEM representation of the trusted CA's x509 certificate.
  final String caCertificate;
  /// PEM representation of the replica's x509 certificate.
  final String clientCertificate;
  /// PEM representation of the replica's private key. The corresponsing public key is encoded in the client's certificate.
  final String clientKey;
  /// The dump file to create the Cloud SQL replica.
  final String dumpFilePath;
  /// The host and port of the on-premises instance in host:port format
  final String hostPort;
  /// This is always `sql#onPremisesConfiguration`.
  final String kind;
  /// The password for connecting to on-premises instance.
  final String password;
  /// The reference to Cloud SQL instance if the source is Cloud SQL.
  final InstanceReferenceResponse sourceInstance;
  /// The username for connecting to on-premises instance.
  final String username;

  /// Creates a new [OnPremisesConfigurationResponse].
  /// [caCertificate] PEM representation of the trusted CA's x509 certificate.
  /// [clientCertificate] PEM representation of the replica's x509 certificate.
  /// [clientKey] PEM representation of the replica's private key. The corresponsing public key is encoded in the client's certificate.
  /// [dumpFilePath] The dump file to create the Cloud SQL replica.
  /// [hostPort] The host and port of the on-premises instance in host:port format
  /// [kind] This is always `sql#onPremisesConfiguration`.
  /// [password] The password for connecting to on-premises instance.
  /// [sourceInstance] The reference to Cloud SQL instance if the source is Cloud SQL.
  /// [username] The username for connecting to on-premises instance.
  OnPremisesConfigurationResponse({
    required this.caCertificate,
    required this.clientCertificate,
    required this.clientKey,
    required this.dumpFilePath,
    required this.hostPort,
    required this.kind,
    required this.password,
    required this.sourceInstance,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificate': caCertificate,
      'clientCertificate': clientCertificate,
      'clientKey': clientKey,
      'dumpFilePath': dumpFilePath,
      'hostPort': hostPort,
      'kind': kind,
      'password': password,
      'sourceInstance': sourceInstance.toMap(),
      'username': username,
    };
  }

  factory OnPremisesConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return OnPremisesConfigurationResponse(
      caCertificate: map['caCertificate'] as String,
      clientCertificate: map['clientCertificate'] as String,
      clientKey: map['clientKey'] as String,
      dumpFilePath: map['dumpFilePath'] as String,
      hostPort: map['hostPort'] as String,
      kind: map['kind'] as String,
      password: map['password'] as String,
      sourceInstance: InstanceReferenceResponse.fromMap((map['sourceInstance'] as Map).cast<String, dynamic>()),
      username: map['username'] as String,
    );
  }
}

