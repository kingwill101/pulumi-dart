import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_defined_function_args.dart';
import 'user_defined_function_state.dart';

/// Provides a Glue User Defined Function Resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.CatalogDatabase("example", {name: "my_database"});
/// const exampleUserDefinedFunction = new aws.glue.UserDefinedFunction("example", {
///     name: "my_func",
///     catalogId: example.catalogId,
///     databaseName: example.name,
///     className: "class",
///     ownerName: "owner",
///     ownerType: "GROUP",
///     resourceUris: [{
///         resourceType: "ARCHIVE",
///         uri: "uri",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.CatalogDatabase("example", name="my_database")
/// example_user_defined_function = aws.glue.UserDefinedFunction("example",
///     name="my_func",
///     catalog_id=example.catalog_id,
///     database_name=example.name,
///     class_name="class",
///     owner_name="owner",
///     owner_type="GROUP",
///     resource_uris=[{
///         "resource_type": "ARCHIVE",
///         "uri": "uri",
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
///         Name = "my_database",
///     });
///
///     var exampleUserDefinedFunction = new Aws.Glue.UserDefinedFunction("example", new()
///     {
///         Name = "my_func",
///         CatalogId = example.CatalogId,
///         DatabaseName = example.Name,
///         ClassName = "class",
///         OwnerName = "owner",
///         OwnerType = "GROUP",
///         ResourceUris = new[]
///         {
///             new Aws.Glue.Inputs.UserDefinedFunctionResourceUriArgs
///             {
///                 ResourceType = "ARCHIVE",
///                 Uri = "uri",
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
/// 		example, err := glue.NewCatalogDatabase(ctx, "example", &glue.CatalogDatabaseArgs{
/// 			Name: pulumi.String("my_database"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = glue.NewUserDefinedFunction(ctx, "example", &glue.UserDefinedFunctionArgs{
/// 			Name:         pulumi.String("my_func"),
/// 			CatalogId:    example.CatalogId,
/// 			DatabaseName: example.Name,
/// 			ClassName:    pulumi.String("class"),
/// 			OwnerName:    pulumi.String("owner"),
/// 			OwnerType:    pulumi.String("GROUP"),
/// 			ResourceUris: glue.UserDefinedFunctionResourceUriArray{
/// 				&glue.UserDefinedFunctionResourceUriArgs{
/// 					ResourceType: pulumi.String("ARCHIVE"),
/// 					Uri:          pulumi.String("uri"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new CatalogDatabase("example", CatalogDatabaseArgs.builder()
///             .name("my_database")
///             .build());
///
///         var exampleUserDefinedFunction = new UserDefinedFunction("exampleUserDefinedFunction", UserDefinedFunctionArgs.builder()
///             .name("my_func")
///             .catalogId(example.catalogId())
///             .databaseName(example.name())
///             .className("class")
///             .ownerName("owner")
///             .ownerType("GROUP")
///             .resourceUris(UserDefinedFunctionResourceUriArgs.builder()
///                 .resourceType("ARCHIVE")
///                 .uri("uri")
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
///       name: my_database
///   exampleUserDefinedFunction:
///     type: aws:glue:UserDefinedFunction
///     name: example
///     properties:
///       name: my_func
///       catalogId: ${example.catalogId}
///       databaseName: ${example.name}
///       className: class
///       ownerName: owner
///       ownerType: GROUP
///       resourceUris:
///         - resourceType: ARCHIVE
///           uri: uri
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue User Defined Functions using the `catalog_id:database_name:function_name`. If you have not set a Catalog ID specify the AWS Account ID that the database is in. For example:
///
/// ```sh
/// $ pulumi import aws:glue/userDefinedFunction:UserDefinedFunction func 123456789012:my_database:my_func
/// ```
class UserDefinedFunction extends pulumi.CustomResource {
  /// The ARN of the Glue User Defined Function.
  late final pulumi.Output<String> arn;

  /// ID of the Glue Catalog to create the function in. If omitted, this defaults to the AWS Account ID.
  late final pulumi.Output<String?> catalogId;

  /// The Java class that contains the function code.
  late final pulumi.Output<String> className;

  /// The time at which the function was created.
  late final pulumi.Output<String> createTime;

  /// The name of the Database to create the Function.
  late final pulumi.Output<String> databaseName;

  /// The name of the function.
  late final pulumi.Output<String> name;

  /// The owner of the function.
  late final pulumi.Output<String> ownerName;

  /// The owner type. can be one of `USER`, `ROLE`, and `GROUP`.
  late final pulumi.Output<String> ownerType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The configuration block for Resource URIs. See resource uris below for more details.
  late final pulumi.Output<List<Map<String, dynamic>>?> resourceUris;

  /// Creates a new [UserDefinedFunction].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserDefinedFunction]. {@macro pulumi_glue_user_defined_function_user_defined_function_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserDefinedFunction(
    String name, {
    UserDefinedFunctionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:glue/userDefinedFunction:UserDefinedFunction',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    catalogId = registerOutput<String?>('catalogId');
    className = registerOutput<String>('className');
    createTime = registerOutput<String>('createTime');
    databaseName = registerOutput<String>('databaseName');
    this.name = registerOutput<String>('name');
    ownerName = registerOutput<String>('ownerName');
    ownerType = registerOutput<String>('ownerType');
    region = registerOutput<String>('region');
    resourceUris = registerOutput<List<Map<String, dynamic>>?>('resourceUris');
  }

  /// Gets an existing [UserDefinedFunction] resource's state with the given [name] and [id].
  static UserDefinedFunction get(
    String name,
    pulumi.Input<String> id, {
    UserDefinedFunctionState? state,
  }) {
    return UserDefinedFunction._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  UserDefinedFunction._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:glue/userDefinedFunction:UserDefinedFunction',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    catalogId = registerOutput<String?>('catalogId');
    className = registerOutput<String>('className');
    createTime = registerOutput<String>('createTime');
    databaseName = registerOutput<String>('databaseName');
    this.name = registerOutput<String>('name');
    ownerName = registerOutput<String>('ownerName');
    ownerType = registerOutput<String>('ownerType');
    region = registerOutput<String>('region');
    resourceUris = registerOutput<List<Map<String, dynamic>>?>('resourceUris');
  }
}
