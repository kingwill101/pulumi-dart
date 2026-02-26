// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstanceReplicaConfiguration {
  /// PEM representation of the trusted CA's x509 certificate.
  final String caCertificate;

  /// Specifies if a SQL Server replica is a cascadable replica. A cascadable replica is a SQL Server cross region replica that supports replica(s) under it.
  final bool cascadableReplica;

  /// PEM representation of the replica's x509 certificate.
  final String clientCertificate;

  /// PEM representation of the replica's private key. The corresponding public key in encoded in the client_certificate.
  final String clientKey;

  /// The number of seconds between connect retries. MySQL's default is 60 seconds.
  final int connectRetryInterval;

  /// Path to a SQL file in Google Cloud Storage from which replica instances are created. Format is gs://bucket/filename.
  final String dumpFilePath;

  /// Specifies if the replica is the failover target. If the field is set to true the replica will be designated as a failover replica. If the master instance fails, the replica instance will be promoted as the new master instance. Not supported for Postgres
  final bool failoverTarget;

  /// Time in ms between replication heartbeats.
  final int masterHeartbeatPeriod;

  /// Password for the replication connection.
  final String password;

  /// Permissible ciphers for use in SSL encryption.
  final String sslCipher;

  /// Username for replication connection.
  final String username;

  /// True if the master's common name value is checked during the SSL handshake.
  final bool verifyServerCertificate;

  GetDatabaseInstanceReplicaConfiguration({
    required this.caCertificate,
    required this.cascadableReplica,
    required this.clientCertificate,
    required this.clientKey,
    required this.connectRetryInterval,
    required this.dumpFilePath,
    required this.failoverTarget,
    required this.masterHeartbeatPeriod,
    required this.password,
    required this.sslCipher,
    required this.username,
    required this.verifyServerCertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caCertificate'] = caCertificate;
    map['cascadableReplica'] = cascadableReplica;
    map['clientCertificate'] = clientCertificate;
    map['clientKey'] = clientKey;
    map['connectRetryInterval'] = connectRetryInterval;
    map['dumpFilePath'] = dumpFilePath;
    map['failoverTarget'] = failoverTarget;
    map['masterHeartbeatPeriod'] = masterHeartbeatPeriod;
    map['password'] = password;
    map['sslCipher'] = sslCipher;
    map['username'] = username;
    map['verifyServerCertificate'] = verifyServerCertificate;
    return map;
  }

  factory GetDatabaseInstanceReplicaConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstanceReplicaConfiguration(
      caCertificate: map['caCertificate'] as String,
      cascadableReplica: map['cascadableReplica'] as bool,
      clientCertificate: map['clientCertificate'] as String,
      clientKey: map['clientKey'] as String,
      connectRetryInterval: map['connectRetryInterval'] as int,
      dumpFilePath: map['dumpFilePath'] as String,
      failoverTarget: map['failoverTarget'] as bool,
      masterHeartbeatPeriod: map['masterHeartbeatPeriod'] as int,
      password: map['password'] as String,
      sslCipher: map['sslCipher'] as String,
      username: map['username'] as String,
      verifyServerCertificate: map['verifyServerCertificate'] as bool,
    );
  }
}
