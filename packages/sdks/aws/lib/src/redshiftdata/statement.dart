import 'package:pulumi/pulumi.dart' as pulumi;
import 'statement_args.dart';
import 'statement_state.dart';

/// Executes a Redshift Data Statement.
///
/// ## Example Usage
///
/// ### cluster_identifier
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshiftdata.Statement("example", {
///     clusterIdentifier: exampleAwsRedshiftCluster.clusterIdentifier,
///     database: exampleAwsRedshiftCluster.databaseName,
///     dbUser: exampleAwsRedshiftCluster.masterUsername,
///     sql: "CREATE GROUP group_name;",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshiftdata.Statement("example",
///     cluster_identifier=example_aws_redshift_cluster["clusterIdentifier"],
///     database=example_aws_redshift_cluster["databaseName"],
///     db_user=example_aws_redshift_cluster["masterUsername"],
///     sql="CREATE GROUP group_name;")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.RedshiftData.Statement("example", new()
///     {
///         ClusterIdentifier = exampleAwsRedshiftCluster.ClusterIdentifier,
///         Database = exampleAwsRedshiftCluster.DatabaseName,
///         DbUser = exampleAwsRedshiftCluster.MasterUsername,
///         Sql = "CREATE GROUP group_name;",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshiftdata"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redshiftdata.NewStatement(ctx, "example", &redshiftdata.StatementArgs{
/// 			ClusterIdentifier: pulumi.Any(exampleAwsRedshiftCluster.ClusterIdentifier),
/// 			Database:          pulumi.Any(exampleAwsRedshiftCluster.DatabaseName),
/// 			DbUser:            pulumi.Any(exampleAwsRedshiftCluster.MasterUsername),
/// 			Sql:               pulumi.String("CREATE GROUP group_name;"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshiftdata.Statement;
/// import com.pulumi.aws.redshiftdata.StatementArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Statement("example", StatementArgs.builder()
///             .clusterIdentifier(exampleAwsRedshiftCluster.clusterIdentifier())
///             .database(exampleAwsRedshiftCluster.databaseName())
///             .dbUser(exampleAwsRedshiftCluster.masterUsername())
///             .sql("CREATE GROUP group_name;")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:redshiftdata:Statement
///     properties:
///       clusterIdentifier: ${exampleAwsRedshiftCluster.clusterIdentifier}
///       database: ${exampleAwsRedshiftCluster.databaseName}
///       dbUser: ${exampleAwsRedshiftCluster.masterUsername}
///       sql: CREATE GROUP group_name;
/// ```
///
///
/// ### workgroup_name
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshiftdata.Statement("example", {
///     workgroupName: exampleAwsRedshiftserverlessWorkgroup.workgroupName,
///     database: "dev",
///     sql: "CREATE GROUP group_name;",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshiftdata.Statement("example",
///     workgroup_name=example_aws_redshiftserverless_workgroup["workgroupName"],
///     database="dev",
///     sql="CREATE GROUP group_name;")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.RedshiftData.Statement("example", new()
///     {
///         WorkgroupName = exampleAwsRedshiftserverlessWorkgroup.WorkgroupName,
///         Database = "dev",
///         Sql = "CREATE GROUP group_name;",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshiftdata"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redshiftdata.NewStatement(ctx, "example", &redshiftdata.StatementArgs{
/// 			WorkgroupName: pulumi.Any(exampleAwsRedshiftserverlessWorkgroup.WorkgroupName),
/// 			Database:      pulumi.String("dev"),
/// 			Sql:           pulumi.String("CREATE GROUP group_name;"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshiftdata.Statement;
/// import com.pulumi.aws.redshiftdata.StatementArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Statement("example", StatementArgs.builder()
///             .workgroupName(exampleAwsRedshiftserverlessWorkgroup.workgroupName())
///             .database("dev")
///             .sql("CREATE GROUP group_name;")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:redshiftdata:Statement
///     properties:
///       workgroupName: ${exampleAwsRedshiftserverlessWorkgroup.workgroupName}
///       database: dev
///       sql: CREATE GROUP group_name;
/// ```
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
  late final pulumi.Output<List<Map<String, dynamic>>?> parameters;

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

  /// Creates a new [Statement].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Statement]. {@macro pulumi_redshiftdata_statement_statement_args_doc}
  /// [options] Resource options controlling this resource's behavior.
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
    clusterIdentifier = registerOutput<String?>('clusterIdentifier');
    database = registerOutput<String>('database');
    dbUser = registerOutput<String?>('dbUser');
    parameters = registerOutput<List<Map<String, dynamic>>?>('parameters');
    region = registerOutput<String>('region');
    secretArn = registerOutput<String?>('secretArn');
    sql = registerOutput<String>('sql');
    statementName = registerOutput<String?>('statementName');
    withEvent = registerOutput<bool?>('withEvent');
    workgroupName = registerOutput<String?>('workgroupName');
  }

  /// Gets an existing [Statement] resource's state with the given [name] and [id].
  static Statement get(
    String name,
    pulumi.Input<String> id, {
    StatementState? state,
  }) {
    return Statement._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Statement._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:redshiftdata/statement:Statement',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clusterIdentifier = registerOutput<String?>('clusterIdentifier');
    database = registerOutput<String>('database');
    dbUser = registerOutput<String?>('dbUser');
    parameters = registerOutput<List<Map<String, dynamic>>?>('parameters');
    region = registerOutput<String>('region');
    secretArn = registerOutput<String?>('secretArn');
    sql = registerOutput<String>('sql');
    statementName = registerOutput<String?>('statementName');
    withEvent = registerOutput<bool?>('withEvent');
    workgroupName = registerOutput<String?>('workgroupName');
  }
}
