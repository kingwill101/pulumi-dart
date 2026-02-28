import 'package:pulumi/pulumi.dart' as pulumi;
import 'permissions_args.dart';
import 'permissions_data_cells_filter.dart';
import 'permissions_data_location.dart';
import 'permissions_database.dart';
import 'permissions_lf_tag.dart';
import 'permissions_lf_tag_policy.dart';
import 'permissions_table.dart';
import 'permissions_table_with_columns.dart';

/// Grants permissions to the principal to access metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3. Permissions are granted to a principal, in a Data Catalog, relative to a Lake Formation resource, which includes the Data Catalog, databases, tables, LF-tags, and LF-tag policies. For more information, see [Security and Access Control to Metadata and Data in Lake Formation](https://docs.aws.amazon.com/lake-formation/latest/dg/security-data-access.html).
///
/// !> **WARNING:** Lake Formation permissions are not in effect by default within AWS. Using this resource will not secure your data and will result in errors if you do not change the security settings for existing resources and the default security settings for new resources. See Default Behavior and `IAMAllowedPrincipals` for additional details.
///
/// > **NOTE:** In general, the `principal` should _NOT_ be a Lake Formation administrator or the entity (e.g., IAM role) that is running the deployment. Administrators have implicit permissions. These should be managed by granting or not granting administrator rights using `aws.lakeformation.DataLakeSettings`, _not_ with this resource.
///
/// ## Default Behavior and `IAMAllowedPrincipals`
///
/// **_Lake Formation permissions are not in effect by default within AWS._** `IAMAllowedPrincipals` (i.e., `IAM_ALLOWED_PRINCIPALS`) conflicts with individual Lake Formation permissions (i.e., non-`IAMAllowedPrincipals` permissions), will cause unexpected behavior, and may result in errors.
///
/// When using Lake Formation, choose ONE of the following options as they are mutually exclusive:
///
/// 1. Use this resource (`aws.lakeformation.Permissions`), change the default security settings using `aws.lakeformation.DataLakeSettings`, and remove existing `IAMAllowedPrincipals` permissions
/// 2. Use `IAMAllowedPrincipals` without `aws.lakeformation.Permissions`
///
/// This example shows removing the `IAMAllowedPrincipals` default security settings and making the caller a Lake Formation admin. Since `create_database_default_permissions` and `create_table_default_permissions` are not set in the `aws.lakeformation.DataLakeSettings` resource, they are cleared.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const currentGetSessionContext = current.then(current => aws.iam.getSessionContext({
///     arn: current.arn,
/// }));
/// const test = new aws.lakeformation.DataLakeSettings("test", {admins: [currentGetSessionContext.then(currentGetSessionContext => currentGetSessionContext.issuerArn)]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// current_get_session_context = aws.iam.get_session_context(arn=current.arn)
/// test = aws.lakeformation.DataLakeSettings("test", admins=[current_get_session_context.issuer_arn])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var currentGetSessionContext = Aws.Iam.GetSessionContext.Invoke(new()
///     {
///         Arn = current.Apply(getCallerIdentityResult => getCallerIdentityResult.Arn),
///     });
///
///     var test = new Aws.LakeFormation.DataLakeSettings("test", new()
///     {
///         Admins = new[]
///         {
///             currentGetSessionContext.Apply(getSessionContextResult => getSessionContextResult.IssuerArn),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetSessionContext, err := iam.GetSessionContext(ctx, &iam.GetSessionContextArgs{
/// 			Arn: current.Arn,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lakeformation.NewDataLakeSettings(ctx, "test", &lakeformation.DataLakeSettingsArgs{
/// 			Admins: pulumi.StringArray{
/// 				pulumi.String(currentGetSessionContext.IssuerArn),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetSessionContextArgs;
/// import com.pulumi.aws.lakeformation.DataLakeSettings;
/// import com.pulumi.aws.lakeformation.DataLakeSettingsArgs;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var currentGetSessionContext = IamFunctions.getSessionContext(GetSessionContextArgs.builder()
///             .arn(current.arn())
///             .build());
///
///         var test = new DataLakeSettings("test", DataLakeSettingsArgs.builder()
///             .admins(currentGetSessionContext.issuerArn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:lakeformation:DataLakeSettings
///     properties:
///       admins:
///         - ${currentGetSessionContext.issuerArn}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   currentGetSessionContext:
///     fn::invoke:
///       function: aws:iam:getSessionContext
///       arguments:
///         arn: ${current.arn}
/// ```
///
///
/// To remove existing `IAMAllowedPrincipals` permissions, use the [AWS Lake Formation Console](https://console.aws.amazon.com/lakeformation/) or [AWS CLI](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/lakeformation/batch-revoke-permissions.html).
///
/// `IAMAllowedPrincipals` is a hook to maintain backwards compatibility with AWS Glue. `IAMAllowedPrincipals` is a pseudo-entity group that acts like a Lake Formation principal. The group includes any IAM users and roles that are allowed access to your Data Catalog resources by your IAM policies.
///
/// This is Lake Formation's default behavior:
///
/// * Lake Formation grants `Super` permission to `IAMAllowedPrincipals` on all existing AWS Glue Data Catalog resources.
/// * Lake Formation enables "Use only IAM access control" for new Data Catalog resources.
///
/// For more details, see [Changing the Default Security Settings for Your Data Lake](https://docs.aws.amazon.com/lake-formation/latest/dg/change-settings.html).
///
/// ### Problem Using `IAMAllowedPrincipals`
///
/// AWS does not support combining `IAMAllowedPrincipals` permissions and non-`IAMAllowedPrincipals` permissions. Doing so results in unexpected permissions and behaviors. For example, this configuration grants a user `SELECT` on a column in a table.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.CatalogDatabase("example", {name: "sadabate"});
/// const exampleCatalogTable = new aws.glue.CatalogTable("example", {
///     name: "abelt",
///     databaseName: test.name,
///     storageDescriptor: {
///         columns: [{
///             name: "event",
///             type: "string",
///         }],
///     },
/// });
/// const examplePermissions = new aws.lakeformation.Permissions("example", {
///     permissions: ["SELECT"],
///     principal: "arn:aws:iam:us-east-1:123456789012:user/SanHolo",
///     tableWithColumns: {
///         databaseName: exampleCatalogTable.databaseName,
///         name: exampleCatalogTable.name,
///         columnNames: ["event"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.CatalogDatabase("example", name="sadabate")
/// example_catalog_table = aws.glue.CatalogTable("example",
///     name="abelt",
///     database_name=test["name"],
///     storage_descriptor={
///         "columns": [{
///             "name": "event",
///             "type": "string",
///         }],
///     })
/// example_permissions = aws.lakeformation.Permissions("example",
///     permissions=["SELECT"],
///     principal="arn:aws:iam:us-east-1:123456789012:user/SanHolo",
///     table_with_columns={
///         "database_name": example_catalog_table.database_name,
///         "name": example_catalog_table.name,
///         "column_names": ["event"],
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
///     var example = new Aws.Glue.CatalogDatabase("example", new()
///     {
///         Name = "sadabate",
///     });
///
///     var exampleCatalogTable = new Aws.Glue.CatalogTable("example", new()
///     {
///         Name = "abelt",
///         DatabaseName = test.Name,
///         StorageDescriptor = new Aws.Glue.Inputs.CatalogTableStorageDescriptorArgs
///         {
///             Columns = new[]
///             {
///                 new Aws.Glue.Inputs.CatalogTableStorageDescriptorColumnArgs
///                 {
///                     Name = "event",
///                     Type = "string",
///                 },
///             },
///         },
///     });
///
///     var examplePermissions = new Aws.LakeFormation.Permissions("example", new()
///     {
///         PermissionDetails = new[]
///         {
///             "SELECT",
///         },
///         Principal = "arn:aws:iam:us-east-1:123456789012:user/SanHolo",
///         TableWithColumns = new Aws.LakeFormation.Inputs.PermissionsTableWithColumnsArgs
///         {
///             DatabaseName = exampleCatalogTable.DatabaseName,
///             Name = exampleCatalogTable.Name,
///             ColumnNames = new[]
///             {
///                 "event",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.NewCatalogDatabase(ctx, "example", &glue.CatalogDatabaseArgs{
/// 			Name: pulumi.String("sadabate"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCatalogTable, err := glue.NewCatalogTable(ctx, "example", &glue.CatalogTableArgs{
/// 			Name:         pulumi.String("abelt"),
/// 			DatabaseName: pulumi.Any(test.Name),
/// 			StorageDescriptor: &glue.CatalogTableStorageDescriptorArgs{
/// 				Columns: glue.CatalogTableStorageDescriptorColumnArray{
/// 					&glue.CatalogTableStorageDescriptorColumnArgs{
/// 						Name: pulumi.String("event"),
/// 						Type: pulumi.String("string"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lakeformation.NewPermissions(ctx, "example", &lakeformation.PermissionsArgs{
/// 			Permissions: pulumi.StringArray{
/// 				pulumi.String("SELECT"),
/// 			},
/// 			Principal: pulumi.String("arn:aws:iam:us-east-1:123456789012:user/SanHolo"),
/// 			TableWithColumns: &lakeformation.PermissionsTableWithColumnsArgs{
/// 				DatabaseName: exampleCatalogTable.DatabaseName,
/// 				Name:         exampleCatalogTable.Name,
/// 				ColumnNames: pulumi.StringArray{
/// 					pulumi.String("event"),
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
/// import com.pulumi.aws.glue.CatalogTable;
/// import com.pulumi.aws.glue.CatalogTableArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableStorageDescriptorArgs;
/// import com.pulumi.aws.lakeformation.Permissions;
/// import com.pulumi.aws.lakeformation.PermissionsArgs;
/// import com.pulumi.aws.lakeformation.inputs.PermissionsTableWithColumnsArgs;
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
///             .name("sadabate")
///             .build());
///
///         var exampleCatalogTable = new CatalogTable("exampleCatalogTable", CatalogTableArgs.builder()
///             .name("abelt")
///             .databaseName(test.name())
///             .storageDescriptor(CatalogTableStorageDescriptorArgs.builder()
///                 .columns(CatalogTableStorageDescriptorColumnArgs.builder()
///                     .name("event")
///                     .type("string")
///                     .build())
///                 .build())
///             .build());
///
///         var examplePermissions = new Permissions("examplePermissions", PermissionsArgs.builder()
///             .permissions("SELECT")
///             .principal("arn:aws:iam:us-east-1:123456789012:user/SanHolo")
///             .tableWithColumns(PermissionsTableWithColumnsArgs.builder()
///                 .databaseName(exampleCatalogTable.databaseName())
///                 .name(exampleCatalogTable.name())
///                 .columnNames("event")
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
///       name: sadabate
///   exampleCatalogTable:
///     type: aws:glue:CatalogTable
///     name: example
///     properties:
///       name: abelt
///       databaseName: ${test.name}
///       storageDescriptor:
///         columns:
///           - name: event
///             type: string
///   examplePermissions:
///     type: aws:lakeformation:Permissions
///     name: example
///     properties:
///       permissions:
///         - SELECT
///       principal: arn:aws:iam:us-east-1:123456789012:user/SanHolo
///       tableWithColumns:
///         databaseName: ${exampleCatalogTable.databaseName}
///         name: ${exampleCatalogTable.name}
///         columnNames:
///           - event
/// ```
///
///
/// The resulting permissions depend on whether the table had `IAMAllowedPrincipals` (IAP) permissions or not.
///
/// | Result With IAP | Result Without IAP |
/// | ---- | ---- |
/// | `SELECT` column wildcard (i.e., all columns) | `SELECT` on `"event"` (as expected) |
///
/// ## `ALLIAMPrincipals` group
///
/// AllIAMPrincipals is a pseudo-entity group that acts like a Lake Formation principal. The group includes all IAMs in the account that is defined.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lakeformation.Permissions("example", {
///     permissions: ["SELECT"],
///     principal: "123456789012:IAMPrincipals",
///     tableWithColumns: {
///         databaseName: exampleAwsGlueCatalogTable.databaseName,
///         name: exampleAwsGlueCatalogTable.name,
///         columnNames: ["event"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lakeformation.Permissions("example",
///     permissions=["SELECT"],
///     principal="123456789012:IAMPrincipals",
///     table_with_columns={
///         "database_name": example_aws_glue_catalog_table["databaseName"],
///         "name": example_aws_glue_catalog_table["name"],
///         "column_names": ["event"],
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
///     var example = new Aws.LakeFormation.Permissions("example", new()
///     {
///         PermissionDetails = new[]
///         {
///             "SELECT",
///         },
///         Principal = "123456789012:IAMPrincipals",
///         TableWithColumns = new Aws.LakeFormation.Inputs.PermissionsTableWithColumnsArgs
///         {
///             DatabaseName = exampleAwsGlueCatalogTable.DatabaseName,
///             Name = exampleAwsGlueCatalogTable.Name,
///             ColumnNames = new[]
///             {
///                 "event",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lakeformation.NewPermissions(ctx, "example", &lakeformation.PermissionsArgs{
/// 			Permissions: pulumi.StringArray{
/// 				pulumi.String("SELECT"),
/// 			},
/// 			Principal: pulumi.String("123456789012:IAMPrincipals"),
/// 			TableWithColumns: &lakeformation.PermissionsTableWithColumnsArgs{
/// 				DatabaseName: pulumi.Any(exampleAwsGlueCatalogTable.DatabaseName),
/// 				Name:         pulumi.Any(exampleAwsGlueCatalogTable.Name),
/// 				ColumnNames: pulumi.StringArray{
/// 					pulumi.String("event"),
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
/// import com.pulumi.aws.lakeformation.Permissions;
/// import com.pulumi.aws.lakeformation.PermissionsArgs;
/// import com.pulumi.aws.lakeformation.inputs.PermissionsTableWithColumnsArgs;
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
///         var example = new Permissions("example", PermissionsArgs.builder()
///             .permissions("SELECT")
///             .principal("123456789012:IAMPrincipals")
///             .tableWithColumns(PermissionsTableWithColumnsArgs.builder()
///                 .databaseName(exampleAwsGlueCatalogTable.databaseName())
///                 .name(exampleAwsGlueCatalogTable.name())
///                 .columnNames("event")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lakeformation:Permissions
///     properties:
///       permissions:
///         - SELECT
///       principal: 123456789012:IAMPrincipals
///       tableWithColumns:
///         databaseName: ${exampleAwsGlueCatalogTable.databaseName}
///         name: ${exampleAwsGlueCatalogTable.name}
///         columnNames:
///           - event
/// ```
///
///
/// ## Using Lake Formation Permissions
///
/// Lake Formation grants implicit permissions to data lake administrators, database creators, and table creators. These implicit permissions cannot be revoked _per se_. If this resource reads implicit permissions, it will attempt to revoke them, which causes an error when the resource is destroyed.
///
/// There are two ways to avoid these errors. First, and the way we recommend, is to avoid using this resource with principals that have implicit permissions. A second, error-prone option, is to grant explicit permissions (and `permissions_with_grant_option`) to "overwrite" a principal's implicit permissions, which you can then revoke with this resource. For more information, see [Implicit Lake Formation Permissions](https://docs.aws.amazon.com/lake-formation/latest/dg/implicit-permissions.html).
///
/// If the `principal` is also a data lake administrator, AWS grants implicit permissions that can cause errors using this resource. For example, AWS implicitly grants a `principal`/administrator `permissions` and `permissions_with_grant_option` of `ALL`, `ALTER`, `DELETE`, `DESCRIBE`, `DROP`, `INSERT`, and `SELECT` on a table. If you use this resource to explicitly grant the `principal`/administrator `permissions` but _not_ `permissions_with_grant_option` of `ALL`, `ALTER`, `DELETE`, `DESCRIBE`, `DROP`, `INSERT`, and `SELECT` on the table, this resource will read the implicit `permissions_with_grant_option` and attempt to revoke them when the resource is destroyed. Doing so will cause an `InvalidInputException: No permissions revoked` error because you cannot revoke implicit permissions _per se_. To workaround this problem, explicitly grant the `principal`/administrator `permissions` _and_ `permissions_with_grant_option`, which can then be revoked. Similarly, granting a `principal`/administrator permissions on a table with columns and providing `column_names`, will result in a `InvalidInputException: Permissions modification is invalid` error because you are narrowing the implicit permissions. Instead, set `wildcard` to `true` and remove the `column_names`.
///
/// ## Example Usage
///
/// ### Grant Permissions For A Lake Formation S3 Resource
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lakeformation.Permissions("example", {
///     principal: workflowRole.arn,
///     permissions: ["DATA_LOCATION_ACCESS"],
///     dataLocation: {
///         arn: exampleAwsLakeformationResource.arn,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lakeformation.Permissions("example",
///     principal=workflow_role["arn"],
///     permissions=["DATA_LOCATION_ACCESS"],
///     data_location={
///         "arn": example_aws_lakeformation_resource["arn"],
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
///     var example = new Aws.LakeFormation.Permissions("example", new()
///     {
///         Principal = workflowRole.Arn,
///         PermissionDetails = new[]
///         {
///             "DATA_LOCATION_ACCESS",
///         },
///         DataLocation = new Aws.LakeFormation.Inputs.PermissionsDataLocationArgs
///         {
///             Arn = exampleAwsLakeformationResource.Arn,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lakeformation.NewPermissions(ctx, "example", &lakeformation.PermissionsArgs{
/// 			Principal: pulumi.Any(workflowRole.Arn),
/// 			Permissions: pulumi.StringArray{
/// 				pulumi.String("DATA_LOCATION_ACCESS"),
/// 			},
/// 			DataLocation: &lakeformation.PermissionsDataLocationArgs{
/// 				Arn: pulumi.Any(exampleAwsLakeformationResource.Arn),
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
/// import com.pulumi.aws.lakeformation.Permissions;
/// import com.pulumi.aws.lakeformation.PermissionsArgs;
/// import com.pulumi.aws.lakeformation.inputs.PermissionsDataLocationArgs;
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
///         var example = new Permissions("example", PermissionsArgs.builder()
///             .principal(workflowRole.arn())
///             .permissions("DATA_LOCATION_ACCESS")
///             .dataLocation(PermissionsDataLocationArgs.builder()
///                 .arn(exampleAwsLakeformationResource.arn())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lakeformation:Permissions
///     properties:
///       principal: ${workflowRole.arn}
///       permissions:
///         - DATA_LOCATION_ACCESS
///       dataLocation:
///         arn: ${exampleAwsLakeformationResource.arn}
/// ```
///
///
/// ### Grant Permissions For A Glue Catalog Database
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lakeformation.Permissions("example", {
///     principal: workflowRole.arn,
///     permissions: [
///         "CREATE_TABLE",
///         "ALTER",
///         "DROP",
///     ],
///     database: {
///         name: exampleAwsGlueCatalogDatabase.name,
///         catalogId: "110376042874",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lakeformation.Permissions("example",
///     principal=workflow_role["arn"],
///     permissions=[
///         "CREATE_TABLE",
///         "ALTER",
///         "DROP",
///     ],
///     database={
///         "name": example_aws_glue_catalog_database["name"],
///         "catalog_id": "110376042874",
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
///     var example = new Aws.LakeFormation.Permissions("example", new()
///     {
///         Principal = workflowRole.Arn,
///         PermissionDetails = new[]
///         {
///             "CREATE_TABLE",
///             "ALTER",
///             "DROP",
///         },
///         Database = new Aws.LakeFormation.Inputs.PermissionsDatabaseArgs
///         {
///             Name = exampleAwsGlueCatalogDatabase.Name,
///             CatalogId = "110376042874",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lakeformation.NewPermissions(ctx, "example", &lakeformation.PermissionsArgs{
/// 			Principal: pulumi.Any(workflowRole.Arn),
/// 			Permissions: pulumi.StringArray{
/// 				pulumi.String("CREATE_TABLE"),
/// 				pulumi.String("ALTER"),
/// 				pulumi.String("DROP"),
/// 			},
/// 			Database: &lakeformation.PermissionsDatabaseArgs{
/// 				Name:      pulumi.Any(exampleAwsGlueCatalogDatabase.Name),
/// 				CatalogId: pulumi.String("110376042874"),
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
/// import com.pulumi.aws.lakeformation.Permissions;
/// import com.pulumi.aws.lakeformation.PermissionsArgs;
/// import com.pulumi.aws.lakeformation.inputs.PermissionsDatabaseArgs;
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
///         var example = new Permissions("example", PermissionsArgs.builder()
///             .principal(workflowRole.arn())
///             .permissions(
///                 "CREATE_TABLE",
///                 "ALTER",
///                 "DROP")
///             .database(PermissionsDatabaseArgs.builder()
///                 .name(exampleAwsGlueCatalogDatabase.name())
///                 .catalogId("110376042874")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lakeformation:Permissions
///     properties:
///       principal: ${workflowRole.arn}
///       permissions:
///         - CREATE_TABLE
///         - ALTER
///         - DROP
///       database:
///         name: ${exampleAwsGlueCatalogDatabase.name}
///         catalogId: '110376042874'
/// ```
///
///
/// ### Grant Permissions Using Tag-Based Access Control
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.lakeformation.Permissions("test", {
///     principal: salesRole.arn,
///     permissions: [
///         "CREATE_TABLE",
///         "ALTER",
///         "DROP",
///     ],
///     lfTagPolicy: {
///         resourceType: "DATABASE",
///         expressions: [
///             {
///                 key: "Team",
///                 values: ["Sales"],
///             },
///             {
///                 key: "Environment",
///                 values: [
///                     "Dev",
///                     "Production",
///                 ],
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.lakeformation.Permissions("test",
///     principal=sales_role["arn"],
///     permissions=[
///         "CREATE_TABLE",
///         "ALTER",
///         "DROP",
///     ],
///     lf_tag_policy={
///         "resource_type": "DATABASE",
///         "expressions": [
///             {
///                 "key": "Team",
///                 "values": ["Sales"],
///             },
///             {
///                 "key": "Environment",
///                 "values": [
///                     "Dev",
///                     "Production",
///                 ],
///             },
///         ],
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
///     var test = new Aws.LakeFormation.Permissions("test", new()
///     {
///         Principal = salesRole.Arn,
///         PermissionDetails = new[]
///         {
///             "CREATE_TABLE",
///             "ALTER",
///             "DROP",
///         },
///         LfTagPolicy = new Aws.LakeFormation.Inputs.PermissionsLfTagPolicyArgs
///         {
///             ResourceType = "DATABASE",
///             Expressions = new[]
///             {
///                 new Aws.LakeFormation.Inputs.PermissionsLfTagPolicyExpressionArgs
///                 {
///                     Key = "Team",
///                     Values = new[]
///                     {
///                         "Sales",
///                     },
///                 },
///                 new Aws.LakeFormation.Inputs.PermissionsLfTagPolicyExpressionArgs
///                 {
///                     Key = "Environment",
///                     Values = new[]
///                     {
///                         "Dev",
///                         "Production",
///                     },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lakeformation.NewPermissions(ctx, "test", &lakeformation.PermissionsArgs{
/// 			Principal: pulumi.Any(salesRole.Arn),
/// 			Permissions: pulumi.StringArray{
/// 				pulumi.String("CREATE_TABLE"),
/// 				pulumi.String("ALTER"),
/// 				pulumi.String("DROP"),
/// 			},
/// 			LfTagPolicy: &lakeformation.PermissionsLfTagPolicyArgs{
/// 				ResourceType: pulumi.String("DATABASE"),
/// 				Expressions: lakeformation.PermissionsLfTagPolicyExpressionArray{
/// 					&lakeformation.PermissionsLfTagPolicyExpressionArgs{
/// 						Key: pulumi.String("Team"),
/// 						Values: pulumi.StringArray{
/// 							pulumi.String("Sales"),
/// 						},
/// 					},
/// 					&lakeformation.PermissionsLfTagPolicyExpressionArgs{
/// 						Key: pulumi.String("Environment"),
/// 						Values: pulumi.StringArray{
/// 							pulumi.String("Dev"),
/// 							pulumi.String("Production"),
/// 						},
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
/// import com.pulumi.aws.lakeformation.Permissions;
/// import com.pulumi.aws.lakeformation.PermissionsArgs;
/// import com.pulumi.aws.lakeformation.inputs.PermissionsLfTagPolicyArgs;
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
///         var test = new Permissions("test", PermissionsArgs.builder()
///             .principal(salesRole.arn())
///             .permissions(
///                 "CREATE_TABLE",
///                 "ALTER",
///                 "DROP")
///             .lfTagPolicy(PermissionsLfTagPolicyArgs.builder()
///                 .resourceType("DATABASE")
///                 .expressions(
///                     PermissionsLfTagPolicyExpressionArgs.builder()
///                         .key("Team")
///                         .values("Sales")
///                         .build(),
///                     PermissionsLfTagPolicyExpressionArgs.builder()
///                         .key("Environment")
///                         .values(
///                             "Dev",
///                             "Production")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:lakeformation:Permissions
///     properties:
///       principal: ${salesRole.arn}
///       permissions:
///         - CREATE_TABLE
///         - ALTER
///         - DROP
///       lfTagPolicy:
///         resourceType: DATABASE
///         expressions:
///           - key: Team
///             values:
///               - Sales
///           - key: Environment
///             values:
///               - Dev
///               - Production
/// ```
class Permissions extends pulumi.CustomResource {
  /// Identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment.
  late final pulumi.Output<String?> catalogId;
  /// Whether the permissions are to be granted for the Data Catalog. Defaults to `false`.
  late final pulumi.Output<bool?> catalogResource;
  /// Configuration block for a data cells filter resource. Detailed below.
  late final pulumi.Output<PermissionsDataCellsFilter?> dataCellsFilter;
  /// Configuration block for a data location resource. Detailed below.
  late final pulumi.Output<PermissionsDataLocation> dataLocation;
  /// Configuration block for a database resource. Detailed below.
  late final pulumi.Output<PermissionsDatabase> database;
  /// Configuration block for an LF-tag resource. Detailed below.
  late final pulumi.Output<PermissionsLfTag> lfTag;
  /// Configuration block for an LF-tag policy resource. Detailed below.
  late final pulumi.Output<PermissionsLfTagPolicy> lfTagPolicy;
  /// List of permissions granted to the principal. Valid values may include `ALL`, `ALTER`, `ASSOCIATE`, `CREATE_DATABASE`, `CREATE_TABLE`, `DATA_LOCATION_ACCESS`, `DELETE`, `DESCRIBE`, `DROP`, `INSERT`, and `SELECT`. For details on each permission, see [Lake Formation Permissions Reference](https://docs.aws.amazon.com/lake-formation/latest/dg/lf-permissions-reference.html).
  late final pulumi.Output<List<String>> permissions;
  /// Subset of `permissions` which the principal can pass.
  late final pulumi.Output<List<String>> permissionsWithGrantOptions;
  /// Principal to be granted the permissions on the resource. Supported principals include `IAM_ALLOWED_PRINCIPALS` (see Default Behavior and `IAMAllowedPrincipals` above), IAM roles, users, groups, Federated Users, SAML groups and users, QuickSight groups, OUs, and organizations as well as AWS account IDs for cross-account permissions. For more information, see [Lake Formation Permissions Reference](https://docs.aws.amazon.com/lake-formation/latest/dg/lf-permissions-reference.html).
  ///
  /// > **NOTE:** We highly recommend that the `principal` _NOT_ be a Lake Formation administrator (granted using `aws.lakeformation.DataLakeSettings`). The entity (e.g., IAM role) running the deployment will most likely need to be a Lake Formation administrator. As such, the entity will have implicit permissions and does not need permissions granted through this resource.
  ///
  /// One of the following is required:
  late final pulumi.Output<String> principal;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration block for a table resource. Detailed below.
  late final pulumi.Output<PermissionsTable> table;
  /// Configuration block for a table with columns resource. Detailed below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<PermissionsTableWithColumns> tableWithColumns;

  /// Creates a new [Permissions].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Permissions]. {@macro pulumi_lakeformation_permissions_permissions_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Permissions(
    String name, {
    PermissionsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/permissions:Permissions',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.catalogId = registerOutput<String?>('catalogId');
    this.catalogResource = registerOutput<bool?>('catalogResource');
    this.dataCellsFilter = registerOutput<PermissionsDataCellsFilter?>('dataCellsFilter');
    this.dataLocation = registerOutput<PermissionsDataLocation>('dataLocation');
    this.database = registerOutput<PermissionsDatabase>('database');
    this.lfTag = registerOutput<PermissionsLfTag>('lfTag');
    this.lfTagPolicy = registerOutput<PermissionsLfTagPolicy>('lfTagPolicy');
    this.permissions = registerOutput<List<String>>('permissions');
    this.permissionsWithGrantOptions = registerOutput<List<String>>('permissionsWithGrantOptions');
    this.principal = registerOutput<String>('principal');
    this.region = registerOutput<String>('region');
    this.table = registerOutput<PermissionsTable>('table');
    this.tableWithColumns = registerOutput<PermissionsTableWithColumns>('tableWithColumns');
  }
}
