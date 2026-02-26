import 'package:pulumi/pulumi.dart';
import '../user_defined_function_resource_uri/user_defined_function_resource_uri.dart';
import 'user_defined_function_args.dart';

/// Provides a Glue User Defined Function Resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.CatalogDatabase("example", {name: "my_database"});
/// const exampleUserDefinedFunction = new aws.glue.UserDefinedFunction("example", {
/// name: "my_func",
/// catalogId: example.catalogId,
/// databaseName: example.name,
/// className: "class",
/// ownerName: "owner",
/// ownerType: "GROUP",
/// resourceUris: [{
/// resourceType: "ARCHIVE",
/// uri: "uri",
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.CatalogDatabase("example", name="my_database")
/// example_user_defined_function = aws.glue.UserDefinedFunction("example",
/// name="my_func",
/// catalog_id=example.catalog_id,
/// database_name=example.name,
/// class_name="class",
/// owner_name="owner",
/// owner_type="GROUP",
/// resource_uris=[{
/// "resource_type": "ARCHIVE",
/// "uri": "uri",
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
/// Name = "my_database",
/// });
///
/// var exampleUserDefinedFunction = new Aws.Glue.UserDefinedFunction("example", new()
/// {
/// Name = "my_func",
/// CatalogId = example.CatalogId,
/// DatabaseName = example.Name,
/// ClassName = "class",
/// OwnerName = "owner",
/// OwnerType = "GROUP",
/// ResourceUris = new[]
/// {
/// new Aws.Glue.Inputs.UserDefinedFunctionResourceUriArgs
/// {
/// ResourceType = "ARCHIVE",
/// Uri = "uri",
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
/// example, err := glue.NewCatalogDatabase(ctx, "example", &glue.CatalogDatabaseArgs{
/// Name: pulumi.String("my_database"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = glue.NewUserDefinedFunction(ctx, "example", &glue.UserDefinedFunctionArgs{
/// Name:         pulumi.String("my_func"),
/// CatalogId:    example.CatalogId,
/// DatabaseName: example.Name,
/// ClassName:    pulumi.String("class"),
/// OwnerName:    pulumi.String("owner"),
/// OwnerType:    pulumi.String("GROUP"),
/// ResourceUris: glue.UserDefinedFunctionResourceUriArray{
/// &glue.UserDefinedFunctionResourceUriArgs{
/// ResourceType: pulumi.String("ARCHIVE"),
/// Uri:          pulumi.String("uri"),
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
/// import com.pulumi.aws.glue.UserDefinedFunction;
/// import com.pulumi.aws.glue.UserDefinedFunctionArgs;
/// import com.pulumi.aws.glue.inputs.UserDefinedFunctionResourceUriArgs;
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
/// .name("my_database")
/// .build());
///
/// var exampleUserDefinedFunction = new UserDefinedFunction("exampleUserDefinedFunction", UserDefinedFunctionArgs.builder()
/// .name("my_func")
/// .catalogId(example.catalogId())
/// .databaseName(example.name())
/// .className("class")
/// .ownerName("owner")
/// .ownerType("GROUP")
/// .resourceUris(UserDefinedFunctionResourceUriArgs.builder()
/// .resourceType("ARCHIVE")
/// .uri("uri")
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
/// name: my_database
/// exampleUserDefinedFunction:
/// type: aws:glue:UserDefinedFunction
/// name: example
/// properties:
/// name: my_func
/// catalogId: ${example.catalogId}
/// databaseName: ${example.name}
/// className: class
/// ownerName: owner
/// ownerType: GROUP
/// resourceUris:
/// - resourceType: ARCHIVE
/// uri: uri
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Glue User Defined Functions using the `catalog_id:database_name:function_name`. If you have not set a Catalog ID specify the AWS Account ID that the database is in. For example:
///
/// ```sh
/// $ pulumi import aws:glue/userDefinedFunction:UserDefinedFunction func 123456789012:my_database:my_func
/// ```
class UserDefinedFunction extends CustomResource {
  /// The ARN of the Glue User Defined Function.
  late final Output<String> arn;

  /// ID of the Glue Catalog to create the function in. If omitted, this defaults to the AWS Account ID.
  late final Output<String?> catalogId;

  /// The Java class that contains the function code.
  late final Output<String> className;

  /// The time at which the function was created.
  late final Output<String> createTime;

  /// The name of the Database to create the Function.
  late final Output<String> databaseName;

  /// The name of the function.
  late final Output<String> name;

  /// The owner of the function.
  late final Output<String> ownerName;

  /// The owner type. can be one of `USER`, `ROLE`, and `GROUP`.
  late final Output<String> ownerType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The configuration block for Resource URIs. See resource uris below for more details.
  late final Output<List<UserDefinedFunctionResourceUri>?> resourceUris;

  UserDefinedFunction(
    String name, {
    UserDefinedFunctionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:glue/userDefinedFunction:UserDefinedFunction',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.catalogId = Output.createUnknown<String?>();
    this.className = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.databaseName = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.ownerName = Output.createUnknown<String>();
    this.ownerType = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.resourceUris =
        Output.createUnknown<List<UserDefinedFunctionResourceUri>?>();
  }
}
