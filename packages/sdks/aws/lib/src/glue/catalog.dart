import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_args.dart';
import 'catalog_catalog_properties.dart';
import 'catalog_create_database_default_permission.dart';
import 'catalog_create_table_default_permission.dart';
import 'catalog_federated_catalog.dart';
import 'catalog_state.dart';
import 'catalog_target_redshift_catalog.dart';
import 'catalog_timeouts.dart';

/// Manages an AWS Glue Catalog.
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
/// const example = new aws.glue.Catalog("example", {
///     name: "example",
///     description: "Example Glue Catalog",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Catalog("example",
///     name="example",
///     description="Example Glue Catalog")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Glue.Catalog("example", new()
///     {
///         Name = "example",
///         Description = "Example Glue Catalog",
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
/// 		_, err := glue.NewCatalog(ctx, "example", &glue.CatalogArgs{
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("Example Glue Catalog"),
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
/// resource "aws_glue_catalog" "example" {
///   name        = "example"
///   description = "Example Glue Catalog"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.glue.Catalog;
/// import com.pulumi.aws.glue.CatalogArgs;
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
///         var example = new Catalog("example", CatalogArgs.builder()
///             .name("example")
///             .description("Example Glue Catalog")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:Catalog
///     properties:
///       name: example
///       description: Example Glue Catalog
/// ```
///
///
/// ### With Parameters
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Catalog("example", {
///     name: "example",
///     description: "Example Glue Catalog",
///     parameters: {
///         key1: "value1",
///         key2: "value2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Catalog("example",
///     name="example",
///     description="Example Glue Catalog",
///     parameters={
///         "key1": "value1",
///         "key2": "value2",
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
///     var example = new Aws.Glue.Catalog("example", new()
///     {
///         Name = "example",
///         Description = "Example Glue Catalog",
///         Parameters =
///         {
///             { "key1", "value1" },
///             { "key2", "value2" },
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
/// 		_, err := glue.NewCatalog(ctx, "example", &glue.CatalogArgs{
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("Example Glue Catalog"),
/// 			Parameters: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 				"key2": pulumi.String("value2"),
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
/// resource "aws_glue_catalog" "example" {
///   name        = "example"
///   description = "Example Glue Catalog"
///   parameters = {
///     "key1" = "value1"
///     "key2" = "value2"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.glue.Catalog;
/// import com.pulumi.aws.glue.CatalogArgs;
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
///         var example = new Catalog("example", CatalogArgs.builder()
///             .name("example")
///             .description("Example Glue Catalog")
///             .parameters(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key2", "value2")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:Catalog
///     properties:
///       name: example
///       description: Example Glue Catalog
///       parameters:
///         key1: value1
///         key2: value2
/// ```
///
///
/// ### With Catalog Properties
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Catalog("example", {
///     catalogProperties: {
///         dataLakeAccessProperties: {
///             dataLakeAccess: true,
///             catalogType: "aws:glue:datacatalog",
///         },
///         customProperties: {
///             property1: "value1",
///         },
///     },
///     name: "example",
///     description: "Example Glue Catalog with data lake access",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Catalog("example",
///     catalog_properties={
///         "data_lake_access_properties": {
///             "data_lake_access": True,
///             "catalog_type": "aws:glue:datacatalog",
///         },
///         "custom_properties": {
///             "property1": "value1",
///         },
///     },
///     name="example",
///     description="Example Glue Catalog with data lake access")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Glue.Catalog("example", new()
///     {
///         CatalogProperties = new Aws.Glue.Inputs.CatalogCatalogPropertiesArgs
///         {
///             DataLakeAccessProperties = new Aws.Glue.Inputs.CatalogCatalogPropertiesDataLakeAccessPropertiesArgs
///             {
///                 DataLakeAccess = true,
///                 CatalogType = "aws:glue:datacatalog",
///             },
///             CustomProperties =
///             {
///                 { "property1", "value1" },
///             },
///         },
///         Name = "example",
///         Description = "Example Glue Catalog with data lake access",
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
/// 		_, err := glue.NewCatalog(ctx, "example", &glue.CatalogArgs{
/// 			CatalogProperties: &glue.CatalogCatalogPropertiesArgs{
/// 				DataLakeAccessProperties: &glue.CatalogCatalogPropertiesDataLakeAccessPropertiesArgs{
/// 					DataLakeAccess: pulumi.Bool(true),
/// 					CatalogType:    pulumi.String("aws:glue:datacatalog"),
/// 				},
/// 				CustomProperties: pulumi.StringMap{
/// 					"property1": pulumi.String("value1"),
/// 				},
/// 			},
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("Example Glue Catalog with data lake access"),
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
/// resource "aws_glue_catalog" "example" {
///   catalog_properties = {
///     data_lake_access_properties = {
///       data_lake_access = true
///       catalog_type     = "aws:glue:datacatalog"
///     }
///     custom_properties = {
///       "property1" = "value1"
///     }
///   }
///   name        = "example"
///   description = "Example Glue Catalog with data lake access"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.glue.Catalog;
/// import com.pulumi.aws.glue.CatalogArgs;
/// import com.pulumi.aws.glue.inputs.CatalogCatalogPropertiesArgs;
/// import com.pulumi.aws.glue.inputs.CatalogCatalogPropertiesDataLakeAccessPropertiesArgs;
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
///         var example = new Catalog("example", CatalogArgs.builder()
///             .catalogProperties(CatalogCatalogPropertiesArgs.builder()
///                 .dataLakeAccessProperties(CatalogCatalogPropertiesDataLakeAccessPropertiesArgs.builder()
///                     .dataLakeAccess(true)
///                     .catalogType("aws:glue:datacatalog")
///                     .build())
///                 .customProperties(Map.of("property1", "value1"))
///                 .build())
///             .name("example")
///             .description("Example Glue Catalog with data lake access")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:Catalog
///     properties:
///       catalogProperties:
///         dataLakeAccessProperties:
///           dataLakeAccess: true
///           catalogType: aws:glue:datacatalog
///         customProperties:
///           property1: value1
///       name: example
///       description: Example Glue Catalog with data lake access
/// ```
///
///
/// ### With Federated Catalog
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Catalog("example", {
///     federatedCatalog: {
///         connectionName: exampleAwsGlueConnection.name,
///         identifier: "arn:aws:glue:us-east-1:123456789012:catalog",
///     },
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Catalog("example",
///     federated_catalog={
///         "connection_name": example_aws_glue_connection["name"],
///         "identifier": "arn:aws:glue:us-east-1:123456789012:catalog",
///     },
///     name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Glue.Catalog("example", new()
///     {
///         FederatedCatalog = new Aws.Glue.Inputs.CatalogFederatedCatalogArgs
///         {
///             ConnectionName = exampleAwsGlueConnection.Name,
///             Identifier = "arn:aws:glue:us-east-1:123456789012:catalog",
///         },
///         Name = "example",
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
/// 		_, err := glue.NewCatalog(ctx, "example", &glue.CatalogArgs{
/// 			FederatedCatalog: &glue.CatalogFederatedCatalogArgs{
/// 				ConnectionName: pulumi.Any(exampleAwsGlueConnection.Name),
/// 				Identifier:     pulumi.String("arn:aws:glue:us-east-1:123456789012:catalog"),
/// 			},
/// 			Name: pulumi.String("example"),
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
/// resource "aws_glue_catalog" "example" {
///   federated_catalog = {
///     connection_name = exampleAwsGlueConnection.name
///     identifier      = "arn:aws:glue:us-east-1:123456789012:catalog"
///   }
///   name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.glue.Catalog;
/// import com.pulumi.aws.glue.CatalogArgs;
/// import com.pulumi.aws.glue.inputs.CatalogFederatedCatalogArgs;
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
///         var example = new Catalog("example", CatalogArgs.builder()
///             .federatedCatalog(CatalogFederatedCatalogArgs.builder()
///                 .connectionName(exampleAwsGlueConnection.name())
///                 .identifier("arn:aws:glue:us-east-1:123456789012:catalog")
///                 .build())
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:Catalog
///     properties:
///       federatedCatalog:
///         connectionName: ${exampleAwsGlueConnection.name}
///         identifier: arn:aws:glue:us-east-1:123456789012:catalog
///       name: example
/// ```
///
///
/// ### With Default Permissions
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Catalog("example", {
///     createDatabaseDefaultPermissions: [{
///         principal: {
///             dataLakePrincipalIdentifier: "IAM_ALLOWED_PRINCIPALS",
///         },
///         permissions: ["ALL"],
///     }],
///     createTableDefaultPermissions: [{
///         principal: {
///             dataLakePrincipalIdentifier: "IAM_ALLOWED_PRINCIPALS",
///         },
///         permissions: ["ALL"],
///     }],
///     name: "example",
///     description: "Example Glue Catalog",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Catalog("example",
///     create_database_default_permissions=[{
///         "principal": {
///             "data_lake_principal_identifier": "IAM_ALLOWED_PRINCIPALS",
///         },
///         "permissions": ["ALL"],
///     }],
///     create_table_default_permissions=[{
///         "principal": {
///             "data_lake_principal_identifier": "IAM_ALLOWED_PRINCIPALS",
///         },
///         "permissions": ["ALL"],
///     }],
///     name="example",
///     description="Example Glue Catalog")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Glue.Catalog("example", new()
///     {
///         CreateDatabaseDefaultPermissions = new[]
///         {
///             new Aws.Glue.Inputs.CatalogCreateDatabaseDefaultPermissionArgs
///             {
///                 Principal = new Aws.Glue.Inputs.CatalogCreateDatabaseDefaultPermissionPrincipalArgs
///                 {
///                     DataLakePrincipalIdentifier = "IAM_ALLOWED_PRINCIPALS",
///                 },
///                 Permissions = new[]
///                 {
///                     "ALL",
///                 },
///             },
///         },
///         CreateTableDefaultPermissions = new[]
///         {
///             new Aws.Glue.Inputs.CatalogCreateTableDefaultPermissionArgs
///             {
///                 Principal = new Aws.Glue.Inputs.CatalogCreateTableDefaultPermissionPrincipalArgs
///                 {
///                     DataLakePrincipalIdentifier = "IAM_ALLOWED_PRINCIPALS",
///                 },
///                 Permissions = new[]
///                 {
///                     "ALL",
///                 },
///             },
///         },
///         Name = "example",
///         Description = "Example Glue Catalog",
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
/// 		_, err := glue.NewCatalog(ctx, "example", &glue.CatalogArgs{
/// 			CreateDatabaseDefaultPermissions: glue.CatalogCreateDatabaseDefaultPermissionArray{
/// 				&glue.CatalogCreateDatabaseDefaultPermissionArgs{
/// 					Principal: &glue.CatalogCreateDatabaseDefaultPermissionPrincipalArgs{
/// 						DataLakePrincipalIdentifier: pulumi.String("IAM_ALLOWED_PRINCIPALS"),
/// 					},
/// 					Permissions: pulumi.StringArray{
/// 						pulumi.String("ALL"),
/// 					},
/// 				},
/// 			},
/// 			CreateTableDefaultPermissions: glue.CatalogCreateTableDefaultPermissionArray{
/// 				&glue.CatalogCreateTableDefaultPermissionArgs{
/// 					Principal: &glue.CatalogCreateTableDefaultPermissionPrincipalArgs{
/// 						DataLakePrincipalIdentifier: pulumi.String("IAM_ALLOWED_PRINCIPALS"),
/// 					},
/// 					Permissions: pulumi.StringArray{
/// 						pulumi.String("ALL"),
/// 					},
/// 				},
/// 			},
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("Example Glue Catalog"),
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
/// resource "aws_glue_catalog" "example" {
///   create_database_default_permissions {
///     principal = {
///       data_lake_principal_identifier = "IAM_ALLOWED_PRINCIPALS"
///     }
///     permissions = ["ALL"]
///   }
///   create_table_default_permissions {
///     principal = {
///       data_lake_principal_identifier = "IAM_ALLOWED_PRINCIPALS"
///     }
///     permissions = ["ALL"]
///   }
///   name        = "example"
///   description = "Example Glue Catalog"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.glue.Catalog;
/// import com.pulumi.aws.glue.CatalogArgs;
/// import com.pulumi.aws.glue.inputs.CatalogCreateDatabaseDefaultPermissionArgs;
/// import com.pulumi.aws.glue.inputs.CatalogCreateDatabaseDefaultPermissionPrincipalArgs;
/// import com.pulumi.aws.glue.inputs.CatalogCreateTableDefaultPermissionArgs;
/// import com.pulumi.aws.glue.inputs.CatalogCreateTableDefaultPermissionPrincipalArgs;
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
///         var example = new Catalog("example", CatalogArgs.builder()
///             .createDatabaseDefaultPermissions(CatalogCreateDatabaseDefaultPermissionArgs.builder()
///                 .principal(CatalogCreateDatabaseDefaultPermissionPrincipalArgs.builder()
///                     .dataLakePrincipalIdentifier("IAM_ALLOWED_PRINCIPALS")
///                     .build())
///                 .permissions("ALL")
///                 .build())
///             .createTableDefaultPermissions(CatalogCreateTableDefaultPermissionArgs.builder()
///                 .principal(CatalogCreateTableDefaultPermissionPrincipalArgs.builder()
///                     .dataLakePrincipalIdentifier("IAM_ALLOWED_PRINCIPALS")
///                     .build())
///                 .permissions("ALL")
///                 .build())
///             .name("example")
///             .description("Example Glue Catalog")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:Catalog
///     properties:
///       createDatabaseDefaultPermissions:
///         - principal:
///             dataLakePrincipalIdentifier: IAM_ALLOWED_PRINCIPALS
///           permissions:
///             - ALL
///       createTableDefaultPermissions:
///         - principal:
///             dataLakePrincipalIdentifier: IAM_ALLOWED_PRINCIPALS
///           permissions:
///             - ALL
///       name: example
///       description: Example Glue Catalog
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Name of the Glue Catalog.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Glue Catalog using the catalog name. For example:
///
/// ```sh
/// $ pulumi import aws:glue/catalog:Catalog example example
/// ```
class Catalog extends pulumi.CustomResource {
  /// Whether third-party engines can access data in Amazon S3 locations that are registered with Lake Formation. Valid values are `True` and `False`.
  late final pulumi.Output<String> allowFullTableExternalDataAccess;
  /// ARN of the Glue Catalog.
  late final pulumi.Output<String> arn;
  /// ID of the parent catalog.
  late final pulumi.Output<String> catalogId;
  /// Configuration block of properties for the catalog. See `catalogProperties` below.
  late final pulumi.Output<CatalogCatalogProperties?> catalogProperties;
  /// List of default permissions on databases for principals. See `createDatabaseDefaultPermissions` below.
  late final pulumi.Output<List<CatalogCreateDatabaseDefaultPermission>?> createDatabaseDefaultPermissions;
  /// List of default permissions on tables for principals. See `createTableDefaultPermissions` below.
  late final pulumi.Output<List<CatalogCreateTableDefaultPermission>?> createTableDefaultPermissions;
  /// Time at which the catalog was created.
  late final pulumi.Output<String> createTime;
  /// Description of the catalog.
  late final pulumi.Output<String?> description;
  /// Configuration block for a federated catalog. See `federatedCatalog` below.
  late final pulumi.Output<CatalogFederatedCatalog?> federatedCatalog;
  /// Name of the catalog.
  late final pulumi.Output<String> name;
  /// Whether to overwrite existing Lake Formation permissions on child resources with the default permissions. Valid values are `Accept` and `Deny`.
  late final pulumi.Output<String?> overwriteChildResourcePermissionsWithDefault;
  /// Map of key-value pairs that define parameters and properties of the catalog.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Configuration block for a target Redshift catalog. See `targetRedshiftCatalog` below.
  late final pulumi.Output<CatalogTargetRedshiftCatalog?> targetRedshiftCatalog;
  late final pulumi.Output<CatalogTimeouts?> timeouts;
  /// Time at which the catalog was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Catalog].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Catalog]. {@macro pulumi_glue_catalog_catalog_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Catalog(
    String name, {
    CatalogArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/catalog:Catalog',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    allowFullTableExternalDataAccess = registerOutput<String>('allowFullTableExternalDataAccess');
    arn = registerOutput<String>('arn');
    catalogId = registerOutput<String>('catalogId');
    catalogProperties = registerOutput<CatalogCatalogProperties?>('catalogProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CatalogCatalogProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createDatabaseDefaultPermissions = registerOutput<List<CatalogCreateDatabaseDefaultPermission>?>('createDatabaseDefaultPermissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CatalogCreateDatabaseDefaultPermission>(guardedValue, (value) => CatalogCreateDatabaseDefaultPermission.fromMap((value as Map).cast<String, dynamic>())); });
    createTableDefaultPermissions = registerOutput<List<CatalogCreateTableDefaultPermission>?>('createTableDefaultPermissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CatalogCreateTableDefaultPermission>(guardedValue, (value) => CatalogCreateTableDefaultPermission.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    federatedCatalog = registerOutput<CatalogFederatedCatalog?>('federatedCatalog', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CatalogFederatedCatalog.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    overwriteChildResourcePermissionsWithDefault = registerOutput<String?>('overwriteChildResourcePermissionsWithDefault');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetRedshiftCatalog = registerOutput<CatalogTargetRedshiftCatalog?>('targetRedshiftCatalog', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CatalogTargetRedshiftCatalog.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<CatalogTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CatalogTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Catalog] resource's state with the given [name] and [id].
  static Catalog get(
    String name,
    pulumi.Input<String> id, {
    CatalogState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Catalog._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Catalog._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/catalog:Catalog',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowFullTableExternalDataAccess = registerOutput<String>('allowFullTableExternalDataAccess');
    arn = registerOutput<String>('arn');
    catalogId = registerOutput<String>('catalogId');
    catalogProperties = registerOutput<CatalogCatalogProperties?>('catalogProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CatalogCatalogProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createDatabaseDefaultPermissions = registerOutput<List<CatalogCreateDatabaseDefaultPermission>?>('createDatabaseDefaultPermissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CatalogCreateDatabaseDefaultPermission>(guardedValue, (value) => CatalogCreateDatabaseDefaultPermission.fromMap((value as Map).cast<String, dynamic>())); });
    createTableDefaultPermissions = registerOutput<List<CatalogCreateTableDefaultPermission>?>('createTableDefaultPermissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CatalogCreateTableDefaultPermission>(guardedValue, (value) => CatalogCreateTableDefaultPermission.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    federatedCatalog = registerOutput<CatalogFederatedCatalog?>('federatedCatalog', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CatalogFederatedCatalog.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    overwriteChildResourcePermissionsWithDefault = registerOutput<String?>('overwriteChildResourcePermissionsWithDefault');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetRedshiftCatalog = registerOutput<CatalogTargetRedshiftCatalog?>('targetRedshiftCatalog', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CatalogTargetRedshiftCatalog.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<CatalogTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CatalogTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Catalog] resource.
  Catalog.reference(String urn)
    : super(
        'aws:glue/catalog:Catalog',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    allowFullTableExternalDataAccess = registerOutput<String>('allowFullTableExternalDataAccess');
    arn = registerOutput<String>('arn');
    catalogId = registerOutput<String>('catalogId');
    catalogProperties = registerOutput<CatalogCatalogProperties?>('catalogProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CatalogCatalogProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createDatabaseDefaultPermissions = registerOutput<List<CatalogCreateDatabaseDefaultPermission>?>('createDatabaseDefaultPermissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CatalogCreateDatabaseDefaultPermission>(guardedValue, (value) => CatalogCreateDatabaseDefaultPermission.fromMap((value as Map).cast<String, dynamic>())); });
    createTableDefaultPermissions = registerOutput<List<CatalogCreateTableDefaultPermission>?>('createTableDefaultPermissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CatalogCreateTableDefaultPermission>(guardedValue, (value) => CatalogCreateTableDefaultPermission.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    federatedCatalog = registerOutput<CatalogFederatedCatalog?>('federatedCatalog', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CatalogFederatedCatalog.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    overwriteChildResourcePermissionsWithDefault = registerOutput<String?>('overwriteChildResourcePermissionsWithDefault');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetRedshiftCatalog = registerOutput<CatalogTargetRedshiftCatalog?>('targetRedshiftCatalog', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CatalogTargetRedshiftCatalog.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<CatalogTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CatalogTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }
}
