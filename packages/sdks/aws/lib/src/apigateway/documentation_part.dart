import 'package:pulumi/pulumi.dart' as pulumi;
import 'documentation_part_args.dart';
import 'documentation_part_location.dart';
import 'documentation_part_state.dart';

/// Provides a settings of an API Gateway Documentation Part.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleRestApi = new aws.apigateway.RestApi("example", {name: "example_api"});
/// const example = new aws.apigateway.DocumentationPart("example", {
///     location: {
///         type: "METHOD",
///         method: "GET",
///         path: "/example",
///     },
///     properties: "{\"description\":\"Example description\"}",
///     restApiId: exampleRestApi.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_rest_api = aws.apigateway.RestApi("example", name="example_api")
/// example = aws.apigateway.DocumentationPart("example",
///     location={
///         "type": "METHOD",
///         "method": "GET",
///         "path": "/example",
///     },
///     properties="{\"description\":\"Example description\"}",
///     rest_api_id=example_rest_api.id)
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
///     var example = new Aws.ApiGateway.DocumentationPart("example", new()
///     {
///         Location = new Aws.ApiGateway.Inputs.DocumentationPartLocationArgs
///         {
///             Type = "METHOD",
///             Method = "GET",
///             Path = "/example",
///         },
///         Properties = "{\"description\":\"Example description\"}",
///         RestApiId = exampleRestApi.Id,
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
/// 		_, err = apigateway.NewDocumentationPart(ctx, "example", &apigateway.DocumentationPartArgs{
/// 			Location: &apigateway.DocumentationPartLocationArgs{
/// 				Type:   pulumi.String("METHOD"),
/// 				Method: pulumi.String("GET"),
/// 				Path:   pulumi.String("/example"),
/// 			},
/// 			Properties: pulumi.String("{\"description\":\"Example description\"}"),
/// 			RestApiId:  exampleRestApi.ID(),
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
/// import com.pulumi.aws.apigateway.RestApi;
/// import com.pulumi.aws.apigateway.RestApiArgs;
/// import com.pulumi.aws.apigateway.DocumentationPart;
/// import com.pulumi.aws.apigateway.DocumentationPartArgs;
/// import com.pulumi.aws.apigateway.inputs.DocumentationPartLocationArgs;
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
///         var example = new DocumentationPart("example", DocumentationPartArgs.builder()
///             .location(DocumentationPartLocationArgs.builder()
///                 .type("METHOD")
///                 .method("GET")
///                 .path("/example")
///                 .build())
///             .properties("{\"description\":\"Example description\"}")
///             .restApiId(exampleRestApi.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apigateway:DocumentationPart
///     properties:
///       location:
///         type: METHOD
///         method: GET
///         path: /example
///       properties: '{"description":"Example description"}'
///       restApiId: ${exampleRestApi.id}
///   exampleRestApi:
///     type: aws:apigateway:RestApi
///     name: example
///     properties:
///       name: example_api
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import API Gateway documentation_parts using `REST-API-ID/DOC-PART-ID`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/documentationPart:DocumentationPart example 5i4e1ko720/3oyy3t
/// ```
class DocumentationPart extends pulumi.CustomResource {
  /// The DocumentationPart identifier, generated by API Gateway when the documentation part is created.
  late final pulumi.Output<String> documentationPartId;
  /// Location of the targeted API entity of the to-be-created documentation part. See below.
  late final pulumi.Output<DocumentationPartLocation> location;
  /// Content map of API-specific key-value pairs describing the targeted API entity. The map must be encoded as a JSON string, e.g., "{ \"description\": \"The API does ...\" }". Only Swagger-compliant key-value pairs can be exported and, hence, published.
  late final pulumi.Output<String> properties;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ID of the associated Rest API
  late final pulumi.Output<String> restApiId;

  /// Creates a new [DocumentationPart].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DocumentationPart]. {@macro pulumi_apigateway_documentation_part_documentation_part_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DocumentationPart(
    String name, {
    DocumentationPartArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/documentationPart:DocumentationPart',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.documentationPartId = registerOutput<String>('documentationPartId');
    this.location = registerOutput<DocumentationPartLocation>('location');
    this.properties = registerOutput<String>('properties');
    this.region = registerOutput<String>('region');
    this.restApiId = registerOutput<String>('restApiId');
  }

  /// Gets an existing [DocumentationPart] resource's state with the given [name] and [id].
  static DocumentationPart get(
    String name,
    pulumi.Input<String> id, {
    DocumentationPartState? state,
  }) {
    return DocumentationPart._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DocumentationPart._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/documentationPart:DocumentationPart',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.documentationPartId = registerOutput<String>('documentationPartId');
    this.location = registerOutput<DocumentationPartLocation>('location');
    this.properties = registerOutput<String>('properties');
    this.region = registerOutput<String>('region');
    this.restApiId = registerOutput<String>('restApiId');
  }
}
