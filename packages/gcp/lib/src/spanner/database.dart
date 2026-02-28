import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_args.dart';
import 'database_encryption_config.dart';

/// A Cloud Spanner Database which is hosted on a Spanner instance.
///
///
/// To get more information about Database, see:
///
/// * [API documentation](https://cloud.google.com/spanner/docs/reference/rest/v1/projects.instances.databases)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/spanner/)
///
/// > **Warning:** On newer versions of the provider, you must explicitly set `deletion_protection=false`
/// (and run `pulumi up` to write the field to state) in order to destroy an instance.
/// It is recommended to not set this field (or set it to true) until you're ready to destroy.
/// On older versions, it is strongly recommended to set `lifecycle { prevent_destroy = true }`
/// on databases in order to prevent accidental data loss.
///
/// ## Example Usage
///
/// ### Spanner Database Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const main = new gcp.spanner.Instance("main", {
///     config: "regional-europe-west1",
///     displayName: "main-instance",
///     numNodes: 1,
/// });
/// const database = new gcp.spanner.Database("database", {
///     instance: main.name,
///     name: "my-database",
///     versionRetentionPeriod: "3d",
///     defaultTimeZone: "UTC",
///     ddls: [
///         "CREATE TABLE t1 (t1 INT64 NOT NULL,) PRIMARY KEY(t1)",
///         "CREATE TABLE t2 (t2 INT64 NOT NULL,) PRIMARY KEY(t2)",
///     ],
///     deletionProtection: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// main = gcp.spanner.Instance("main",
///     config="regional-europe-west1",
///     display_name="main-instance",
///     num_nodes=1)
/// database = gcp.spanner.Database("database",
///     instance=main.name,
///     name="my-database",
///     version_retention_period="3d",
///     default_time_zone="UTC",
///     ddls=[
///         "CREATE TABLE t1 (t1 INT64 NOT NULL,) PRIMARY KEY(t1)",
///         "CREATE TABLE t2 (t2 INT64 NOT NULL,) PRIMARY KEY(t2)",
///     ],
///     deletion_protection=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new Gcp.Spanner.Instance("main", new()
///     {
///         Config = "regional-europe-west1",
///         DisplayName = "main-instance",
///         NumNodes = 1,
///     });
///
///     var database = new Gcp.Spanner.Database("database", new()
///     {
///         Instance = main.Name,
///         Name = "my-database",
///         VersionRetentionPeriod = "3d",
///         DefaultTimeZone = "UTC",
///         Ddls = new[]
///         {
///             "CREATE TABLE t1 (t1 INT64 NOT NULL,) PRIMARY KEY(t1)",
///             "CREATE TABLE t2 (t2 INT64 NOT NULL,) PRIMARY KEY(t2)",
///         },
///         DeletionProtection = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		main, err := spanner.NewInstance(ctx, "main", &spanner.InstanceArgs{
/// 			Config:      pulumi.String("regional-europe-west1"),
/// 			DisplayName: pulumi.String("main-instance"),
/// 			NumNodes:    pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = spanner.NewDatabase(ctx, "database", &spanner.DatabaseArgs{
/// 			Instance:               main.Name,
/// 			Name:                   pulumi.String("my-database"),
/// 			VersionRetentionPeriod: pulumi.String("3d"),
/// 			DefaultTimeZone:        pulumi.String("UTC"),
/// 			Ddls: pulumi.StringArray{
/// 				pulumi.String("CREATE TABLE t1 (t1 INT64 NOT NULL,) PRIMARY KEY(t1)"),
/// 				pulumi.String("CREATE TABLE t2 (t2 INT64 NOT NULL,) PRIMARY KEY(t2)"),
/// 			},
/// 			DeletionProtection: pulumi.Bool(false),
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
/// import com.pulumi.gcp.spanner.Instance;
/// import com.pulumi.gcp.spanner.InstanceArgs;
/// import com.pulumi.gcp.spanner.Database;
/// import com.pulumi.gcp.spanner.DatabaseArgs;
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
///         var main = new Instance("main", InstanceArgs.builder()
///             .config("regional-europe-west1")
///             .displayName("main-instance")
///             .numNodes(1)
///             .build());
///
///         var database = new Database("database", DatabaseArgs.builder()
///             .instance(main.name())
///             .name("my-database")
///             .versionRetentionPeriod("3d")
///             .defaultTimeZone("UTC")
///             .ddls(
///                 "CREATE TABLE t1 (t1 INT64 NOT NULL,) PRIMARY KEY(t1)",
///                 "CREATE TABLE t2 (t2 INT64 NOT NULL,) PRIMARY KEY(t2)")
///             .deletionProtection(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: gcp:spanner:Instance
///     properties:
///       config: regional-europe-west1
///       displayName: main-instance
///       numNodes: 1
///   database:
///     type: gcp:spanner:Database
///     properties:
///       instance: ${main.name}
///       name: my-database
///       versionRetentionPeriod: 3d
///       defaultTimeZone: UTC
///       ddls:
///         - CREATE TABLE t1 (t1 INT64 NOT NULL,) PRIMARY KEY(t1)
///         - CREATE TABLE t2 (t2 INT64 NOT NULL,) PRIMARY KEY(t2)
///       deletionProtection: false
/// ```
///
///
/// ## Import
///
/// Database can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{instance}}/databases/{{name}}`
///
/// * `instances/{{instance}}/databases/{{name}}`
///
/// * `{{project}}/{{instance}}/{{name}}`
///
/// * `{{instance}}/{{name}}`
///
/// When using the `pulumi import` command, Database can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:spanner/database:Database default projects/{{project}}/instances/{{instance}}/databases/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:spanner/database:Database default instances/{{instance}}/databases/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:spanner/database:Database default {{project}}/{{instance}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:spanner/database:Database default {{instance}}/{{name}}
/// ```
class Database extends pulumi.CustomResource {
  /// The dialect of the Cloud Spanner Database.
  /// If it is not provided, "GOOGLE_STANDARD_SQL" will be used.
  /// Possible values are: `GOOGLE_STANDARD_SQL`, `POSTGRESQL`.
  late final pulumi.Output<String> databaseDialect;
  late final pulumi.Output<List<String>?> ddls;

