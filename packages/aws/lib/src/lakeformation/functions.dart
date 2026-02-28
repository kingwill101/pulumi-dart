import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_lake_settings_args.dart';
import 'get_data_lake_settings_result.dart';
import 'get_permissions_args.dart';
import 'get_permissions_result.dart';
import 'get_resource_args.dart';
import 'get_resource_result.dart';

/// Get Lake Formation principals designated as data lake administrators and lists of principal permission entries for default create database and default create table permissions.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.lakeformation.getDataLakeSettings({
///     catalogId: "14916253649",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lakeformation.get_data_lake_settings(catalog_id="14916253649")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.LakeFormation.GetDataLakeSettings.Invoke(new()
///     {
///         CatalogId = "14916253649",
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
/// 		_, err := lakeformation.LookupDataLakeSettings(ctx, &lakeformation.LookupDataLakeSettingsArgs{
/// 			CatalogId: pulumi.StringRef("14916253649"),
/// 		}, nil)
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
/// import com.pulumi.aws.lakeformation.LakeformationFunctions;
/// import com.pulumi.aws.lakeformation.inputs.GetDataLakeSettingsArgs;
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
///         final var example = LakeformationFunctions.getDataLakeSettings(GetDataLakeSettingsArgs.builder()
///             .catalogId("14916253649")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:lakeformation:getDataLakeSettings
///       arguments:
///         catalogId: '14916253649'
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_lakeformation_get_data_lake_settings_get_data_lake_settings_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataLakeSettingsResult> getDataLakeSettings(
  GetDataLakeSettingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lakeformation/getDataLakeSettings:getDataLakeSettings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataLakeSettingsResult.fromMap(result);
}

