import 'package:pulumi/pulumi.dart';
import '../catalog_database_create_table_default_permission/catalog_database_create_table_default_permission.dart';
import '../catalog_database_federated_database/catalog_database_federated_database.dart';
import '../catalog_database_target_database/catalog_database_target_database.dart';
import 'catalog_database_args.dart';

/// Provides a Glue Catalog Database Resource. You can refer to the [Glue Developer Guide](http://docs.aws.amazon.com/glue/latest/dg/populate-data-catalog.html) for a full explanation of the Glue Data Catalog functionality
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
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
/// var example = new Aws.Glue.CatalogDatabase("example", new()
/// {
/// Name = "MyCatalogDatabase",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := glue.NewCatalogDatabase(ctx, "example", &glue.CatalogDatabaseArgs{
/// Name: pulumi.String("MyCatalogDatabase"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new CatalogDatabase("example", CatalogDatabaseArgs.builder()
/// .name("MyCatalogDatabase")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:glue:CatalogDatabase
/// properties:
/// name: MyCatalogDatabase
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Create Table Default Permissions
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.CatalogDatabase("example", {
/// name: "MyCatalogDatabase",
/// createTableDefaultPermissions: [{
/// permissions: ["SELECT"],
/// principal: {
/// dataLakePrincipalIdentifier: "IAM_ALLOWED_PRINCIPALS",
/// },
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.CatalogDatabase("example",
/// name="MyCatalogDatabase",
/// create_table_default_permissions=[{
/// "permissions": ["SELECT"],
/// "principal": {
/// "data_lake_principal_identifier": "IAM_ALLOWED_PRINCIPALS",
/// },
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
/// var example = new Aws.Glue.CatalogDatabase("example", new()
/// {
/// Name = "MyCatalogDatabase",
/// CreateTableDefaultPermissions = new[]
/// {
/// new Aws.Glue.Inputs.CatalogDatabaseCreateTableDefaultPermissionArgs
/// {
/// Permissions = new[]
/// {
/// "SELECT",
/// },
/// Principal = new Aws.Glue.Inputs.CatalogDatabaseCreateTableDefaultPermissionPrincipalArgs
/// {
/// DataLakePrincipalIdentifier = "IAM_ALLOWED_PRINCIPALS",
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := glue.NewCatalogDatabase(ctx, "example", &glue.CatalogDatabaseArgs{
/// Name: pulumi.String("MyCatalogDatabase"),
/// CreateTableDefaultPermissions: glue.CatalogDatabaseCreateTableDefaultPermissionArray{
/// &glue.CatalogDatabaseCreateTableDefaultPermissionArgs{
/// Permissions: pulumi.StringArray{
/// pulumi.String("SELECT"),
/// },
/// Principal: &glue.CatalogDatabaseCreateTableDefaultPermissionPrincipalArgs{
/// DataLakePrincipalIdentifier: pulumi.String("IAM_ALLOWED_PRINCIPALS"),
/// },
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new CatalogDatabase("example", CatalogDatabaseArgs.builder()
/// .name("MyCatalogDatabase")
/// .createTableDefaultPermissions(CatalogDatabaseCreateTableDefaultPermissionArgs.builder()
/// .permissions("SELECT")
/// .principal(CatalogDatabaseCreateTableDefaultPermissionPrincipalArgs.builder()
/// .dataLakePrincipalIdentifier("IAM_ALLOWED_PRINCIPALS")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:glue:CatalogDatabase
/// properties:
/// name: MyCatalogDatabase
/// createTableDefaultPermissions:
/// - permissions:
/// - SELECT
/// principal:
/// dataLakePrincipalIdentifier: IAM_ALLOWED_PRINCIPALS
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Glue Catalog Databases using the `catalog_id:name`. If you have not set a Catalog ID specify the AWS Account ID that the database is in. For example:
///
/// ```sh
/// $ pulumi import aws:glue/catalogDatabase:CatalogDatabase database 123456789012:my_database
/// ```
class CatalogDatabase extends CustomResource {
  /// ARN of the Glue Catalog Database.
  late final Output<String> arn;

  /// ID of the Glue Catalog to create the database in. If omitted, this defaults to the AWS Account ID.
  late final Output<String> catalogId;

  /// Creates a set of default permissions on the table for principals. See <span pulumi-lang-nodejs="`createTableDefaultPermission`" pulumi-lang-dotnet="`CreateTableDefaultPermission`" pulumi-lang-go="`createTableDefaultPermission`" pulumi-lang-python="`create_table_default_permission`" pulumi-lang-yaml="`createTableDefaultPermission`" pulumi-lang-java="`createTableDefaultPermission`">`create_table_default_permission`</span> below.
  late final Output<List<CatalogDatabaseCreateTableDefaultPermission>>
      createTableDefaultPermissions;

  /// Description of the database.
  late final Output<String?> description;

  /// Configuration block that references an entity outside the AWS Glue Data Catalog. See <span pulumi-lang-nodejs="`federatedDatabase`" pulumi-lang-dotnet="`FederatedDatabase`" pulumi-lang-go="`federatedDatabase`" pulumi-lang-python="`federated_database`" pulumi-lang-yaml="`federatedDatabase`" pulumi-lang-java="`federatedDatabase`">`federated_database`</span> below.
  late final Output<CatalogDatabaseFederatedDatabase?> federatedDatabase;

  /// Location of the database (for example, an HDFS path).
  late final Output<String> locationUri;

  /// Name of the database. The acceptable characters are lowercase letters, numbers, and the underscore character.
  late final Output<String> name;

  /// List of key-value pairs that define parameters and properties of the database.
  late final Output<Map<String, String>?> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Configuration block for a target database for resource linking. See <span pulumi-lang-nodejs="`targetDatabase`" pulumi-lang-dotnet="`TargetDatabase`" pulumi-lang-go="`targetDatabase`" pulumi-lang-python="`target_database`" pulumi-lang-yaml="`targetDatabase`" pulumi-lang-java="`targetDatabase`">`target_database`</span> below.
  late final Output<CatalogDatabaseTargetDatabase?> targetDatabase;

  CatalogDatabase(
    String name, {
    CatalogDatabaseArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:glue/catalogDatabase:CatalogDatabase',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.catalogId = Output.createUnknown<String>();
    this.createTableDefaultPermissions = Output.createUnknown<
        List<CatalogDatabaseCreateTableDefaultPermission>>();
    this.description = Output.createUnknown<String?>();
    this.federatedDatabase =
        Output.createUnknown<CatalogDatabaseFederatedDatabase?>();
    this.locationUri = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.parameters = Output.createUnknown<Map<String, String>?>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.targetDatabase =
        Output.createUnknown<CatalogDatabaseTargetDatabase?>();
  }
}
