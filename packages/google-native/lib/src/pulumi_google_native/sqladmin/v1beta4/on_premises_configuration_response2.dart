// ignore_for_file: unused_element, unnecessary_cast

import 'instance_reference_response4.dart';

/// On-premises instance configuration.
class OnPremisesConfigurationResponse2 {
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
  final InstanceReferenceResponse4 sourceInstance;

  /// The username for connecting to on-premises instance.
  final String username;

  OnPremisesConfigurationResponse2({
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
    final map = <String, dynamic>{};
    map['caCertificate'] = caCertificate;
    map['clientCertificate'] = clientCertificate;
    map['clientKey'] = clientKey;
    map['dumpFilePath'] = dumpFilePath;
    map['hostPort'] = hostPort;
    map['kind'] = kind;
    map['password'] = password;
    map['sourceInstance'] = sourceInstance.toMap();
    map['username'] = username;
    return map;
  }

  factory OnPremisesConfigurationResponse2.fromMap(Map<String, dynamic> map) {
    return OnPremisesConfigurationResponse2(
      caCertificate: map['caCertificate'] as String,
      clientCertificate: map['clientCertificate'] as String,
      clientKey: map['clientKey'] as String,
      dumpFilePath: map['dumpFilePath'] as String,
      hostPort: map['hostPort'] as String,
      kind: map['kind'] as String,
      password: map['password'] as String,
      sourceInstance: InstanceReferenceResponse4.fromMap(
          (map['sourceInstance'] as Map).cast<String, dynamic>()),
      username: map['username'] as String,
    );
  }
}