  /// The default time zone for the database. The default time zone must be a valid name
  /// from the tz database. Default value is "America/Los_angeles".
  late final pulumi.Output<String?> defaultTimeZone;

  /// Whether or not to allow the provider to destroy the instance. Unless this field is set to false
  /// in state, a `destroy` or `update` that would delete the instance will fail.
  late final pulumi.Output<bool?> deletionProtection;
  late final pulumi.Output<bool?> enableDropProtection;

  /// Encryption configuration for the database
  /// Structure is documented below.
  late final pulumi.Output<DatabaseEncryptionConfig?> encryptionConfig;

  /// The instance to create the database on.
  late final pulumi.Output<String> instance;

  /// A unique identifier for the database, which cannot be changed after the
  /// instance is created. Values are of the form `[a-z][-_a-z0-9]*[a-z0-9]`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// An explanation of the status of the database.
  late final pulumi.Output<String> state;

  /// The retention period for the database. The retention period must be between 1 hour
  /// and 7 days, and can be specified in days, hours, minutes, or seconds. For example,
  /// the values 1d, 24h, 1440m, and 86400s are equivalent. Default value is 1h.
  /// If this property is used, you must avoid adding new DDL statements to `ddl` that
  /// update the database's version_retention_period.
  late final pulumi.Output<String> versionRetentionPeriod;

  /// Creates a new [Database].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Database]. {@macro pulumi_spanner_database_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Database(
    String name, {
    DatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:spanner/database:Database',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.databaseDialect = registerOutput<String>('databaseDialect');
    this.ddls = registerOutput<List<String>?>('ddls');
    this.defaultTimeZone = registerOutput<String?>('defaultTimeZone');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.enableDropProtection = registerOutput<bool?>('enableDropProtection');
    this.encryptionConfig =
        registerOutput<DatabaseEncryptionConfig?>('encryptionConfig');
    this.instance = registerOutput<String>('instance');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.versionRetentionPeriod =
        registerOutput<String>('versionRetentionPeriod');
  }
}