/// Get permissions for a principal to access metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3. Permissions are granted to a principal, in a Data Catalog, relative to a Lake Formation resource, which includes the Data Catalog, databases, tables, LF-tags, and LF-tag policies. For more information, see [Security and Access Control to Metadata and Data in Lake Formation](https://docs.aws.amazon.com/lake-formation/latest/dg/security-data-access.html).
///
/// > **NOTE:** This data source deals with explicitly granted permissions. Lake Formation grants implicit permissions to data lake administrators, database creators, and table creators. For more information, see [Implicit Lake Formation Permissions](https://docs.aws.amazon.com/lake-formation/latest/dg/implicit-permissions.html).
///
/// ## Example Usage
///
/// ### Permissions For A Lake Formation S3 Resource
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.lakeformation.getPermissions({
///     principal: workflowRole.arn,
///     dataLocation: {
///         arn: testAwsLakeformationResource.arn,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.lakeformation.get_permissions(principal=workflow_role["arn"],
///     data_location={
///         "arn": test_aws_lakeformation_resource["arn"],
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
///     var test = Aws.LakeFormation.GetPermissions.Invoke(new()
///     {
///         Principal = workflowRole.Arn,
///         DataLocation = new Aws.LakeFormation.Inputs.GetPermissionsDataLocationInputArgs
///         {
///             Arn = testAwsLakeformationResource.Arn,
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
/// 		_, err := lakeformation.LookupPermissions(ctx, &lakeformation.LookupPermissionsArgs{
/// 			Principal: workflowRole.Arn,
/// 			DataLocation: lakeformation.GetPermissionsDataLocation{
/// 				Arn: testAwsLakeformationResource.Arn,
/// 			},
/// 		}, nil)
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
/// import com.pulumi.aws.lakeformation.LakeformationFunctions;
/// import com.pulumi.aws.lakeformation.inputs.GetPermissionsArgs;
/// import com.pulumi.aws.lakeformation.inputs.GetPermissionsDataLocationArgs;
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
///         final var test = LakeformationFunctions.getPermissions(GetPermissionsArgs.builder()
///             .principal(workflowRole.arn())
///             .dataLocation(GetPermissionsDataLocationArgs.builder()
///                 .arn(testAwsLakeformationResource.arn())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:lakeformation:getPermissions
///       arguments:
///         principal: ${workflowRole.arn}
///         dataLocation:
///           arn: ${testAwsLakeformationResource.arn}
/// ```
///
///
/// ### Permissions For A Glue Catalog Database
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.lakeformation.getPermissions({
///     principal: workflowRole.arn,
///     database: {
///         name: testAwsGlueCatalogDatabase.name,
///         catalogId: "110376042874",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.lakeformation.get_permissions(principal=workflow_role["arn"],
///     database={
///         "name": test_aws_glue_catalog_database["name"],
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
///     var test = Aws.LakeFormation.GetPermissions.Invoke(new()
///     {
///         Principal = workflowRole.Arn,
///         Database = new Aws.LakeFormation.Inputs.GetPermissionsDatabaseInputArgs
///         {
///             Name = testAwsGlueCatalogDatabase.Name,
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
/// 		_, err := lakeformation.LookupPermissions(ctx, &lakeformation.LookupPermissionsArgs{
/// 			Principal: workflowRole.Arn,
/// 			Database: lakeformation.GetPermissionsDatabase{
/// 				Name:      testAwsGlueCatalogDatabase.Name,
/// 				CatalogId: "110376042874",
/// 			},
/// 		}, nil)
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
/// import com.pulumi.aws.lakeformation.LakeformationFunctions;
/// import com.pulumi.aws.lakeformation.inputs.GetPermissionsArgs;
/// import com.pulumi.aws.lakeformation.inputs.GetPermissionsDatabaseArgs;
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
///         final var test = LakeformationFunctions.getPermissions(GetPermissionsArgs.builder()
///             .principal(workflowRole.arn())
///             .database(GetPermissionsDatabaseArgs.builder()
///                 .name(testAwsGlueCatalogDatabase.name())
///                 .catalogId("110376042874")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:lakeformation:getPermissions
///       arguments:
///         principal: ${workflowRole.arn}
///         database:
///           name: ${testAwsGlueCatalogDatabase.name}
///           catalogId: '110376042874'
/// ```
///
///
/// ### Permissions For Tag-Based Access Control
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.lakeformation.getPermissions({
///     principal: workflowRole.arn,
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
/// test = aws.lakeformation.get_permissions(principal=workflow_role["arn"],
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
///     var test = Aws.LakeFormation.GetPermissions.Invoke(new()
///     {
///         Principal = workflowRole.Arn,
///         LfTagPolicy = new Aws.LakeFormation.Inputs.GetPermissionsLfTagPolicyInputArgs
///         {
///             ResourceType = "DATABASE",
///             Expressions = new[]
///             {
///                 new Aws.LakeFormation.Inputs.GetPermissionsLfTagPolicyExpressionInputArgs
///                 {
///                     Key = "Team",
///                     Values = new[]
///                     {
///                         "Sales",
///                     },
///                 },
///                 new Aws.LakeFormation.Inputs.GetPermissionsLfTagPolicyExpressionInputArgs
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
/// 		_, err := lakeformation.LookupPermissions(ctx, &lakeformation.LookupPermissionsArgs{
/// 			Principal: workflowRole.Arn,
/// 			LfTagPolicy: lakeformation.GetPermissionsLfTagPolicy{
/// 				ResourceType: "DATABASE",
/// 				Expressions: []lakeformation.GetPermissionsLfTagPolicyExpression{
/// 					{
/// 						Key: "Team",
/// 						Values: []string{
/// 							"Sales",
/// 						},
/// 					},
/// 					{
/// 						Key: "Environment",
/// 						Values: []string{
/// 							"Dev",
/// 							"Production",
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// import com.pulumi.aws.lakeformation.LakeformationFunctions;
/// import com.pulumi.aws.lakeformation.inputs.GetPermissionsArgs;
/// import com.pulumi.aws.lakeformation.inputs.GetPermissionsLfTagPolicyArgs;
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
///         final var test = LakeformationFunctions.getPermissions(GetPermissionsArgs.builder()
///             .principal(workflowRole.arn())
///             .lfTagPolicy(GetPermissionsLfTagPolicyArgs.builder()
///                 .resourceType("DATABASE")
///                 .expressions(
///                     GetPermissionsLfTagPolicyExpressionArgs.builder()
///                         .key("Team")
///                         .values("Sales")
///                         .build(),
///                     GetPermissionsLfTagPolicyExpressionArgs.builder()
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
/// variables:
///   test:
///     fn::invoke:
///       function: aws:lakeformation:getPermissions
///       arguments:
///         principal: ${workflowRole.arn}
///         lfTagPolicy:
///           resourceType: DATABASE
///           expressions:
///             - key: Team
///               values:
///                 - Sales
///             - key: Environment
///               values:
///                 - Dev
///                 - Production
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_lakeformation_get_permissions_get_permissions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPermissionsResult> getPermissions(
  GetPermissionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lakeformation/getPermissions:getPermissions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPermissionsResult.fromMap(result);
}

/// Provides details about a Lake Formation resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.lakeformation.getResource({
///     arn: "arn:aws:s3:::tf-acc-test-9151654063908211878",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lakeformation.get_resource(arn="arn:aws:s3:::tf-acc-test-9151654063908211878")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.LakeFormation.GetResource.Invoke(new()
///     {
///         Arn = "arn:aws:s3:::tf-acc-test-9151654063908211878",
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
/// 		_, err := lakeformation.LookupResource(ctx, &lakeformation.LookupResourceArgs{
/// 			Arn: "arn:aws:s3:::tf-acc-test-9151654063908211878",
/// 		}, nil)
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
/// import com.pulumi.aws.lakeformation.LakeformationFunctions;
/// import com.pulumi.aws.lakeformation.inputs.GetResourceArgs;
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
///         final var example = LakeformationFunctions.getResource(GetResourceArgs.builder()
///             .arn("arn:aws:s3:::tf-acc-test-9151654063908211878")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:lakeformation:getResource
///       arguments:
///         arn: arn:aws:s3:::tf-acc-test-9151654063908211878
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_lakeformation_get_resource_get_resource_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourceResult> getResource(
  GetResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lakeformation/getResource:getResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourceResult.fromMap(result);
}
