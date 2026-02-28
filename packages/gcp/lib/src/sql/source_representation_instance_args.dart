// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_source_representation_instance_source_representation_instance_args_doc}
/// The set of arguments for SourceRepresentationInstance.
/// {@endtemplate}
/// {@macro pulumi_sql_source_representation_instance_source_representation_instance_args_doc}
class SourceRepresentationInstanceArgs {
  /// The CA certificate on the external server. Include only if SSL/TLS is used on the external server.
  final pulumi.Input<String>? caCertificate;

  /// The client certificate on the external server. Required only for server-client authentication. Include only if SSL/TLS is used on the external server.
  final pulumi.Input<String>? clientCertificate;

  /// The private key file for the client certificate on the external server. Required only for server-client authentication. Include only if SSL/TLS is used on the external server.
  final pulumi.Input<String>? clientKey;

  /// The MySQL, PostgreSQL or SQL Server (beta) version to use. Supported values include MYSQL_5_6, MYSQL_5_7, MYSQL_8_0, MYSQL_8_4, POSTGRES_9_6, POSTGRES_10, POSTGRES_11, POSTGRES_12, POSTGRES_13, POSTGRES_14, POSTGRES_15, POSTGRES_16, POSTGRES_17. Database Version Policies includes an up-to-date reference of supported versions.
  final pulumi.Input<String> databaseVersion;

  /// A file in the bucket that contains the data from the external server.
  final pulumi.Input<String>? dumpFilePath;

  /// The IPv4 address and port for the external server, or the the DNS address for the external server. If the external server is hosted on Cloud SQL, the port is 5432.
  final pulumi.Input<String> host;

  /// The name of the source representation instance. Use any valid Cloud SQL instance name.
  final pulumi.Input<String>? name;

  /// The password for the replication user account.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? password;

  /// The externally accessible port for the source database server.
  /// Defaults to 3306.
  final pulumi.Input<int>? port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The Region in which the created instance should reside.
  /// If it is not provided, the provider region is used.
  final pulumi.Input<String>? region;

  /// The replication user account on the external server.
  final pulumi.Input<String>? username;

  /// Creates a new [SourceRepresentationInstanceArgs].
  /// [caCertificate] The CA certificate on the external server. Include only if SSL/TLS is used on the external server.
  /// [clientCertificate] The client certificate on the external server. Required only for server-client authentication. Include only if SSL/TLS is used on the external server.
  /// [clientKey] The private key file for the client certificate on the external server. Required only for server-client authentication. Include only if SSL/TLS is used on the external server.
  /// [databaseVersion] The MySQL, PostgreSQL or SQL Server (beta) version to use. Supported values include MYSQL_5_6, MYSQL_5_7, MYSQL_8_0, MYSQL_8_4, POSTGRES_9_6, POSTGRES_10, POSTGRES_11, POSTGRES_12, POSTGRES_13, POSTGRES_14, POSTGRES_15, POSTGRES_16, POSTGRES_17. Database Version Policies includes an up-to-date reference of supported versions.
  /// [dumpFilePath] A file in the bucket that contains the data from the external server.
  /// [host] The IPv4 address and port for the external server, or the the DNS address for the external server. If the external server is hosted on Cloud SQL, the port is 5432.
  /// [name] The name of the source representation instance. Use any valid Cloud SQL instance name.
  /// [password] The password for the replication user account.
  /// [port] The externally accessible port for the source database server.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The Region in which the created instance should reside.
  /// [username] The replication user account on the external server.
  SourceRepresentationInstanceArgs({
    String? caCertificate,
    String? clientCertificate,
    String? clientKey,
    required String databaseVersion,
    String? dumpFilePath,
    required String host,
    String? name,
    String? password,
    int? port,
    String? project,
    String? region,
    String? username,
  })  : caCertificate = pulumi.Input.asOptionalInput<String>(caCertificate),
        clientCertificate =
            pulumi.Input.asOptionalInput<String>(clientCertificate),
        clientKey = pulumi.Input.asOptionalInput<String>(clientKey),
        databaseVersion = pulumi.Input.asInput<String>(databaseVersion),
        dumpFilePath = pulumi.Input.asOptionalInput<String>(dumpFilePath),
        host = pulumi.Input.asInput<String>(host),
        name = pulumi.Input.asOptionalInput<String>(name),
        password = pulumi.Input.asOptionalInput<String>(password),
        port = pulumi.Input.asOptionalInput<int>(port),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asOptionalInput<String>(region),
        username = pulumi.Input.asOptionalInput<String>(username);

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
      caCertificate:
          map['caCertificate'] == null ? null : map['caCertificate'] as String,
      clientCertificate: map['clientCertificate'] == null
          ? null
          : map['clientCertificate'] as String,
      clientKey: map['clientKey'] == null ? null : map['clientKey'] as String,
      databaseVersion: map['databaseVersion'] as String,
      dumpFilePath:
          map['dumpFilePath'] == null ? null : map['dumpFilePath'] as String,
      host: map['host'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
