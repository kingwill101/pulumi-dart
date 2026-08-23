import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_args.dart';
import 'model_state.dart';

/// Manages an Amazon API Gateway Version 2 [model](https://docs.aws.amazon.com/apigateway/latest/developerguide/models-mappings.html#models-mappings-models).
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigatewayv2.Model("example", {
///     apiId: exampleAwsApigatewayv2Api.id,
///     contentType: "application/json",
///     name: "example",
///     schema: JSON.stringify({
///         $schema: "http://json-schema.org/draft-04/schema#",
///         title: "ExampleModel",
///         type: "object",
///         properties: {
///             id: {
///                 type: "string",
///             },
///         },
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.Model("example",
///     api_id=example_aws_apigatewayv2_api["id"],
///     content_type="application/json",
///     name="example",
///     schema=json.dumps({
///         "$schema": "http://json-schema.org/draft-04/schema#",
///         "title": "ExampleModel",
///         "type": "object",
///         "properties": {
///             "id": {
///                 "type": "string",
///             },
///         },
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ApiGatewayV2.Model("example", new()
///     {
///         ApiId = exampleAwsApigatewayv2Api.Id,
///         ContentType = "application/json",
///         Name = "example",
///         Schema = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["$schema"] = "http://json-schema.org/draft-04/schema#",
///             ["title"] = "ExampleModel",
///             ["type"] = "object",
///             ["properties"] = new Dictionary<string, object?>
///             {
///                 ["id"] = new Dictionary<string, object?>
///                 {
///                     ["type"] = "string",
///                 },
///             },
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigatewayv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"$schema": "http://json-schema.org/draft-04/schema#",
/// 			"title":   "ExampleModel",
/// 			"type":    "object",
/// 			"properties": map[string]map[string]string{
/// 				"id": map[string]string{
/// 					"type": "string",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = apigatewayv2.NewModel(ctx, "example", &apigatewayv2.ModelArgs{
/// 			ApiId:       pulumi.Any(exampleAwsApigatewayv2Api.Id),
/// 			ContentType: pulumi.String("application/json"),
/// 			Name:        pulumi.String("example"),
/// 			Schema:      pulumi.String(json0),
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
/// resource "aws_apigatewayv2_model" "example" {
///   api_id       = exampleAwsApigatewayv2Api.id
///   content_type = "application/json"
///   name         = "example"
///   schema = jsonencode({
///     "$schema" = "http://json-schema.org/draft-04/schema#"
///     "title"   = "ExampleModel"
///     "type"    = "object"
///     "properties" = {
///       "id" = {
///         "type" = "string"
///       }
///     }
///   })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigatewayv2.Model;
/// import com.pulumi.aws.apigatewayv2.ModelArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new Model("example", ModelArgs.builder()
///             .apiId(exampleAwsApigatewayv2Api.id())
///             .contentType("application/json")
///             .name("example")
///             .schema(serializeJson(
///                 jsonObject(
///                     jsonProperty("$schema", "http://json-schema.org/draft-04/schema#"),
///                     jsonProperty("title", "ExampleModel"),
///                     jsonProperty("type", "object"),
///                     jsonProperty("properties", jsonObject(
///                         jsonProperty("id", jsonObject(
///                             jsonProperty("type", "string")
///                         ))
///                     ))
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apigatewayv2:Model
///     properties:
///       apiId: ${exampleAwsApigatewayv2Api.id}
///       contentType: application/json
///       name: example
///       schema:
///         fn::toJSON:
///           $schema: http://json-schema.org/draft-04/schema#
///           title: ExampleModel
///           type: object
///           properties:
///             id:
///               type: string
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigatewayv2.Model` using the API identifier and model identifier. For example:
///
/// ```sh
/// $ pulumi import aws:apigatewayv2/model:Model example aabbccddee/1122334
/// ```
class Model extends pulumi.CustomResource {
  /// API identifier.
  late final pulumi.Output<String> apiId;
  /// Content-type for the model, for example, `application/json`. Must be between 1 and 256 characters in length.
  late final pulumi.Output<String> contentType;
  /// Description of the model. Must be between 1 and 128 characters in length.
  late final pulumi.Output<String?> description;
  /// Name of the model. Must be alphanumeric. Must be between 1 and 128 characters in length.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Schema for the model. This should be a [JSON schema draft 4](https://tools.ietf.org/html/draft-zyp-json-schema-04) model. Must be less than or equal to 32768 characters in length.
  late final pulumi.Output<String> schema;

  /// Creates a new [Model].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Model]. {@macro pulumi_apigatewayv2_model_model_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Model(
    String name, {
    ModelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/model:Model',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiId = registerOutput<String>('apiId');
    contentType = registerOutput<String>('contentType');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    schema = registerOutput<String>('schema');
  }

  /// Gets an existing [Model] resource's state with the given [name] and [id].
  static Model get(
    String name,
    pulumi.Input<String> id, {
    ModelState? state,
  }) {
    return Model._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Model._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/model:Model',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiId = registerOutput<String>('apiId');
    contentType = registerOutput<String>('contentType');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    schema = registerOutput<String>('schema');
  }
}
