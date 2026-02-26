// ignore_for_file: unused_element, unnecessary_cast

/// Read-replica configuration specific to MySQL databases.
class MySqlReplicaConfigurationResponse2 {
  /// PEM representation of the trusted CA's x509 certificate.
  final String caCertificate;

  /// PEM representation of the replica's x509 certificate.
  final String clientCertificate;

  /// PEM representation of the replica's private key. The corresponsing public key is encoded in the client's certificate.
  final String clientKey;

  /// Seconds to wait between connect retries. MySQL's default is 60 seconds.
  final int connectRetryInterval;

  /// Path to a SQL dump file in Google Cloud Storage from which the replica instance is to be created. The URI is in the form gs://bucketName/fileName. Compressed gzip files (.gz) are also supported. Dumps have the binlog co-ordinates from which replication begins. This can be accomplished by setting --master-data to 1 when using mysqldump.
  final String dumpFilePath;

  /// This is always `sql#mysqlReplicaConfiguration`.
  final String kind;

  /// Interval in milliseconds between replication heartbeats.
  final String masterHeartbeatPeriod;

  /// The password for the replication connection.
  final String password;

  /// A list of permissible ciphers to use for SSL encryption.
  final String sslCipher;

  /// The username for the replication connection.
  final String username;

  /// Whether or not to check the primary instance's Common Name value in the certificate that it sends during the SSL handshake.
  final bool verifyServerCertificate;

  MySqlReplicaConfigurationResponse2({
    required this.caCertificate,
    required this.clientCertificate,
    required this.clientKey,
    required this.connectRetryInterval,
    required this.dumpFilePath,
    required this.kind,
    required this.masterHeartbeatPeriod,
    required this.password,
    required this.sslCipher,
    required this.username,
    required this.verifyServerCertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caCertificate'] = caCertificate;
    map['clientCertificate'] = clientCertificate;
    map['clientKey'] = clientKey;
    map['connectRetryInterval'] = connectRetryInterval;
    map['dumpFilePath'] = dumpFilePath;
    map['kind'] = kind;
    map['masterHeartbeatPeriod'] = masterHeartbeatPeriod;
    map['password'] = password;
    map['sslCipher'] = sslCipher;
    map['username'] = username;
    map['verifyServerCertificate'] = verifyServerCertificate;
    return map;
  }

  factory MySqlReplicaConfigurationResponse2.fromMap(Map<String, dynamic> map) {
    return MySqlReplicaConfigurationResponse2(
      caCertificate: map['caCertificate'] as String,
      clientCertificate: map['clientCertificate'] as String,
      clientKey: map['clientKey'] as String,
      connectRetryInterval: map['connectRetryInterval'] as int,
      dumpFilePath: map['dumpFilePath'] as String,
      kind: map['kind'] as String,
      masterHeartbeatPeriod: map['masterHeartbeatPeriod'] as String,
      password: map['password'] as String,
      sslCipher: map['sslCipher'] as String,
      username: map['username'] as String,
      verifyServerCertificate: map['verifyServerCertificate'] as bool,
    );
  }
}
