// ignore_for_file: unused_element, unnecessary_cast

class DatabaseInstanceReplicaConfiguration {
  /// PEM representation of the trusted CA's x509
  /// certificate.
  final String? caCertificate;

  /// Specifies if the replica is a cascadable replica. If true, instance must be in different region from primary.
  ///
  /// > **NOTE:** Only supported for SQL Server database.
  final bool? cascadableReplica;

  /// PEM representation of the replica's x509
  /// certificate.
  final String? clientCertificate;

  /// PEM representation of the replica's private key. The
  /// corresponding public key in encoded in the <span pulumi-lang-nodejs="`clientCertificate`" pulumi-lang-dotnet="`ClientCertificate`" pulumi-lang-go="`clientCertificate`" pulumi-lang-python="`client_certificate`" pulumi-lang-yaml="`clientCertificate`" pulumi-lang-java="`clientCertificate`">`client_certificate`</span>.
  final String? clientKey;

  /// The number of seconds
  /// between connect retries. MySQL's default is 60 seconds.
  final int? connectRetryInterval;

  /// Path to a SQL file in GCS from which replica
  /// instances are created. Format is `gs://bucket/filename`. Note, if the master
  /// instance is a source representation instance this field must be present.
  final String? dumpFilePath;

  /// Specifies if the replica is the failover target.
  /// If the field is set to true the replica will be designated as a failover replica.
  /// If the master instance fails, the replica instance will be promoted as
  /// the new master instance.
  /// > **NOTE:** Not supported for Postgres database.
  final bool? failoverTarget;

  /// Time in ms between replication
  /// heartbeats.
  final int? masterHeartbeatPeriod;

  /// Password for the replication connection.
  final String? password;

  /// Permissible ciphers for use in SSL encryption.
  final String? sslCipher;

  /// Username for replication connection.
  final String? username;

  /// True if the master's common name
  /// value is checked during the SSL handshake.
  final bool? verifyServerCertificate;

  DatabaseInstanceReplicaConfiguration({
    this.caCertificate,
    this.cascadableReplica,
    this.clientCertificate,
    this.clientKey,
    this.connectRetryInterval,
    this.dumpFilePath,
    this.failoverTarget,
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
    final cascadableReplicaValue = cascadableReplica;
    if (cascadableReplicaValue != null) {
      map['cascadableReplica'] = cascadableReplicaValue;
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
    final failoverTargetValue = failoverTarget;
    if (failoverTargetValue != null) {
      map['failoverTarget'] = failoverTargetValue;
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

  factory DatabaseInstanceReplicaConfiguration.fromMap(
      Map<String, dynamic> map) {
    return DatabaseInstanceReplicaConfiguration(
      caCertificate:
          map['caCertificate'] == null ? null : map['caCertificate'] as String,
      cascadableReplica: map['cascadableReplica'] == null
          ? null
          : map['cascadableReplica'] as bool,
      clientCertificate: map['clientCertificate'] == null
          ? null
          : map['clientCertificate'] as String,
      clientKey: map['clientKey'] == null ? null : map['clientKey'] as String,
      connectRetryInterval: map['connectRetryInterval'] == null
          ? null
          : map['connectRetryInterval'] as int,
      dumpFilePath:
          map['dumpFilePath'] == null ? null : map['dumpFilePath'] as String,
      failoverTarget:
          map['failoverTarget'] == null ? null : map['failoverTarget'] as bool,
      masterHeartbeatPeriod: map['masterHeartbeatPeriod'] == null
          ? null
          : map['masterHeartbeatPeriod'] as int,
      password: map['password'] == null ? null : map['password'] as String,
      sslCipher: map['sslCipher'] == null ? null : map['sslCipher'] as String,
      username: map['username'] == null ? null : map['username'] as String,
      verifyServerCertificate: map['verifyServerCertificate'] == null
          ? null
          : map['verifyServerCertificate'] as bool,
    );
  }
}
