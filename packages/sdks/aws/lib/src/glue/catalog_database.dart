import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_database_args.dart';
import 'catalog_database_federated_database.dart';
import 'catalog_database_state.dart';
import 'catalog_database_target_database.dart';

/// Provides a Glue Catalog Database Resource. You can refer to the [Glue Developer Guide](http://docs.aws.amazon.com/glue/latest/dg/populate-data-catalog.html) for a full explanation of the Glue Data Catalog functionality
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.CatalogDatabase("example", {name: "MyCatalogDatabase"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.CatalogDatabase("example", name="MyCatalogDatabase")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Glue.CatalogDatabase("example", new()
///     {
///         Name = "MyCatalogDatabase",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.NewCatalogDatabase(ctx, "example", &glue.CatalogDatabaseArgs{
/// 			Name: pulumi.String("MyCatalogDatabase"),
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
/// import com.pulumi.aws.glue.CatalogDatabase;
/// import com.pulumi.aws.glue.CatalogDatabaseArgs;
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
///         var example = new CatalogDatabase("example", CatalogDatabaseArgs.builder()
///             .name("MyCatalogDatabase")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:CatalogDatabase
///     properties:
///       name: MyCatalogDatabase
/// ```
///
///
/// ### Create Table Default Permissions
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.CatalogDatabase("example", {
///     name: "MyCatalogDatabase",
///     createTableDefaultPermissions: [{
///         permissions: ["SELECT"],
///         principal: {
///             dataLakePrincipalIdentifier: "IAM_ALLOWED_PRINCIPALS",
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.CatalogDatabase("example",
///     name="MyCatalogDatabase",
///     create_table_default_permissions=[{
///         "permissions": ["SELECT"],
///         "principal": {
///             "data_lake_principal_identifier": "IAM_ALLOWED_PRINCIPALS",
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Glue.CatalogDatabase("example", new()
///     {
///         Name = "MyCatalogDatabase",
///         CreateTableDefaultPermissions = new[]
///         {
///             new Aws.Glue.Inputs.CatalogDatabaseCreateTableDefaultPermissionArgs
///             {
///                 Permissions = new[]
///                 {
///                     "SELECT",
///                 },
///                 Principal = new Aws.Glue.Inputs.CatalogDatabaseCreateTableDefaultPermissionPrincipalArgs
///                 {
///                     DataLakePrincipalIdentifier = "IAM_ALLOWED_PRINCIPALS",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.NewCatalogDatabase(ctx, "example", &glue.CatalogDatabaseArgs{
/// 			Name: pulumi.String("MyCatalogDatabase"),
/// 			CreateTableDefaultPermissions: glue.CatalogDatabaseCreateTableDefaultPermissionArray{
/// 				&glue.CatalogDatabaseCreateTableDefaultPermissionArgs{
/// 					Permissions: pulumi.StringArray{
/// 						pulumi.String("SELECT"),
/// 					},
/// 					Principal: &glue.CatalogDatabaseCreateTableDefaultPermissionPrincipalArgs{
/// 						DataLakePrincipalIdentifier: pulumi.String("IAM_ALLOWED_PRINCIPALS"),
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.aws.glue.CatalogDatabase;
/// import com.pulumi.aws.glue.CatalogDatabaseArgs;
/// import com.pulumi.aws.glue.inputs.CatalogDatabaseCreateTableDefaultPermissionArgs;
/// import com.pulumi.aws.glue.inputs.CatalogDatabaseCreateTableDefaultPermissionPrincipalArgs;
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
///         var example = new CatalogDatabase("example", CatalogDatabaseArgs.builder()
///             .name("MyCatalogDatabase")
///             .createTableDefaultPermissions(CatalogDatabaseCreateTableDefaultPermissionArgs.builder()
///                 .permissions("SELECT")
///                 .principal(CatalogDatabaseCreateTableDefaultPermissionPrincipalArgs.builder()
///                     .dataLakePrincipalIdentifier("IAM_ALLOWED_PRINCIPALS")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:CatalogDatabase
///     properties:
///       name: MyCatalogDatabase
///       createTableDefaultPermissions:
///         - permissions:
///             - SELECT
///           principal:
///             dataLakePrincipalIdentifier: IAM_ALLOWED_PRINCIPALS
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue Catalog Databases using the `catalog_id:name`. If you have not set a Catalog ID specify the AWS Account ID that the database is in. For example:
///
/// ```sh
/// $ pulumi import aws:glue/catalogDatabase:CatalogDatabase database 123456789012:my_database
/// ```
class CatalogDatabase extends pulumi.CustomResource {
  /// ARN of the Glue Catalog Database.
  late final pulumi.Output<String> arn;

  /// ID of the Glue Catalog to create the database in. If omitted, this defaults to the AWS Account ID.
  late final pulumi.Output<String> catalogId;

  /// Creates a set of default permissions on the table for principals. See `create_table_default_permission` below.
  late final pulumi.Output<List<Map<String, dynamic>>>
  createTableDefaultPermissions;

  /// Description of the database.
  late final pulumi.Output<String?> description;

  /// Configuration block that references an entity outside the AWS Glue Data Catalog. See `federated_database` below.
  late final pulumi.Output<CatalogDatabaseFederatedDatabase?> federatedDatabase;

  /// Location of the database (for example, an HDFS path).
  late final pulumi.Output<String> locationUri;

  /// Name of the database. The acceptable characters are lowercase letters, numbers, and the underscore character.
  late final pulumi.Output<String> name;

  /// List of key-value pairs that define parameters and properties of the database.
  late final pulumi.Output<Map<String, String>?> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Configuration block for a target database for resource linking. See `target_database` below.
  late final pulumi.Output<CatalogDatabaseTargetDatabase?> targetDatabase;

  /// Creates a new [CatalogDatabase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CatalogDatabase]. {@macro pulumi_glue_catalog_database_catalog_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CatalogDatabase(
    String name, {
    CatalogDatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:glue/catalogDatabase:CatalogDatabase',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    catalogId = registerOutput<String>('catalogId');
    createTableDefaultPermissions = registerOutput<List<Map<String, dynamic>>>(
      'createTableDefaultPermissions',
    );
    description = registerOutput<String?>('description');
    federatedDatabase = registerOutput<CatalogDatabaseFederatedDatabase?>(
      'federatedDatabase',
    );
    locationUri = registerOutput<String>('locationUri');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    targetDatabase = registerOutput<CatalogDatabaseTargetDatabase?>(
      'targetDatabase',
    );
  }

  /// Gets an existing [CatalogDatabase] resource's state with the given [name] and [id].
  static CatalogDatabase get(
    String name,
    pulumi.Input<String> id, {
    CatalogDatabaseState? state,
  }) {
    return CatalogDatabase._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CatalogDatabase._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:glue/catalogDatabase:CatalogDatabase',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    catalogId = registerOutput<String>('catalogId');
    createTableDefaultPermissions = registerOutput<List<Map<String, dynamic>>>(
      'createTableDefaultPermissions',
    );
    description = registerOutput<String?>('description');
    federatedDatabase = registerOutput<CatalogDatabaseFederatedDatabase?>(
      'federatedDatabase',
    );
    locationUri = registerOutput<String>('locationUri');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    targetDatabase = registerOutput<CatalogDatabaseTargetDatabase?>(
      'targetDatabase',
    );
  }
}
