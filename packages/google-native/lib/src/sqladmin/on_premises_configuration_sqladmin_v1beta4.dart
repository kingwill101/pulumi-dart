// ignore_for_file: unused_element, unnecessary_cast

import 'instance_reference_sqladmin_v1beta4.dart';

/// On-premises instance configuration.
class OnPremisesConfigurationSqladminV1beta4 {
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
  final InstanceReferenceSqladminV1beta4? sourceInstance;

  /// The username for connecting to on-premises instance.
  final String? username;

  /// Creates a new [OnPremisesConfigurationSqladminV1beta4].
  /// [caCertificate] PEM representation of the trusted CA's x509 certificate.
  /// [clientCertificate] PEM representation of the replica's x509 certificate.
  /// [clientKey] PEM representation of the replica's private key. The corresponsing public key is encoded in the client's certificate.
  /// [dumpFilePath] The dump file to create the Cloud SQL replica.
  /// [hostPort] The host and port of the on-premises instance in host:port format
  /// [kind] This is always `sql#onPremisesConfiguration`.
  /// [password] The password for connecting to on-premises instance.
  /// [sourceInstance] The reference to Cloud SQL instance if the source is Cloud SQL.
  /// [username] The username for connecting to on-premises instance.
  OnPremisesConfigurationSqladminV1beta4({
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
    final map = <String, dynamic>{};
    final caCertificateValue = caCertificate;
    if (caCertificateValue != null) {
      map['caCertificate'] = caCertificateValue;
    }
    final clientCertificateValue = clientCertificate;
    if (clientCertificateValue != null) {
      map['clientCertificate'] = clientCertificateValue;
    }
    final clientKeyValue = clientKey;
    if (clientKeyValue != null) {
      map['clientKey'] = clientKeyValue;
    }
    final dumpFilePathValue = dumpFilePath;
    if (dumpFilePathValue != null) {
      map['dumpFilePath'] = dumpFilePathValue;
    }
    final hostPortValue = hostPort;
    if (hostPortValue != null) {
      map['hostPort'] = hostPortValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    final sourceInstanceValue = sourceInstance;
    if (sourceInstanceValue != null) {
      map['sourceInstance'] = sourceInstanceValue.toMap();
    }
    final usernameValue = username;
    if (usernameValue != null) {
      map['username'] = usernameValue;
    }
    return map;
  }

  factory OnPremisesConfigurationSqladminV1beta4.fromMap(
      Map<String, dynamic> map) {
    return OnPremisesConfigurationSqladminV1beta4(
      caCertificate:
          map['caCertificate'] == null ? null : map['caCertificate'] as String,
      clientCertificate: map['clientCertificate'] == null
          ? null
          : map['clientCertificate'] as String,
      clientKey: map['clientKey'] == null ? null : map['clientKey'] as String,
      dumpFilePath:
          map['dumpFilePath'] == null ? null : map['dumpFilePath'] as String,
      hostPort: map['hostPort'] == null ? null : map['hostPort'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      sourceInstance: map['sourceInstance'] == null
          ? null
          : InstanceReferenceSqladminV1beta4.fromMap(
              (map['sourceInstance'] as Map).cast<String, dynamic>()),
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
