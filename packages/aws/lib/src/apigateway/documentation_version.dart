import 'package:pulumi/pulumi.dart' as pulumi;
import 'documentation_version_args.dart';

/// Provides a resource to manage an API Gateway Documentation Version.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleRestApi = new aws.apigateway.RestApi("example", {name: "example_api"});
/// const exampleDocumentationPart = new aws.apigateway.DocumentationPart("example", {
///     location: {
///         type: "API",
///     },
///     properties: "{\"description\":\"Example\"}",
///     restApiId: exampleRestApi.id,
/// });
/// const example = new aws.apigateway.DocumentationVersion("example", {
///     version: "example_version",
///     restApiId: exampleRestApi.id,
///     description: "Example description",
/// }, {
///     dependsOn: [exampleDocumentationPart],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_rest_api = aws.apigateway.RestApi("example", name="example_api")
/// example_documentation_part = aws.apigateway.DocumentationPart("example",
///     location={
///         "type": "API",
///     },
///     properties="{\"description\":\"Example\"}",
///     rest_api_id=example_rest_api.id)
/// example = aws.apigateway.DocumentationVersion("example",
///     version="example_version",
///     rest_api_id=example_rest_api.id,
///     description="Example description",
///     opts = pulumi.ResourceOptions(depends_on=[example_documentation_part]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleRestApi = new Aws.ApiGateway.RestApi("example", new()
///     {
///         Name = "example_api",
///     });
///
///     var exampleDocumentationPart = new Aws.ApiGateway.DocumentationPart("example", new()
///     {
///         Location = new Aws.ApiGateway.Inputs.DocumentationPartLocationArgs
///         {
///             Type = "API",
///         },
///         Properties = "{\"description\":\"Example\"}",
///         RestApiId = exampleRestApi.Id,
///     });
///
///     var example = new Aws.ApiGateway.DocumentationVersion("example", new()
///     {
///         Version = "example_version",
///         RestApiId = exampleRestApi.Id,
///         Description = "Example description",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleDocumentationPart,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleRestApi, err := apigateway.NewRestApi(ctx, "example", &apigateway.RestApiArgs{
/// 			Name: pulumi.String("example_api"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDocumentationPart, err := apigateway.NewDocumentationPart(ctx, "example", &apigateway.DocumentationPartArgs{
/// 			Location: &apigateway.DocumentationPartLocationArgs{
/// 				Type: pulumi.String("API"),
/// 			},
/// 			Properties: pulumi.String("{\"description\":\"Example\"}"),
/// 			RestApiId:  exampleRestApi.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewDocumentationVersion(ctx, "example", &apigateway.DocumentationVersionArgs{
/// 			Version:     pulumi.String("example_version"),
/// 			RestApiId:   exampleRestApi.ID(),
/// 			Description: pulumi.String("Example description"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleDocumentationPart,
/// 		}))
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
/// import com.pulumi.aws.apigateway.RestApi;
/// import com.pulumi.aws.apigateway.RestApiArgs;
/// import com.pulumi.aws.apigateway.DocumentationPart;
/// import com.pulumi.aws.apigateway.DocumentationPartArgs;
/// import com.pulumi.aws.apigateway.inputs.DocumentationPartLocationArgs;
/// import com.pulumi.aws.apigateway.DocumentationVersion;
/// import com.pulumi.aws.apigateway.DocumentationVersionArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var exampleRestApi = new RestApi("exampleRestApi", RestApiArgs.builder()
///             .name("example_api")
///             .build());
///
///         var exampleDocumentationPart = new DocumentationPart("exampleDocumentationPart", DocumentationPartArgs.builder()
///             .location(DocumentationPartLocationArgs.builder()
///                 .type("API")
///                 .build())
///             .properties("{\"description\":\"Example\"}")
///             .restApiId(exampleRestApi.id())
///             .build());
///
///         var example = new DocumentationVersion("example", DocumentationVersionArgs.builder()
///             .version("example_version")
///             .restApiId(exampleRestApi.id())
///             .description("Example description")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleDocumentationPart)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apigateway:DocumentationVersion
///     properties:
///       version: example_version
///       restApiId: ${exampleRestApi.id}
///       description: Example description
///     options:
///       dependsOn:
///         - ${exampleDocumentationPart}
///   exampleRestApi:
///     type: aws:apigateway:RestApi
///     name: example
///     properties:
///       name: example_api
///   exampleDocumentationPart:
///     type: aws:apigateway:DocumentationPart
///     name: example
///     properties:
///       location:
///         type: API
///       properties: '{"description":"Example"}'
///       restApiId: ${exampleRestApi.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import API Gateway documentation versions using `REST-API-ID/VERSION`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/documentationVersion:DocumentationVersion example 5i4e1ko720/example-version
/// ```
class DocumentationVersion extends pulumi.CustomResource {
  /// Description of the API documentation version.
  late final pulumi.Output<String?> description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ID of the associated Rest API
  late final pulumi.Output<String> restApiId;

  /// Version identifier of the API documentation snapshot.
  late final pulumi.Output<String> version;

  /// Creates a new [DocumentationVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DocumentationVersion]. {@macro pulumi_apigateway_documentation_version_documentation_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DocumentationVersion(
    String name, {
    DocumentationVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:apigateway/documentationVersion:DocumentationVersion',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.description = registerOutput<String?>('description');
    this.region = registerOutput<String>('region');
    this.restApiId = registerOutput<String>('restApiId');
    this.version = registerOutput<String>('version');
  }
}
