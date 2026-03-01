// ignore_for_file: unused_element, unnecessary_cast

import 'instance_reference.dart';

/// On-premises instance configuration.
class OnPremisesConfiguration {
  /// PEM representation of the trusted CA's x509 certificate.
  final String? caCertificate;

  /// PEM representation of the replica's x509 certificate.
  final String? clientCertificate;

  /// PEM representation of the replica's private key. The corresponsing public key is encoded in the client's certificate.
  final String? clientKey;

  /// The dump file to create the Cloud SQL replica.
  final String? dumpFilePath;

  /// The host and port of the on-premises instance in host:port format
  final String? hostPort;

  /// This is always `sql#onPremisesConfiguration`.
  final String? kind;

  /// The password for connecting to on-premises instance.
  final String? password;

  /// The reference to Cloud SQL instance if the source is Cloud SQL.
  final InstanceReference? sourceInstance;

  /// The username for connecting to on-premises instance.
  final String? username;

  /// Creates a new [OnPremisesConfiguration].
  /// [caCertificate] PEM representation of the trusted CA's x509 certificate.
  /// [clientCertificate] PEM representation of the replica's x509 certificate.
  /// [clientKey] PEM representation of the replica's private key. The corresponsing public key is encoded in the client's certificate.
  /// [dumpFilePath] The dump file to create the Cloud SQL replica.
  /// [hostPort] The host and port of the on-premises instance in host:port format
  /// [kind] This is always `sql#onPremisesConfiguration`.
  /// [password] The password for connecting to on-premises instance.
  /// [sourceInstance] The reference to Cloud SQL instance if the source is Cloud SQL.
  /// [username] The username for connecting to on-premises instance.
  OnPremisesConfiguration({
    this.caCertificate,
    this.clientCertificate,
    this.clientKey,
    this.dumpFilePath,
    this.hostPort,
    this.kind,
    this.password,
    this.sourceInstance,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificate': ?caCertificate,
      'clientCertificate': ?clientCertificate,
      'clientKey': ?clientKey,
      'dumpFilePath': ?dumpFilePath,
      'hostPort': ?hostPort,
      'kind': ?kind,
      'password': ?password,
      'sourceInstance': ?sourceInstance == null
          ? null
          : sourceInstance!.toMap(),
      'username': ?username,
    };
  }

  factory OnPremisesConfiguration.fromMap(Map<String, dynamic> map) {
    return OnPremisesConfiguration(
      caCertificate: map['caCertificate'] == null
          ? null
          : map['caCertificate'] as String,
      clientCertificate: map['clientCertificate'] == null
          ? null
          : map['clientCertificate'] as String,
      clientKey: map['clientKey'] == null ? null : map['clientKey'] as String,
      dumpFilePath: map['dumpFilePath'] == null
          ? null
          : map['dumpFilePath'] as String,
      hostPort: map['hostPort'] == null ? null : map['hostPort'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      sourceInstance: map['sourceInstance'] == null
          ? null
          : InstanceReference.fromMap(
              (map['sourceInstance'] as Map).cast<String, dynamic>(),
            ),
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
