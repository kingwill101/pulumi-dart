import 'package:pulumi/pulumi.dart';
import 'source_representation_instance_args.dart';

/// A source representation instance is a Cloud SQL instance that represents
/// the source database server to the Cloud SQL replica. It is visible in the
/// Cloud Console and appears the same as a regular Cloud SQL instance, but it
/// contains no data, requires no configuration or maintenance, and does not
/// affect billing. You cannot update the source representation instance.
///
///
///
///
///
/// ## Example Usage
///
/// ### Sql Source Representation Instance Basic
///
///
///
/// ### Sql Source Representation Instance Postgres
///
///
///
///
/// ## Import
///
/// SourceRepresentationInstance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, SourceRepresentationInstance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:sql/sourceRepresentationInstance:SourceRepresentationInstance default projects/{{project}}/instances/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:sql/sourceRepresentationInstance:SourceRepresentationInstance default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:sql/sourceRepresentationInstance:SourceRepresentationInstance default {{name}}
/// ```
class SourceRepresentationInstance extends CustomResource {
  /// The CA certificate on the external server. Include only if SSL/TLS is used on the external server.
  late final Output<String?> caCertificate;

  /// The client certificate on the external server. Required only for server-client authentication. Include only if SSL/TLS is used on the external server.
  late final Output<String?> clientCertificate;

  /// The private key file for the client certificate on the external server. Required only for server-client authentication. Include only if SSL/TLS is used on the external server.
  late final Output<String?> clientKey;

  /// The MySQL, PostgreSQL or SQL Server (beta) version to use. Supported values include MYSQL_5_6, MYSQL_5_7, MYSQL_8_0, MYSQL_8_4, POSTGRES_9_6, POSTGRES_10, POSTGRES_11, POSTGRES_12, POSTGRES_13, POSTGRES_14, POSTGRES_15, POSTGRES_16, POSTGRES_17. Database Version Policies includes an up-to-date reference of supported versions.
  late final Output<String> databaseVersion;

  /// A file in the bucket that contains the data from the external server.
  late final Output<String?> dumpFilePath;

  /// The IPv4 address and port for the external server, or the the DNS address for the external server. If the external server is hosted on Cloud SQL, the port is 5432.
  late final Output<String> host;

  /// The name of the source representation instance. Use any valid Cloud SQL instance name.
  late final Output<String> name;

  /// The password for the replication user account.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final Output<String?> password;

  /// The externally accessible port for the source database server.
  /// Defaults to 3306.
  late final Output<int?> port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The Region in which the created instance should reside.
  /// If it is not provided, the provider region is used.
  late final Output<String> region;

  /// The replication user account on the external server.
  late final Output<String?> username;

  SourceRepresentationInstance(
    String name, {
    SourceRepresentationInstanceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:sql/sourceRepresentationInstance:SourceRepresentationInstance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.caCertificate = registerOutput<String?>('caCertificate');
    this.clientCertificate = registerOutput<String?>('clientCertificate');
    this.clientKey = registerOutput<String?>('clientKey');
    this.databaseVersion = registerOutput<String>('databaseVersion');
    this.dumpFilePath = registerOutput<String?>('dumpFilePath');
    this.host = registerOutput<String>('host');
    this.name = registerOutput<String>('name');
    this.password = registerOutput<String?>('password');
    this.port = registerOutput<int?>('port');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.username = registerOutput<String?>('username');
  }
}
