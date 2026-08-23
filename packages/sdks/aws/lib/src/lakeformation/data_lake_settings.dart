import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_lake_settings_args.dart';
import 'data_lake_settings_state.dart';

/// Manages Lake Formation principals designated as data lake administrators and lists of principal permission entries for default create database and default create table permissions.
///
/// &gt; **NOTE:** Lake Formation introduces fine-grained access control for data in your data lake. Part of the changes include the `IAMAllowedPrincipals` principal in order to make Lake Formation backwards compatible with existing IAM and Glue permissions. For more information, see [Changing the Default Security Settings for Your Data Lake](https://docs.aws.amazon.com/lake-formation/latest/dg/change-settings.html) and [Upgrading AWS Glue Data Permissions to the AWS Lake Formation Model](https://docs.aws.amazon.com/lake-formation/latest/dg/upgrade-glue-lake-formation.html).
///
/// ## Example Usage
///
/// ### Data Lake Admins
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lakeformation.DataLakeSettings("example", {admins: [
///     test.arn,
///     testAwsIamRole.arn,
/// ]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lakeformation.DataLakeSettings("example", admins=[
///     test["arn"],
///     test_aws_iam_role["arn"],
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.LakeFormation.DataLakeSettings("example", new()
///     {
///         Admins = new[]
///         {
///             test.Arn,
///             testAwsIamRole.Arn,
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
/// 		_, err := lakeformation.NewDataLakeSettings(ctx, "example", &lakeformation.DataLakeSettingsArgs{
/// 			Admins: pulumi.StringArray{
/// 				test.Arn,
/// 				testAwsIamRole.Arn,
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
/// resource "aws_lakeformation_datalakesettings" "example" {
///   admins = [test.arn, testAwsIamRole.arn]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lakeformation.DataLakeSettings;
/// import com.pulumi.aws.lakeformation.DataLakeSettingsArgs;
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
///         var example = new DataLakeSettings("example", DataLakeSettingsArgs.builder()
///             .admins(
///                 test.arn(),
///                 testAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lakeformation:DataLakeSettings
///     properties:
///       admins:
///         - ${test.arn}
///         - ${testAwsIamRole.arn}
/// ```
///
///
/// ### Create Default Permissions
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lakeformation.DataLakeSettings("example", {
///     admins: [
///         test.arn,
///         testAwsIamRole.arn,
///     ],
///     createDatabaseDefaultPermissions: [{
///         permissions: [
///             "SELECT",
///             "ALTER",
///             "DROP",
///         ],
///         principal: test.arn,
///     }],
///     createTableDefaultPermissions: [{
///         permissions: ["ALL"],
///         principal: testAwsIamRole.arn,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lakeformation.DataLakeSettings("example",
///     admins=[
///         test["arn"],
///         test_aws_iam_role["arn"],
///     ],
///     create_database_default_permissions=[{
///         "permissions": [
///             "SELECT",
///             "ALTER",
///             "DROP",
///         ],
///         "principal": test["arn"],
///     }],
///     create_table_default_permissions=[{
///         "permissions": ["ALL"],
///         "principal": test_aws_iam_role["arn"],
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
///     var example = new Aws.LakeFormation.DataLakeSettings("example", new()
///     {
///         Admins = new[]
///         {
///             test.Arn,
///             testAwsIamRole.Arn,
///         },
///         CreateDatabaseDefaultPermissions = new[]
///         {
///             new Aws.LakeFormation.Inputs.DataLakeSettingsCreateDatabaseDefaultPermissionArgs
///             {
///                 Permissions = new[]
///                 {
///                     "SELECT",
///                     "ALTER",
///                     "DROP",
///                 },
///                 Principal = test.Arn,
///             },
///         },
///         CreateTableDefaultPermissions = new[]
///         {
///             new Aws.LakeFormation.Inputs.DataLakeSettingsCreateTableDefaultPermissionArgs
///             {
///                 Permissions = new[]
///                 {
///                     "ALL",
///                 },
///                 Principal = testAwsIamRole.Arn,
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
/// 		_, err := lakeformation.NewDataLakeSettings(ctx, "example", &lakeformation.DataLakeSettingsArgs{
/// 			Admins: pulumi.StringArray{
/// 				test.Arn,
/// 				testAwsIamRole.Arn,
/// 			},
/// 			CreateDatabaseDefaultPermissions: lakeformation.DataLakeSettingsCreateDatabaseDefaultPermissionArray{
/// 				&lakeformation.DataLakeSettingsCreateDatabaseDefaultPermissionArgs{
/// 					Permissions: pulumi.StringArray{
/// 						pulumi.String("SELECT"),
/// 						pulumi.String("ALTER"),
/// 						pulumi.String("DROP"),
/// 					},
/// 					Principal: pulumi.Any(test.Arn),
/// 				},
/// 			},
/// 			CreateTableDefaultPermissions: lakeformation.DataLakeSettingsCreateTableDefaultPermissionArray{
/// 				&lakeformation.DataLakeSettingsCreateTableDefaultPermissionArgs{
/// 					Permissions: pulumi.StringArray{
/// 						pulumi.String("ALL"),
/// 					},
/// 					Principal: pulumi.Any(testAwsIamRole.Arn),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_lakeformation_datalakesettings" "example" {
///   admins = [test.arn, testAwsIamRole.arn]
///   create_database_default_permissions {
///     permissions = ["SELECT", "ALTER", "DROP"]
///     principal   = test.arn
///   }
///   create_table_default_permissions {
///     permissions = ["ALL"]
///     principal   = testAwsIamRole.arn
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lakeformation.DataLakeSettings;
/// import com.pulumi.aws.lakeformation.DataLakeSettingsArgs;
/// import com.pulumi.aws.lakeformation.inputs.DataLakeSettingsCreateDatabaseDefaultPermissionArgs;
/// import com.pulumi.aws.lakeformation.inputs.DataLakeSettingsCreateTableDefaultPermissionArgs;
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
///         var example = new DataLakeSettings("example", DataLakeSettingsArgs.builder()
///             .admins(
///                 test.arn(),
///                 testAwsIamRole.arn())
///             .createDatabaseDefaultPermissions(DataLakeSettingsCreateDatabaseDefaultPermissionArgs.builder()
///                 .permissions(
///                     "SELECT",
///                     "ALTER",
///                     "DROP")
///                 .principal(test.arn())
///                 .build())
///             .createTableDefaultPermissions(DataLakeSettingsCreateTableDefaultPermissionArgs.builder()
///                 .permissions("ALL")
///                 .principal(testAwsIamRole.arn())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lakeformation:DataLakeSettings
///     properties:
///       admins:
///         - ${test.arn}
///         - ${testAwsIamRole.arn}
///       createDatabaseDefaultPermissions:
///         - permissions:
///             - SELECT
///             - ALTER
///             - DROP
///           principal: ${test.arn}
///       createTableDefaultPermissions:
///         - permissions:
///             - ALL
///           principal: ${testAwsIamRole.arn}
/// ```
///
///
/// ### Enable EMR access to LakeFormation resources
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lakeformation.DataLakeSettings("example", {
///     admins: [
///         test.arn,
///         testAwsIamRole.arn,
///     ],
///     createDatabaseDefaultPermissions: [{
///         permissions: [
///             "SELECT",
///             "ALTER",
///             "DROP",
///         ],
///         principal: test.arn,
///     }],
///     createTableDefaultPermissions: [{
///         permissions: ["ALL"],
///         principal: testAwsIamRole.arn,
///     }],
///     allowExternalDataFiltering: true,
///     externalDataFilteringAllowLists: [
///         current.accountId,
///         thirdParty.accountId,
///     ],
///     authorizedSessionTagValueLists: ["Amazon EMR"],
///     allowFullTableExternalDataAccess: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lakeformation.DataLakeSettings("example",
///     admins=[
///         test["arn"],
///         test_aws_iam_role["arn"],
///     ],
///     create_database_default_permissions=[{
///         "permissions": [
///             "SELECT",
///             "ALTER",
///             "DROP",
///         ],
///         "principal": test["arn"],
///     }],
///     create_table_default_permissions=[{
///         "permissions": ["ALL"],
///         "principal": test_aws_iam_role["arn"],
///     }],
///     allow_external_data_filtering=True,
///     external_data_filtering_allow_lists=[
///         current["accountId"],
///         third_party["accountId"],
///     ],
///     authorized_session_tag_value_lists=["Amazon EMR"],
///     allow_full_table_external_data_access=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.LakeFormation.DataLakeSettings("example", new()
///     {
///         Admins = new[]
///         {
///             test.Arn,
///             testAwsIamRole.Arn,
///         },
///         CreateDatabaseDefaultPermissions = new[]
///         {
///             new Aws.LakeFormation.Inputs.DataLakeSettingsCreateDatabaseDefaultPermissionArgs
///             {
///                 Permissions = new[]
///                 {
///                     "SELECT",
///                     "ALTER",
///                     "DROP",
///                 },
///                 Principal = test.Arn,
///             },
///         },
///         CreateTableDefaultPermissions = new[]
///         {
///             new Aws.LakeFormation.Inputs.DataLakeSettingsCreateTableDefaultPermissionArgs
///             {
///                 Permissions = new[]
///                 {
///                     "ALL",
///                 },
///                 Principal = testAwsIamRole.Arn,
///             },
///         },
///         AllowExternalDataFiltering = true,
///         ExternalDataFilteringAllowLists = new[]
///         {
///             current.AccountId,
///             thirdParty.AccountId,
///         },
///         AuthorizedSessionTagValueLists = new[]
///         {
///             "Amazon EMR",
///         },
///         AllowFullTableExternalDataAccess = true,
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
/// 		_, err := lakeformation.NewDataLakeSettings(ctx, "example", &lakeformation.DataLakeSettingsArgs{
/// 			Admins: pulumi.StringArray{
/// 				test.Arn,
/// 				testAwsIamRole.Arn,
/// 			},
/// 			CreateDatabaseDefaultPermissions: lakeformation.DataLakeSettingsCreateDatabaseDefaultPermissionArray{
/// 				&lakeformation.DataLakeSettingsCreateDatabaseDefaultPermissionArgs{
/// 					Permissions: pulumi.StringArray{
/// 						pulumi.String("SELECT"),
/// 						pulumi.String("ALTER"),
/// 						pulumi.String("DROP"),
/// 					},
/// 					Principal: pulumi.Any(test.Arn),
/// 				},
/// 			},
/// 			CreateTableDefaultPermissions: lakeformation.DataLakeSettingsCreateTableDefaultPermissionArray{
/// 				&lakeformation.DataLakeSettingsCreateTableDefaultPermissionArgs{
/// 					Permissions: pulumi.StringArray{
/// 						pulumi.String("ALL"),
/// 					},
/// 					Principal: pulumi.Any(testAwsIamRole.Arn),
/// 				},
/// 			},
/// 			AllowExternalDataFiltering: pulumi.Bool(true),
/// 			ExternalDataFilteringAllowLists: pulumi.StringArray{
/// 				current.AccountId,
/// 				thirdParty.AccountId,
/// 			},
/// 			AuthorizedSessionTagValueLists: pulumi.StringArray{
/// 				pulumi.String("Amazon EMR"),
/// 			},
/// 			AllowFullTableExternalDataAccess: pulumi.Bool(true),
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
/// resource "aws_lakeformation_datalakesettings" "example" {
///   admins = [test.arn, testAwsIamRole.arn]
///   create_database_default_permissions {
///     permissions = ["SELECT", "ALTER", "DROP"]
///     principal   = test.arn
///   }
///   create_table_default_permissions {
///     permissions = ["ALL"]
///     principal   = testAwsIamRole.arn
///   }
///   allow_external_data_filtering         = true
///   external_data_filtering_allow_lists   = [current.accountId, thirdParty.accountId]
///   authorized_session_tag_value_lists    = ["Amazon EMR"]
///   allow_full_table_external_data_access = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lakeformation.DataLakeSettings;
/// import com.pulumi.aws.lakeformation.DataLakeSettingsArgs;
/// import com.pulumi.aws.lakeformation.inputs.DataLakeSettingsCreateDatabaseDefaultPermissionArgs;
/// import com.pulumi.aws.lakeformation.inputs.DataLakeSettingsCreateTableDefaultPermissionArgs;
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
///         var example = new DataLakeSettings("example", DataLakeSettingsArgs.builder()
///             .admins(
///                 test.arn(),
///                 testAwsIamRole.arn())
///             .createDatabaseDefaultPermissions(DataLakeSettingsCreateDatabaseDefaultPermissionArgs.builder()
///                 .permissions(
///                     "SELECT",
///                     "ALTER",
///                     "DROP")
///                 .principal(test.arn())
///                 .build())
///             .createTableDefaultPermissions(DataLakeSettingsCreateTableDefaultPermissionArgs.builder()
///                 .permissions("ALL")
///                 .principal(testAwsIamRole.arn())
///                 .build())
///             .allowExternalDataFiltering(true)
///             .externalDataFilteringAllowLists(
///                 current.accountId(),
///                 thirdParty.accountId())
///             .authorizedSessionTagValueLists("Amazon EMR")
///             .allowFullTableExternalDataAccess(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lakeformation:DataLakeSettings
///     properties:
///       admins:
///         - ${test.arn}
///         - ${testAwsIamRole.arn}
///       createDatabaseDefaultPermissions:
///         - permissions:
///             - SELECT
///             - ALTER
///             - DROP
///           principal: ${test.arn}
///       createTableDefaultPermissions:
///         - permissions:
///             - ALL
///           principal: ${testAwsIamRole.arn}
///       allowExternalDataFiltering: true
///       externalDataFilteringAllowLists:
///         - ${current.accountId}
///         - ${thirdParty.accountId}
///       authorizedSessionTagValueLists:
///         - Amazon EMR
///       allowFullTableExternalDataAccess: true
/// ```
///
///
/// ### Change Cross Account Version
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lakeformation.DataLakeSettings("example", {parameters: {
///     CROSS_ACCOUNT_VERSION: "3",
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lakeformation.DataLakeSettings("example", parameters={
///     "CROSS_ACCOUNT_VERSION": "3",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.LakeFormation.DataLakeSettings("example", new()
///     {
///         Parameters =
///         {
///             { "CROSS_ACCOUNT_VERSION", "3" },
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
/// 		_, err := lakeformation.NewDataLakeSettings(ctx, "example", &lakeformation.DataLakeSettingsArgs{
/// 			Parameters: pulumi.StringMap{
/// 				"CROSS_ACCOUNT_VERSION": pulumi.String("3"),
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
/// resource "aws_lakeformation_datalakesettings" "example" {
///   parameters = {
///     "CROSS_ACCOUNT_VERSION" = "3"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lakeformation.DataLakeSettings;
/// import com.pulumi.aws.lakeformation.DataLakeSettingsArgs;
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
///         var example = new DataLakeSettings("example", DataLakeSettingsArgs.builder()
///             .parameters(Map.of("CROSS_ACCOUNT_VERSION", "3"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lakeformation:DataLakeSettings
///     properties:
///       parameters:
///         CROSS_ACCOUNT_VERSION: '3'
/// ```
class DataLakeSettings extends pulumi.CustomResource {
  /// Set of ARNs of AWS Lake Formation principals (IAM users or roles).
  late final pulumi.Output<List<String>> admins;
  /// Whether to allow Amazon EMR clusters to access data managed by Lake Formation.
  late final pulumi.Output<bool?> allowExternalDataFiltering;
  /// Whether to allow a third-party query engine to get data access credentials without session tags when a caller has full data access permissions.
  late final pulumi.Output<bool?> allowFullTableExternalDataAccess;
  /// Lake Formation relies on a privileged process secured by Amazon EMR or the third party integrator to tag the user's role while assuming it.
  late final pulumi.Output<List<String>> authorizedSessionTagValueLists;
  /// Identifier for the Data Catalog. By default, the account ID.
  late final pulumi.Output<String?> catalogId;
  /// Up to three configuration blocks of principal permissions for default create database permissions. Detailed below.
  late final pulumi.Output<List<Map<String, dynamic>>> createDatabaseDefaultPermissions;
  /// Up to three configuration blocks of principal permissions for default create table permissions. Detailed below.
  late final pulumi.Output<List<Map<String, dynamic>>> createTableDefaultPermissions;
  /// A list of the account IDs of Amazon Web Services accounts with Amazon EMR clusters that are to perform data filtering.
  late final pulumi.Output<List<String>> externalDataFilteringAllowLists;
  /// Key-value map of additional configuration. Valid values for the `CROSS_ACCOUNT_VERSION` key are `"1"`, `"2"`, `"3"`, or `"4"`. `SET_CONTEXT` is also returned with a value of `TRUE`. In a fresh account, prior to configuring, `CROSS_ACCOUNT_VERSION` is `"1"`. Destroying this resource sets the `CROSS_ACCOUNT_VERSION` to `"1"`.
  late final pulumi.Output<Map<String, String>> parameters;
  /// Set of ARNs of AWS Lake Formation principals (IAM users or roles) with only view access to the resources.
  late final pulumi.Output<List<String>> readOnlyAdmins;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// List of the resource-owning account IDs that the caller's account can use to share their user access details (user ARNs).
  ///
  /// &gt; **NOTE:** Although optional, not including `admins`, `createDatabaseDefaultPermissions`, `createTableDefaultPermissions`, `parameters`, and/or `trustedResourceOwners` results in the setting being cleared.
  late final pulumi.Output<List<String>> trustedResourceOwners;

  /// Creates a new [DataLakeSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataLakeSettings]. {@macro pulumi_lakeformation_data_lake_settings_data_lake_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataLakeSettings(
    String name, {
    DataLakeSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/dataLakeSettings:DataLakeSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    admins = registerOutput<List<String>>('admins');
    allowExternalDataFiltering = registerOutput<bool?>('allowExternalDataFiltering');
    allowFullTableExternalDataAccess = registerOutput<bool?>('allowFullTableExternalDataAccess');
    authorizedSessionTagValueLists = registerOutput<List<String>>('authorizedSessionTagValueLists');
    catalogId = registerOutput<String?>('catalogId');
    createDatabaseDefaultPermissions = registerOutput<List<Map<String, dynamic>>>('createDatabaseDefaultPermissions');
    createTableDefaultPermissions = registerOutput<List<Map<String, dynamic>>>('createTableDefaultPermissions');
    externalDataFilteringAllowLists = registerOutput<List<String>>('externalDataFilteringAllowLists');
    parameters = registerOutput<Map<String, String>>('parameters');
    readOnlyAdmins = registerOutput<List<String>>('readOnlyAdmins');
    region = registerOutput<String>('region');
    trustedResourceOwners = registerOutput<List<String>>('trustedResourceOwners');
  }

  /// Gets an existing [DataLakeSettings] resource's state with the given [name] and [id].
  static DataLakeSettings get(
    String name,
    pulumi.Input<String> id, {
    DataLakeSettingsState? state,
  }) {
    return DataLakeSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DataLakeSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/dataLakeSettings:DataLakeSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    admins = registerOutput<List<String>>('admins');
    allowExternalDataFiltering = registerOutput<bool?>('allowExternalDataFiltering');
    allowFullTableExternalDataAccess = registerOutput<bool?>('allowFullTableExternalDataAccess');
    authorizedSessionTagValueLists = registerOutput<List<String>>('authorizedSessionTagValueLists');
    catalogId = registerOutput<String?>('catalogId');
    createDatabaseDefaultPermissions = registerOutput<List<Map<String, dynamic>>>('createDatabaseDefaultPermissions');
    createTableDefaultPermissions = registerOutput<List<Map<String, dynamic>>>('createTableDefaultPermissions');
    externalDataFilteringAllowLists = registerOutput<List<String>>('externalDataFilteringAllowLists');
    parameters = registerOutput<Map<String, String>>('parameters');
    readOnlyAdmins = registerOutput<List<String>>('readOnlyAdmins');
    region = registerOutput<String>('region');
    trustedResourceOwners = registerOutput<List<String>>('trustedResourceOwners');
  }
}
