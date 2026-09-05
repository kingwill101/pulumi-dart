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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_lakeformation_getdatalakesettings" "example" {
///   catalog_id = "14916253649"
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

pulumi.Output<GetDataLakeSettingsResult> getDataLakeSettingsOutput(
  GetDataLakeSettingsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:lakeformation/getDataLakeSettings:getDataLakeSettings',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataLakeSettingsResult.fromMap);
}

/// Get permissions for a principal to access metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3. Permissions are granted to a principal, in a Data Catalog, relative to a Lake Formation resource, which includes the Data Catalog, databases, tables, LF-tags, and LF-tag policies. For more information, see [Security and Access Control to Metadata and Data in Lake Formation](https://docs.aws.amazon.com/lake-formation/latest/dg/security-data-access.html).
///
/// &gt; **NOTE:** This data source deals with explicitly granted permissions. Lake Formation grants implicit permissions to data lake administrators, database creators, and table creators. For more information, see [Implicit Lake Formation Permissions](https://docs.aws.amazon.com/lake-formation/latest/dg/implicit-permissions.html).
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
///     dataLocation: {
///         arn: testAwsLakeformationResource.arn,
///     },
///     principal: workflowRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.lakeformation.get_permissions(data_location={
///         "arn": test_aws_lakeformation_resource["arn"],
///     },
///     principal=workflow_role["arn"])
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
///         DataLocation = new Aws.LakeFormation.Inputs.GetPermissionsDataLocationInputArgs
///         {
///             Arn = testAwsLakeformationResource.Arn,
///         },
///         Principal = workflowRole.Arn,
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
/// 			DataLocation: lakeformation.GetPermissionsDataLocation{
/// 				Arn: testAwsLakeformationResource.Arn,
/// 			},
/// 			Principal: workflowRole.Arn,
/// 		}, nil)
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
/// data "aws_lakeformation_getpermissions" "test" {
///   data_location = {
///     arn = testAwsLakeformationResource.arn
///   }
///   principal = workflowRole.arn
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
///         final var test = LakeformationFunctions.getPermissions(GetPermissionsArgs.builder()
///             .dataLocation(GetPermissionsDataLocationArgs.builder()
///                 .arn(testAwsLakeformationResource.arn())
///                 .build())
///             .principal(workflowRole.arn())
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
///         dataLocation:
///           arn: ${testAwsLakeformationResource.arn}
///         principal: ${workflowRole.arn}
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
///     database: {
///         name: testAwsGlueCatalogDatabase.name,
///         catalogId: "110376042874",
///     },
///     principal: workflowRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.lakeformation.get_permissions(database={
///         "name": test_aws_glue_catalog_database["name"],
///         "catalog_id": "110376042874",
///     },
///     principal=workflow_role["arn"])
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
///         Database = new Aws.LakeFormation.Inputs.GetPermissionsDatabaseInputArgs
///         {
///             Name = testAwsGlueCatalogDatabase.Name,
///             CatalogId = "110376042874",
///         },
///         Principal = workflowRole.Arn,
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
/// 			Database: lakeformation.GetPermissionsDatabase{
/// 				Name:      testAwsGlueCatalogDatabase.Name,
/// 				CatalogId: "110376042874",
/// 			},
/// 			Principal: workflowRole.Arn,
/// 		}, nil)
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
/// data "aws_lakeformation_getpermissions" "test" {
///   database = {
///     name       = testAwsGlueCatalogDatabase.name
///     catalog_id = "110376042874"
///   }
///   principal = workflowRole.arn
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
///         final var test = LakeformationFunctions.getPermissions(GetPermissionsArgs.builder()
///             .database(GetPermissionsDatabaseArgs.builder()
///                 .name(testAwsGlueCatalogDatabase.name())
///                 .catalogId("110376042874")
///                 .build())
///             .principal(workflowRole.arn())
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
///         database:
///           name: ${testAwsGlueCatalogDatabase.name}
///           catalogId: '110376042874'
///         principal: ${workflowRole.arn}
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
///     lfTagPolicy: {
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
///         resourceType: "DATABASE",
///     },
///     principal: workflowRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.lakeformation.get_permissions(lf_tag_policy={
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
///         "resource_type": "DATABASE",
///     },
///     principal=workflow_role["arn"])
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
///         LfTagPolicy = new Aws.LakeFormation.Inputs.GetPermissionsLfTagPolicyInputArgs
///         {
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
///             ResourceType = "DATABASE",
///         },
///         Principal = workflowRole.Arn,
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
/// 			LfTagPolicy: lakeformation.GetPermissionsLfTagPolicy{
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
/// 				ResourceType: "DATABASE",
/// 			},
/// 			Principal: workflowRole.Arn,
/// 		}, nil)
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
/// data "aws_lakeformation_getpermissions" "test" {
///   lf_tag_policy = {
///     expressions = [{
///       "key"    = "Team"
///       "values" = ["Sales"]
///       }, {
///       "key"    = "Environment"
///       "values" = ["Dev", "Production"]
///     }]
///     resource_type = "DATABASE"
///   }
///   principal = workflowRole.arn
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
/// import com.pulumi.aws.lakeformation.inputs.GetPermissionsLfTagPolicyExpressionArgs;
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
///         final var test = LakeformationFunctions.getPermissions(GetPermissionsArgs.builder()
///             .lfTagPolicy(GetPermissionsLfTagPolicyArgs.builder()
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
///                 .resourceType("DATABASE")
///                 .build())
///             .principal(workflowRole.arn())
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
///         lfTagPolicy:
///           expressions:
///             - key: Team
///               values:
///                 - Sales
///             - key: Environment
///               values:
///                 - Dev
///                 - Production
///           resourceType: DATABASE
///         principal: ${workflowRole.arn}
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

pulumi.Output<GetPermissionsResult> getPermissionsOutput(
  GetPermissionsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:lakeformation/getPermissions:getPermissions',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPermissionsResult.fromMap);
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_lakeformation_getresource" "example" {
///   arn = "arn:aws:s3:::tf-acc-test-9151654063908211878"
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

pulumi.Output<GetResourceResult> getResourceOutput(
  GetResourceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:lakeformation/getResource:getResource',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetResourceResult.fromMap);
}
