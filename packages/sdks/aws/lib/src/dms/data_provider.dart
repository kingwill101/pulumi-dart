import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_provider_args.dart';
import 'data_provider_settings.dart';
import 'data_provider_state.dart';

/// Manages an AWS DMS (Database Migration) Data Provider. A data provider stores the database engine and connection settings for a database used in a migration project. Creating a data provider does not create a database.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dms.DataProvider("example", {
///     settings: {
///         postgresqlSettings: {
///             serverName: "example.com",
///             port: 5432,
///             databaseName: "example",
///             sslMode: "none",
///         },
///     },
///     engine: "postgres",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dms.DataProvider("example",
///     settings={
///         "postgresql_settings": {
///             "server_name": "example.com",
///             "port": 5432,
///             "database_name": "example",
///             "ssl_mode": "none",
///         },
///     },
///     engine="postgres")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Dms.DataProvider("example", new()
///     {
///         Settings = new Aws.Dms.Inputs.DataProviderSettingsArgs
///         {
///             PostgresqlSettings = new Aws.Dms.Inputs.DataProviderSettingsPostgresqlSettingsArgs
///             {
///                 ServerName = "example.com",
///                 Port = 5432,
///                 DatabaseName = "example",
///                 SslMode = "none",
///             },
///         },
///         Engine = "postgres",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dms.NewDataProvider(ctx, "example", &dms.DataProviderArgs{
/// 			Settings: &dms.DataProviderSettingsArgs{
/// 				PostgresqlSettings: &dms.DataProviderSettingsPostgresqlSettingsArgs{
/// 					ServerName:   pulumi.String("example.com"),
/// 					Port:         pulumi.Int(5432),
/// 					DatabaseName: pulumi.String("example"),
/// 					SslMode:      pulumi.String("none"),
/// 				},
/// 			},
/// 			Engine: pulumi.String("postgres"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_dms_dataprovider" "example" {
///   settings = {
///     postgresql_settings = {
///       server_name   = "example.com"
///       port          = 5432
///       database_name = "example"
///       ssl_mode      = "none"
///     }
///   }
///   engine = "postgres"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.dms.DataProvider;
/// import com.pulumi.aws.dms.DataProviderArgs;
/// import com.pulumi.aws.dms.inputs.DataProviderSettingsArgs;
/// import com.pulumi.aws.dms.inputs.DataProviderSettingsPostgresqlSettingsArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new DataProvider("example", DataProviderArgs.builder()
///             .settings(DataProviderSettingsArgs.builder()
///                 .postgresqlSettings(DataProviderSettingsPostgresqlSettingsArgs.builder()
///                     .serverName("example.com")
///                     .port(5432)
///                     .databaseName("example")
///                     .sslMode("none")
///                     .build())
///                 .build())
///             .engine("postgres")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:dms:DataProvider
///     properties:
///       settings:
///         postgresqlSettings:
///           serverName: example.com
///           port: 5432
///           databaseName: example
///           sslMode: none
///       engine: postgres
/// ```
///
///
/// ### MySQL Data Provider
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dms.DataProvider("example", {
///     settings: {
///         mysqlSettings: {
///             serverName: "mysql.example.com",
///             port: 3306,
///             sslMode: "require",
///         },
///     },
///     name: "example-mysql",
///     description: "Example MySQL data provider",
///     engine: "mysql",
///     tags: {
///         Environment: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dms.DataProvider("example",
///     settings={
///         "mysql_settings": {
///             "server_name": "mysql.example.com",
///             "port": 3306,
///             "ssl_mode": "require",
///         },
///     },
///     name="example-mysql",
///     description="Example MySQL data provider",
///     engine="mysql",
///     tags={
///         "Environment": "example",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Dms.DataProvider("example", new()
///     {
///         Settings = new Aws.Dms.Inputs.DataProviderSettingsArgs
///         {
///             MysqlSettings = new Aws.Dms.Inputs.DataProviderSettingsMysqlSettingsArgs
///             {
///                 ServerName = "mysql.example.com",
///                 Port = 3306,
///                 SslMode = "require",
///             },
///         },
///         Name = "example-mysql",
///         Description = "Example MySQL data provider",
///         Engine = "mysql",
///         Tags =
///         {
///             { "Environment", "example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dms.NewDataProvider(ctx, "example", &dms.DataProviderArgs{
/// 			Settings: &dms.DataProviderSettingsArgs{
/// 				MysqlSettings: &dms.DataProviderSettingsMysqlSettingsArgs{
/// 					ServerName: pulumi.String("mysql.example.com"),
/// 					Port:       pulumi.Int(3306),
/// 					SslMode:    pulumi.String("require"),
/// 				},
/// 			},
/// 			Name:        pulumi.String("example-mysql"),
/// 			Description: pulumi.String("Example MySQL data provider"),
/// 			Engine:      pulumi.String("mysql"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_dms_dataprovider" "example" {
///   settings = {
///     mysql_settings = {
///       server_name = "mysql.example.com"
///       port        = 3306
///       ssl_mode    = "require"
///     }
///   }
///   name        = "example-mysql"
///   description = "Example MySQL data provider"
///   engine      = "mysql"
///   tags = {
///     "Environment" = "example"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.dms.DataProvider;
/// import com.pulumi.aws.dms.DataProviderArgs;
/// import com.pulumi.aws.dms.inputs.DataProviderSettingsArgs;
/// import com.pulumi.aws.dms.inputs.DataProviderSettingsMysqlSettingsArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new DataProvider("example", DataProviderArgs.builder()
///             .settings(DataProviderSettingsArgs.builder()
///                 .mysqlSettings(DataProviderSettingsMysqlSettingsArgs.builder()
///                     .serverName("mysql.example.com")
///                     .port(3306)
///                     .sslMode("require")
///                     .build())
///                 .build())
///             .name("example-mysql")
///             .description("Example MySQL data provider")
///             .engine("mysql")
///             .tags(Map.of("Environment", "example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:dms:DataProvider
///     properties:
///       settings:
///         mysqlSettings:
///           serverName: mysql.example.com
///           port: 3306
///           sslMode: require
///       name: example-mysql
///       description: Example MySQL data provider
///       engine: mysql
///       tags:
///         Environment: example
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `arn` (String) ARN of the data provider.
///
///
/// Using `pulumi import`, import a DMS data provider using its full ARN. For example:
///
/// ```sh
/// $ pulumi import aws:dms/dataProvider:DataProvider example arn:aws:dms:us-east-1:123456789012:data-provider:EXAMPLEABCDEFGHIJKLMNOPQRS
/// ```
class DataProvider extends pulumi.CustomResource {
  /// ARN of the data provider.
  late final pulumi.Output<String> arn;
  /// Creation time of the data provider in RFC3339 format.
  late final pulumi.Output<String> creationTime;
  /// Description of the data provider.
  late final pulumi.Output<String?> description;
  /// Database engine for the data provider. Valid values: `aurora`, `aurora-postgresql`, `db2`, `db2-zos`, `docdb`, `mariadb`, `mongodb`, `mysql`, `oracle`, `postgres`, `redshift`, `sqlserver`, and `sybase`. Use `aurora` for Amazon Aurora MySQL-Compatible Edition.
  late final pulumi.Output<String> engine;
  /// Name of the data provider. AWS generates a name when omitted.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Database connection settings. Configure exactly one block matching `engine`. See `settings` Block below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<DataProviderSettings> settings;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Whether to create a virtual data provider, which does not require a connection to a database. Defaults to `false`.
  late final pulumi.Output<bool> virtual;

  /// Creates a new [DataProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataProvider]. {@macro pulumi_dms_data_provider_data_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataProvider(
    String name, {
    DataProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dms/dataProvider:DataProvider',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.47.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    creationTime = registerOutput<String>('creationTime');
    description = registerOutput<String?>('description');
    engine = registerOutput<String>('engine');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    settings = registerOutput<DataProviderSettings>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataProviderSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    virtual = registerOutput<bool>('virtual');
  }

  /// Gets an existing [DataProvider] resource's state with the given [name] and [id].
  static DataProvider get(
    String name,
    pulumi.Input<String> id, {
    DataProviderState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DataProvider._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DataProvider._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dms/dataProvider:DataProvider',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    creationTime = registerOutput<String>('creationTime');
    description = registerOutput<String?>('description');
    engine = registerOutput<String>('engine');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    settings = registerOutput<DataProviderSettings>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataProviderSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    virtual = registerOutput<bool>('virtual');
  }

  /// Creates a typed reference to an existing [DataProvider] resource.
  DataProvider.reference(String urn)
    : super(
        'aws:dms/dataProvider:DataProvider',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    creationTime = registerOutput<String>('creationTime');
    description = registerOutput<String?>('description');
    engine = registerOutput<String>('engine');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    settings = registerOutput<DataProviderSettings>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataProviderSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    virtual = registerOutput<bool>('virtual');
  }
}
