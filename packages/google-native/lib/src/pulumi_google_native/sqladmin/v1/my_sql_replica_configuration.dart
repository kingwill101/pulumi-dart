// ignore_for_file: unused_element, unnecessary_cast

/// Read-replica configuration specific to MySQL databases.
class MySqlReplicaConfiguration {
  /// PEM representation of the trusted CA's x509 certificate.
  final String? caCertificate;

  /// PEM representation of the replica's x509 certificate.
  final String? clientCertificate;

  /// PEM representation of the replica's private key. The corresponsing public key is encoded in the client's certificate.
  final String? clientKey;

  /// Seconds to wait between connect retries. MySQL's default is 60 seconds.
  final int? connectRetryInterval;

  /// Path to a SQL dump file in Google Cloud Storage from which the replica instance is to be created. The URI is in the form gs://bucketName/fileName. Compressed gzip files (.gz) are also supported. Dumps have the binlog co-ordinates from which replication begins. This can be accomplished by setting --master-data to 1 when using mysqldump.
  final String? dumpFilePath;

  /// This is always `sql#mysqlReplicaConfiguration`.
  final String? kind;

  /// Interval in milliseconds between replication heartbeats.
  final String? masterHeartbeatPeriod;

  /// The password for the replication connection.
  final String? password;

  /// A list of permissible ciphers to use for SSL encryption.
  final String? sslCipher;

  /// The username for the replication connection.
  final String? username;

  /// Whether or not to check the primary instance's Common Name value in the certificate that it sends during the SSL handshake.
  final bool? verifyServerCertificate;

  MySqlReplicaConfiguration({
    this.caCertificate,
    this.clientCertificate,
    this.clientKey,
    this.connectRetryInterval,
    this.dumpFilePath,
    this.kind,
    this.masterHeartbeatPeriod,
    this.password,
    this.sslCipher,
    this.username,
    this.verifyServerCertificate,
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
    final connectRetryIntervalValue = connectRetryInterval;
    if (connectRetryIntervalValue != null) {
      map['connectRetryInterval'] = connectRetryIntervalValue;
    }
    final dumpFilePathValue = dumpFilePath;
    if (dumpFilePathValue != null) {
      map['dumpFilePath'] = dumpFilePathValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final masterHeartbeatPeriodValue = masterHeartbeatPeriod;
    if (masterHeartbeatPeriodValue != null) {
      map['masterHeartbeatPeriod'] = masterHeartbeatPeriodValue;
    }
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    final sslCipherValue = sslCipher;
    if (sslCipherValue != null) {
      map['sslCipher'] = sslCipherValue;
    }
    final usernameValue = username;
    if (usernameValue != null) {
      map['username'] = usernameValue;
    }
    final verifyServerCertificateValue = verifyServerCertificate;
    if (verifyServerCertificateValue != null) {
      map['verifyServerCertificate'] = verifyServerCertificateValue;
    }
    return map;
  }

  factory MySqlReplicaConfiguration.fromMap(Map<String, dynamic> map) {
    return MySqlReplicaConfiguration(
      caCertificate:
          map['caCertificate'] == null ? null : map['caCertificate'] as String,
      clientCertificate: map['clientCertificate'] == null
          ? null
          : map['clientCertificate'] as String,
      clientKey: map['clientKey'] == null ? null : map['clientKey'] as String,
      connectRetryInterval: map['connectRetryInterval'] == null
          ? null
          : map['connectRetryInterval'] as int,
      dumpFilePath:
          map['dumpFilePath'] == null ? null : map['dumpFilePath'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      masterHeartbeatPeriod: map['masterHeartbeatPeriod'] == null
          ? null
          : map['masterHeartbeatPeriod'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      sslCipher: map['sslCipher'] == null ? null : map['sslCipher'] as String,
      username: map['username'] == null ? null : map['username'] as String,
      verifyServerCertificate: map['verifyServerCertificate'] == null
          ? null
          : map['verifyServerCertificate'] as bool,
    );
  }
}
