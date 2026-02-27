import 'package:pulumi/pulumi.dart' as pulumi;
import '../statement_parameter/statement_parameter.dart';
import 'statement_args.dart';

/// Executes a Redshift Data Statement.
///
/// ## Example Usage
///
/// ### cluster_identifier
///
///
///
/// ### workgroup_name
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Data Statements using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:redshiftdata/statement:Statement example example
/// ```
class Statement extends pulumi.CustomResource {
  /// The cluster identifier. This parameter is required when connecting to a cluster and authenticating using either Secrets Manager or temporary credentials.
  late final pulumi.Output<String?> clusterIdentifier;

  /// The name of the database.
  late final pulumi.Output<String> database;

  /// The database user name.
  late final pulumi.Output<String?> dbUser;
  late final pulumi.Output<List<StatementParameter>?> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The name or ARN of the secret that enables access to the database.
  late final pulumi.Output<String?> secretArn;

  /// The SQL statement text to run.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> sql;

  /// The name of the SQL statement. You can name the SQL statement when you create it to identify the query.
  late final pulumi.Output<String?> statementName;

  /// A value that indicates whether to send an event to the Amazon EventBridge event bus after the SQL statement runs.
  late final pulumi.Output<bool?> withEvent;

  /// The serverless workgroup name. This parameter is required when connecting to a serverless workgroup and authenticating using either Secrets Manager or temporary credentials.
  late final pulumi.Output<String?> workgroupName;

  Statement(
    String name, {
    StatementArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshiftdata/statement:Statement',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterIdentifier = registerOutput<String?>('clusterIdentifier');
    this.database = registerOutput<String>('database');
    this.dbUser = registerOutput<String?>('dbUser');
    this.parameters = registerOutput<List<StatementParameter>?>('parameters');
    this.region = registerOutput<String>('region');
    this.secretArn = registerOutput<String?>('secretArn');
    this.sql = registerOutput<String>('sql');
    this.statementName = registerOutput<String?>('statementName');
    this.withEvent = registerOutput<bool?>('withEvent');
    this.workgroupName = registerOutput<String?>('workgroupName');
  }
}
