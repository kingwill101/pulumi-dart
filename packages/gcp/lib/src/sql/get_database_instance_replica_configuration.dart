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

  /// Creates a new [GetDatabaseInstanceReplicaConfiguration].
  /// [caCertificate] PEM representation of the trusted CA's x509 certificate.
  /// [cascadableReplica] Specifies if a SQL Server replica is a cascadable replica. A cascadable replica is a SQL Server cross region replica that supports replica(s) under it.
  /// [clientCertificate] PEM representation of the replica's x509 certificate.
  /// [clientKey] PEM representation of the replica's private key. The corresponding public key in encoded in the client_certificate.
  /// [connectRetryInterval] The number of seconds between connect retries. MySQL's default is 60 seconds.
  /// [dumpFilePath] Path to a SQL file in Google Cloud Storage from which replica instances are created. Format is gs://bucket/filename.
  /// [failoverTarget] Specifies if the replica is the failover target. If the field is set to true the replica will be designated as a failover replica. If the master instance fails, the replica instance will be promoted as the new master instance. Not supported for Postgres
  /// [masterHeartbeatPeriod] Time in ms between replication heartbeats.
  /// [password] Password for the replication connection.
  /// [sslCipher] Permissible ciphers for use in SSL encryption.
  /// [username] Username for replication connection.
  /// [verifyServerCertificate] True if the master's common name value is checked during the SSL handshake.
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
    return <String, dynamic>{
      'caCertificate': caCertificate,
      'cascadableReplica': cascadableReplica,
      'clientCertificate': clientCertificate,
      'clientKey': clientKey,
      'connectRetryInterval': connectRetryInterval,
      'dumpFilePath': dumpFilePath,
      'failoverTarget': failoverTarget,
      'masterHeartbeatPeriod': masterHeartbeatPeriod,
      'password': password,
      'sslCipher': sslCipher,
      'username': username,
      'verifyServerCertificate': verifyServerCertificate,
    };
  }

  factory GetDatabaseInstanceReplicaConfiguration.fromMap(Map<String, dynamic> map) {
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

