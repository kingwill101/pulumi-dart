// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SourceRepresentationInstance.
class SourceRepresentationInstanceArgs {
  /// The CA certificate on the external server. Include only if SSL/TLS is used on the external server.
  final Input<String>? caCertificate;

  /// The client certificate on the external server. Required only for server-client authentication. Include only if SSL/TLS is used on the external server.
  final Input<String>? clientCertificate;

  /// The private key file for the client certificate on the external server. Required only for server-client authentication. Include only if SSL/TLS is used on the external server.
  final Input<String>? clientKey;

  /// The MySQL, PostgreSQL or SQL Server (beta) version to use. Supported values include MYSQL_5_6, MYSQL_5_7, MYSQL_8_0, MYSQL_8_4, POSTGRES_9_6, POSTGRES_10, POSTGRES_11, POSTGRES_12, POSTGRES_13, POSTGRES_14, POSTGRES_15, POSTGRES_16, POSTGRES_17. Database Version Policies includes an up-to-date reference of supported versions.
  final Input<String> databaseVersion;

  /// A file in the bucket that contains the data from the external server.
  final Input<String>? dumpFilePath;

  /// The IPv4 address and port for the external server, or the the DNS address for the external server. If the external server is hosted on Cloud SQL, the port is 5432.
  final Input<String> host;

  /// The name of the source representation instance. Use any valid Cloud SQL instance name.
  final Input<String>? name;

  /// The password for the replication user account.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final Input<String>? password;

  /// The externally accessible port for the source database server.
  /// Defaults to 3306.
  final Input<int>? port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The Region in which the created instance should reside.
  /// If it is not provided, the provider region is used.
  final Input<String>? region;

  /// The replication user account on the external server.
  final Input<String>? username;

  SourceRepresentationInstanceArgs({
    this.caCertificate,
    this.clientCertificate,
    this.clientKey,
    required this.databaseVersion,
    this.dumpFilePath,
    required this.host,
    this.name,
    this.password,
    this.port,
    this.project,
    this.region,
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
    map['databaseVersion'] = databaseVersion;
    final dumpFilePathValue = dumpFilePath;
    if (dumpFilePathValue != null) {
      map['dumpFilePath'] = dumpFilePathValue;
    }
    map['host'] = host;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final usernameValue = username;
    if (usernameValue != null) {
      map['username'] = usernameValue;
    }
    return map;
  }

  factory SourceRepresentationInstanceArgs.fromMap(Map<String, dynamic> map) {
    return SourceRepresentationInstanceArgs(
      caCertificate: Input.asOptionalInput<String>(map['caCertificate']),
      clientCertificate:
          Input.asOptionalInput<String>(map['clientCertificate']),
      clientKey: Input.asOptionalInput<String>(map['clientKey']),
      databaseVersion: Input.asInput<String>(map['databaseVersion']),
      dumpFilePath: Input.asOptionalInput<String>(map['dumpFilePath']),
      host: Input.asInput<String>(map['host']),
      name: Input.asOptionalInput<String>(map['name']),
      password: Input.asOptionalInput<String>(map['password']),
      port: Input.asOptionalInput<int>(map['port']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      username: Input.asOptionalInput<String>(map['username']),
    );
  }
}
