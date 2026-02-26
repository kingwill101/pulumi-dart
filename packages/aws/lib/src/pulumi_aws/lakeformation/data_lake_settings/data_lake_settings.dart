import 'package:pulumi/pulumi.dart';
import '../data_lake_settings_create_database_default_permission/data_lake_settings_create_database_default_permission.dart';
import '../data_lake_settings_create_table_default_permission/data_lake_settings_create_table_default_permission.dart';
import 'data_lake_settings_args.dart';

/// Manages Lake Formation principals designated as data lake administrators and lists of principal permission entries for default create database and default create table permissions.
///
/// > **NOTE:** Lake Formation introduces fine-grained access control for data in your data lake. Part of the changes include the `IAMAllowedPrincipals` principal in order to make Lake Formation backwards compatible with existing IAM and Glue permissions. For more information, see [Changing the Default Security Settings for Your Data Lake](https://docs.aws.amazon.com/lake-formation/latest/dg/change-settings.html) and [Upgrading AWS Glue Data Permissions to the AWS Lake Formation Model](https://docs.aws.amazon.com/lake-formation/latest/dg/upgrade-glue-lake-formation.html).
///
/// ## Example Usage
///
/// ### Data Lake Admins
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lakeformation.DataLakeSettings("example", {admins: [
/// test.arn,
/// testAwsIamRole.arn,
/// ]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lakeformation.DataLakeSettings("example", admins=[
/// test["arn"],
/// test_aws_iam_role["arn"],
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
/// var example = new Aws.LakeFormation.DataLakeSettings("example", new()
/// {
/// Admins = new[]
/// {
/// test.Arn,
/// testAwsIamRole.Arn,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lakeformation.NewDataLakeSettings(ctx, "example", &lakeformation.DataLakeSettingsArgs{
/// Admins: pulumi.StringArray{
/// test.Arn,
/// testAwsIamRole.Arn,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new DataLakeSettings("example", DataLakeSettingsArgs.builder()
/// .admins(
/// test.arn(),
/// testAwsIamRole.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lakeformation:DataLakeSettings
/// properties:
/// admins:
/// - ${test.arn}
/// - ${testAwsIamRole.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Create Default Permissions
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lakeformation.DataLakeSettings("example", {
/// admins: [
/// test.arn,
/// testAwsIamRole.arn,
/// ],
/// createDatabaseDefaultPermissions: [{
/// permissions: [
/// "SELECT",
/// "ALTER",
/// "DROP",
/// ],
/// principal: test.arn,
/// }],
/// createTableDefaultPermissions: [{
/// permissions: ["ALL"],
/// principal: testAwsIamRole.arn,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lakeformation.DataLakeSettings("example",
/// admins=[
/// test["arn"],
/// test_aws_iam_role["arn"],
/// ],
/// create_database_default_permissions=[{
/// "permissions": [
/// "SELECT",
/// "ALTER",
/// "DROP",
/// ],
/// "principal": test["arn"],
/// }],
/// create_table_default_permissions=[{
/// "permissions": ["ALL"],
/// "principal": test_aws_iam_role["arn"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.LakeFormation.DataLakeSettings("example", new()
/// {
/// Admins = new[]
/// {
/// test.Arn,
/// testAwsIamRole.Arn,
/// },
/// CreateDatabaseDefaultPermissions = new[]
/// {
/// new Aws.LakeFormation.Inputs.DataLakeSettingsCreateDatabaseDefaultPermissionArgs
/// {
/// Permissions = new[]
/// {
/// "SELECT",
/// "ALTER",
/// "DROP",
/// },
/// Principal = test.Arn,
/// },
/// },
/// CreateTableDefaultPermissions = new[]
/// {
/// new Aws.LakeFormation.Inputs.DataLakeSettingsCreateTableDefaultPermissionArgs
/// {
/// Permissions = new[]
/// {
/// "ALL",
/// },
/// Principal = testAwsIamRole.Arn,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lakeformation.NewDataLakeSettings(ctx, "example", &lakeformation.DataLakeSettingsArgs{
/// Admins: pulumi.StringArray{
/// test.Arn,
/// testAwsIamRole.Arn,
/// },
/// CreateDatabaseDefaultPermissions: lakeformation.DataLakeSettingsCreateDatabaseDefaultPermissionArray{
/// &lakeformation.DataLakeSettingsCreateDatabaseDefaultPermissionArgs{
/// Permissions: pulumi.StringArray{
/// pulumi.String("SELECT"),
/// pulumi.String("ALTER"),
/// pulumi.String("DROP"),
/// },
/// Principal: pulumi.Any(test.Arn),
/// },
/// },
/// CreateTableDefaultPermissions: lakeformation.DataLakeSettingsCreateTableDefaultPermissionArray{
/// &lakeformation.DataLakeSettingsCreateTableDefaultPermissionArgs{
/// Permissions: pulumi.StringArray{
/// pulumi.String("ALL"),
/// },
/// Principal: pulumi.Any(testAwsIamRole.Arn),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new DataLakeSettings("example", DataLakeSettingsArgs.builder()
/// .admins(
/// test.arn(),
/// testAwsIamRole.arn())
/// .createDatabaseDefaultPermissions(DataLakeSettingsCreateDatabaseDefaultPermissionArgs.builder()
/// .permissions(
/// "SELECT",
/// "ALTER",
/// "DROP")
/// .principal(test.arn())
/// .build())
/// .createTableDefaultPermissions(DataLakeSettingsCreateTableDefaultPermissionArgs.builder()
/// .permissions("ALL")
/// .principal(testAwsIamRole.arn())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lakeformation:DataLakeSettings
/// properties:
/// admins:
/// - ${test.arn}
/// - ${testAwsIamRole.arn}
/// createDatabaseDefaultPermissions:
/// - permissions:
/// - SELECT
/// - ALTER
/// - DROP
/// principal: ${test.arn}
/// createTableDefaultPermissions:
/// - permissions:
/// - ALL
/// principal: ${testAwsIamRole.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Enable EMR access to LakeFormation resources
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lakeformation.DataLakeSettings("example", {
/// admins: [
/// test.arn,
/// testAwsIamRole.arn,
/// ],
/// createDatabaseDefaultPermissions: [{
/// permissions: [
/// "SELECT",
/// "ALTER",
/// "DROP",
/// ],
/// principal: test.arn,
/// }],
/// createTableDefaultPermissions: [{
/// permissions: ["ALL"],
/// principal: testAwsIamRole.arn,
/// }],
/// allowExternalDataFiltering: true,
/// externalDataFilteringAllowLists: [
/// current.accountId,
/// thirdParty.accountId,
/// ],
/// authorizedSessionTagValueLists: ["Amazon EMR"],
/// allowFullTableExternalDataAccess: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lakeformation.DataLakeSettings("example",
/// admins=[
/// test["arn"],
/// test_aws_iam_role["arn"],
/// ],
/// create_database_default_permissions=[{
/// "permissions": [
/// "SELECT",
/// "ALTER",
/// "DROP",
/// ],
/// "principal": test["arn"],
/// }],
/// create_table_default_permissions=[{
/// "permissions": ["ALL"],
/// "principal": test_aws_iam_role["arn"],
/// }],
/// allow_external_data_filtering=True,
/// external_data_filtering_allow_lists=[
/// current["accountId"],
/// third_party["accountId"],
/// ],
/// authorized_session_tag_value_lists=["Amazon EMR"],
/// allow_full_table_external_data_access=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.LakeFormation.DataLakeSettings("example", new()
/// {
/// Admins = new[]
/// {
/// test.Arn,
/// testAwsIamRole.Arn,
/// },
/// CreateDatabaseDefaultPermissions = new[]
/// {
/// new Aws.LakeFormation.Inputs.DataLakeSettingsCreateDatabaseDefaultPermissionArgs
/// {
/// Permissions = new[]
/// {
/// "SELECT",
/// "ALTER",
/// "DROP",
/// },
/// Principal = test.Arn,
/// },
/// },
/// CreateTableDefaultPermissions = new[]
/// {
/// new Aws.LakeFormation.Inputs.DataLakeSettingsCreateTableDefaultPermissionArgs
/// {
/// Permissions = new[]
/// {
/// "ALL",
/// },
/// Principal = testAwsIamRole.Arn,
/// },
/// },
/// AllowExternalDataFiltering = true,
/// ExternalDataFilteringAllowLists = new[]
/// {
/// current.AccountId,
/// thirdParty.AccountId,
/// },
/// AuthorizedSessionTagValueLists = new[]
/// {
/// "Amazon EMR",
/// },
/// AllowFullTableExternalDataAccess = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lakeformation.NewDataLakeSettings(ctx, "example", &lakeformation.DataLakeSettingsArgs{
/// Admins: pulumi.StringArray{
/// test.Arn,
/// testAwsIamRole.Arn,
/// },
/// CreateDatabaseDefaultPermissions: lakeformation.DataLakeSettingsCreateDatabaseDefaultPermissionArray{
/// &lakeformation.DataLakeSettingsCreateDatabaseDefaultPermissionArgs{
/// Permissions: pulumi.StringArray{
/// pulumi.String("SELECT"),
/// pulumi.String("ALTER"),
/// pulumi.String("DROP"),
/// },
/// Principal: pulumi.Any(test.Arn),
/// },
/// },
/// CreateTableDefaultPermissions: lakeformation.DataLakeSettingsCreateTableDefaultPermissionArray{
/// &lakeformation.DataLakeSettingsCreateTableDefaultPermissionArgs{
/// Permissions: pulumi.StringArray{
/// pulumi.String("ALL"),
/// },
/// Principal: pulumi.Any(testAwsIamRole.Arn),
/// },
/// },
/// AllowExternalDataFiltering: pulumi.Bool(true),
/// ExternalDataFilteringAllowLists: pulumi.StringArray{
/// current.AccountId,
/// thirdParty.AccountId,
/// },
/// AuthorizedSessionTagValueLists: pulumi.StringArray{
/// pulumi.String("Amazon EMR"),
/// },
/// AllowFullTableExternalDataAccess: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new DataLakeSettings("example", DataLakeSettingsArgs.builder()
/// .admins(
/// test.arn(),
/// testAwsIamRole.arn())
/// .createDatabaseDefaultPermissions(DataLakeSettingsCreateDatabaseDefaultPermissionArgs.builder()
/// .permissions(
/// "SELECT",
/// "ALTER",
/// "DROP")
/// .principal(test.arn())
/// .build())
/// .createTableDefaultPermissions(DataLakeSettingsCreateTableDefaultPermissionArgs.builder()
/// .permissions("ALL")
/// .principal(testAwsIamRole.arn())
/// .build())
/// .allowExternalDataFiltering(true)
/// .externalDataFilteringAllowLists(
/// current.accountId(),
/// thirdParty.accountId())
/// .authorizedSessionTagValueLists("Amazon EMR")
/// .allowFullTableExternalDataAccess(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lakeformation:DataLakeSettings
/// properties:
/// admins:
/// - ${test.arn}
/// - ${testAwsIamRole.arn}
/// createDatabaseDefaultPermissions:
/// - permissions:
/// - SELECT
/// - ALTER
/// - DROP
/// principal: ${test.arn}
/// createTableDefaultPermissions:
/// - permissions:
/// - ALL
/// principal: ${testAwsIamRole.arn}
/// allowExternalDataFiltering: true
/// externalDataFilteringAllowLists:
/// - ${current.accountId}
/// - ${thirdParty.accountId}
/// authorizedSessionTagValueLists:
/// - Amazon EMR
/// allowFullTableExternalDataAccess: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Change Cross Account Version
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lakeformation.DataLakeSettings("example", {parameters: {
/// CROSS_ACCOUNT_VERSION: "3",
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lakeformation.DataLakeSettings("example", parameters={
/// "CROSS_ACCOUNT_VERSION": "3",
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
/// var example = new Aws.LakeFormation.DataLakeSettings("example", new()
/// {
/// Parameters =
/// {
/// { "CROSS_ACCOUNT_VERSION", "3" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lakeformation.NewDataLakeSettings(ctx, "example", &lakeformation.DataLakeSettingsArgs{
/// Parameters: pulumi.StringMap{
/// "CROSS_ACCOUNT_VERSION": pulumi.String("3"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new DataLakeSettings("example", DataLakeSettingsArgs.builder()
/// .parameters(Map.of("CROSS_ACCOUNT_VERSION", "3"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lakeformation:DataLakeSettings
/// properties:
/// parameters:
/// CROSS_ACCOUNT_VERSION: '3'
/// ```
/// <!--End PulumiCodeChooser -->
class DataLakeSettings extends CustomResource {
  /// Set of ARNs of AWS Lake Formation principals (IAM users or roles).
  late final Output<List<String>> admins;

  /// Whether to allow Amazon EMR clusters to access data managed by Lake Formation.
  late final Output<bool?> allowExternalDataFiltering;

  /// Whether to allow a third-party query engine to get data access credentials without session tags when a caller has full data access permissions.
  late final Output<bool?> allowFullTableExternalDataAccess;

  /// Lake Formation relies on a privileged process secured by Amazon EMR or the third party integrator to tag the user's role while assuming it.
  late final Output<List<String>> authorizedSessionTagValueLists;

  /// Identifier for the Data Catalog. By default, the account ID.
  late final Output<String?> catalogId;

  /// Up to three configuration blocks of principal permissions for default create database permissions. Detailed below.
  late final Output<List<DataLakeSettingsCreateDatabaseDefaultPermission>>
      createDatabaseDefaultPermissions;

  /// Up to three configuration blocks of principal permissions for default create table permissions. Detailed below.
  late final Output<List<DataLakeSettingsCreateTableDefaultPermission>>
      createTableDefaultPermissions;

  /// A list of the account IDs of Amazon Web Services accounts with Amazon EMR clusters that are to perform data filtering.
  late final Output<List<String>> externalDataFilteringAllowLists;

  /// Key-value map of additional configuration. Valid values for the `CROSS_ACCOUNT_VERSION` key are `"1"`, `"2"`, `"3"`, or `"4"`. `SET_CONTEXT` is also returned with a value of `TRUE`. In a fresh account, prior to configuring, `CROSS_ACCOUNT_VERSION` is `"1"`. Destroying this resource sets the `CROSS_ACCOUNT_VERSION` to `"1"`.
  late final Output<Map<String, String>> parameters;

  /// Set of ARNs of AWS Lake Formation principals (IAM users or roles) with only view access to the resources.
  late final Output<List<String>> readOnlyAdmins;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// List of the resource-owning account IDs that the caller's account can use to share their user access details (user ARNs).
  ///
  /// > **NOTE:** Although optional, not including <span pulumi-lang-nodejs="`admins`" pulumi-lang-dotnet="`Admins`" pulumi-lang-go="`admins`" pulumi-lang-python="`admins`" pulumi-lang-yaml="`admins`" pulumi-lang-java="`admins`">`admins`</span>, <span pulumi-lang-nodejs="`createDatabaseDefaultPermissions`" pulumi-lang-dotnet="`CreateDatabaseDefaultPermissions`" pulumi-lang-go="`createDatabaseDefaultPermissions`" pulumi-lang-python="`create_database_default_permissions`" pulumi-lang-yaml="`createDatabaseDefaultPermissions`" pulumi-lang-java="`createDatabaseDefaultPermissions`">`create_database_default_permissions`</span>, <span pulumi-lang-nodejs="`createTableDefaultPermissions`" pulumi-lang-dotnet="`CreateTableDefaultPermissions`" pulumi-lang-go="`createTableDefaultPermissions`" pulumi-lang-python="`create_table_default_permissions`" pulumi-lang-yaml="`createTableDefaultPermissions`" pulumi-lang-java="`createTableDefaultPermissions`">`create_table_default_permissions`</span>, <span pulumi-lang-nodejs="`parameters`" pulumi-lang-dotnet="`Parameters`" pulumi-lang-go="`parameters`" pulumi-lang-python="`parameters`" pulumi-lang-yaml="`parameters`" pulumi-lang-java="`parameters`">`parameters`</span>, and/or <span pulumi-lang-nodejs="`trustedResourceOwners`" pulumi-lang-dotnet="`TrustedResourceOwners`" pulumi-lang-go="`trustedResourceOwners`" pulumi-lang-python="`trusted_resource_owners`" pulumi-lang-yaml="`trustedResourceOwners`" pulumi-lang-java="`trustedResourceOwners`">`trusted_resource_owners`</span> results in the setting being cleared.
  late final Output<List<String>> trustedResourceOwners;

  DataLakeSettings(
    String name, {
    DataLakeSettingsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/dataLakeSettings:DataLakeSettings',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.admins = registerOutput<List<String>>('admins');
    this.allowExternalDataFiltering =
        registerOutput<bool?>('allowExternalDataFiltering');
    this.allowFullTableExternalDataAccess =
        registerOutput<bool?>('allowFullTableExternalDataAccess');
    this.authorizedSessionTagValueLists =
        registerOutput<List<String>>('authorizedSessionTagValueLists');
    this.catalogId = registerOutput<String?>('catalogId');
    this.createDatabaseDefaultPermissions =
        registerOutput<List<DataLakeSettingsCreateDatabaseDefaultPermission>>(
            'createDatabaseDefaultPermissions');
    this.createTableDefaultPermissions =
        registerOutput<List<DataLakeSettingsCreateTableDefaultPermission>>(
            'createTableDefaultPermissions');
    this.externalDataFilteringAllowLists =
        registerOutput<List<String>>('externalDataFilteringAllowLists');
    this.parameters = registerOutput<Map<String, String>>('parameters');
    this.readOnlyAdmins = registerOutput<List<String>>('readOnlyAdmins');
    this.region = registerOutput<String>('region');
    this.trustedResourceOwners =
        registerOutput<List<String>>('trustedResourceOwners');
  }
}
