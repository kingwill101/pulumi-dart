import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_database_args.dart';
import 'catalog_database_create_table_default_permission.dart';
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_glue_catalogdatabase" "example" {
///   name = "MyCatalogDatabase"
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
///     createTableDefaultPermissions: [{
///         principal: {
///             dataLakePrincipalIdentifier: "IAM_ALLOWED_PRINCIPALS",
///         },
///         permissions: ["SELECT"],
///     }],
///     name: "MyCatalogDatabase",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.CatalogDatabase("example",
///     create_table_default_permissions=[{
///         "principal": {
///             "data_lake_principal_identifier": "IAM_ALLOWED_PRINCIPALS",
///         },
///         "permissions": ["SELECT"],
///     }],
///     name="MyCatalogDatabase")
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
///         CreateTableDefaultPermissions = new[]
///         {
///             new Aws.Glue.Inputs.CatalogDatabaseCreateTableDefaultPermissionArgs
///             {
///                 Principal = new Aws.Glue.Inputs.CatalogDatabaseCreateTableDefaultPermissionPrincipalArgs
///                 {
///                     DataLakePrincipalIdentifier = "IAM_ALLOWED_PRINCIPALS",
///                 },
///                 Permissions = new[]
///                 {
///                     "SELECT",
///                 },
///             },
///         },
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
/// 			CreateTableDefaultPermissions: glue.CatalogDatabaseCreateTableDefaultPermissionArray{
/// 				&glue.CatalogDatabaseCreateTableDefaultPermissionArgs{
/// 					Principal: &glue.CatalogDatabaseCreateTableDefaultPermissionPrincipalArgs{
/// 						DataLakePrincipalIdentifier: pulumi.String("IAM_ALLOWED_PRINCIPALS"),
/// 					},
/// 					Permissions: pulumi.StringArray{
/// 						pulumi.String("SELECT"),
/// 					},
/// 				},
/// 			},
/// 			Name: pulumi.String("MyCatalogDatabase"),
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
/// resource "aws_glue_catalogdatabase" "example" {
///   create_table_default_permissions {
///     principal = {
///       data_lake_principal_identifier = "IAM_ALLOWED_PRINCIPALS"
///     }
///     permissions = ["SELECT"]
///   }
///   name = "MyCatalogDatabase"
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
///         var example = new CatalogDatabase("example", CatalogDatabaseArgs.builder()
///             .createTableDefaultPermissions(CatalogDatabaseCreateTableDefaultPermissionArgs.builder()
///                 .principal(CatalogDatabaseCreateTableDefaultPermissionPrincipalArgs.builder()
///                     .dataLakePrincipalIdentifier("IAM_ALLOWED_PRINCIPALS")
///                     .build())
///                 .permissions("SELECT")
///                 .build())
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
///       createTableDefaultPermissions:
///         - principal:
///             dataLakePrincipalIdentifier: IAM_ALLOWED_PRINCIPALS
///           permissions:
///             - SELECT
///       name: MyCatalogDatabase
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
  /// Creates a set of default permissions on the table for principals. See `createTableDefaultPermission` below.
  late final pulumi.Output<List<CatalogDatabaseCreateTableDefaultPermission>> createTableDefaultPermissions;
  /// Description of the database.
  late final pulumi.Output<String?> description;
  /// Configuration block that references an entity outside the AWS Glue Data Catalog. See `federatedDatabase` below.
  late final pulumi.Output<CatalogDatabaseFederatedDatabase?> federatedDatabase;
  /// Location of the database (for example, an HDFS path).
  late final pulumi.Output<String> locationUri;
  /// Name of the database. The acceptable characters are lowercase letters, numbers, and the underscore character.
  late final pulumi.Output<String> name;
  /// List of key-value pairs that define parameters and properties of the database.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Configuration block for a target database for resource linking. See `targetDatabase` below.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    catalogId = registerOutput<String>('catalogId');
    createTableDefaultPermissions = registerOutput<List<CatalogDatabaseCreateTableDefaultPermission>>('createTableDefaultPermissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CatalogDatabaseCreateTableDefaultPermission>(guardedValue, (value) => CatalogDatabaseCreateTableDefaultPermission.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    federatedDatabase = registerOutput<CatalogDatabaseFederatedDatabase?>('federatedDatabase', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CatalogDatabaseFederatedDatabase.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    locationUri = registerOutput<String>('locationUri');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetDatabase = registerOutput<CatalogDatabaseTargetDatabase?>('targetDatabase', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CatalogDatabaseTargetDatabase.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [CatalogDatabase] resource's state with the given [name] and [id].
  static CatalogDatabase get(
    String name,
    pulumi.Input<String> id, {
    CatalogDatabaseState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CatalogDatabase._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    createTableDefaultPermissions = registerOutput<List<CatalogDatabaseCreateTableDefaultPermission>>('createTableDefaultPermissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CatalogDatabaseCreateTableDefaultPermission>(guardedValue, (value) => CatalogDatabaseCreateTableDefaultPermission.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    federatedDatabase = registerOutput<CatalogDatabaseFederatedDatabase?>('federatedDatabase', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CatalogDatabaseFederatedDatabase.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    locationUri = registerOutput<String>('locationUri');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetDatabase = registerOutput<CatalogDatabaseTargetDatabase?>('targetDatabase', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CatalogDatabaseTargetDatabase.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [CatalogDatabase] resource.
  CatalogDatabase.reference(String urn)
    : super(
        'aws:glue/catalogDatabase:CatalogDatabase',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    catalogId = registerOutput<String>('catalogId');
    createTableDefaultPermissions = registerOutput<List<CatalogDatabaseCreateTableDefaultPermission>>('createTableDefaultPermissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CatalogDatabaseCreateTableDefaultPermission>(guardedValue, (value) => CatalogDatabaseCreateTableDefaultPermission.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    federatedDatabase = registerOutput<CatalogDatabaseFederatedDatabase?>('federatedDatabase', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CatalogDatabaseFederatedDatabase.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    locationUri = registerOutput<String>('locationUri');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetDatabase = registerOutput<CatalogDatabaseTargetDatabase?>('targetDatabase', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CatalogDatabaseTargetDatabase.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
