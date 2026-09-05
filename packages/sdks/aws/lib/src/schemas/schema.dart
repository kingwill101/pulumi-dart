import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_args.dart';
import 'schema_state.dart';

/// Provides an EventBridge Schema resource.
///
/// &gt; **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.schemas.Registry("test", {name: "my_own_registry"});
/// const testSchema = new aws.schemas.Schema("test", {
///     name: "my_schema",
///     registryName: test.name,
///     type: "OpenApi3",
///     description: "The schema definition for my event",
///     content: JSON.stringify({
///         openapi: "3.0.0",
///         info: {
///             version: "1.0.0",
///             title: "Event",
///         },
///         paths: {},
///         components: {
///             schemas: {
///                 Event: {
///                     type: "object",
///                     properties: {
///                         name: {
///                             type: "string",
///                         },
///                     },
///                 },
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
/// test = aws.schemas.Registry("test", name="my_own_registry")
/// test_schema = aws.schemas.Schema("test",
///     name="my_schema",
///     registry_name=test.name,
///     type="OpenApi3",
///     description="The schema definition for my event",
///     content=json.dumps({
///         "openapi": "3.0.0",
///         "info": {
///             "version": "1.0.0",
///             "title": "Event",
///         },
///         "paths": {},
///         "components": {
///             "schemas": {
///                 "Event": {
///                     "type": "object",
///                     "properties": {
///                         "name": {
///                             "type": "string",
///                         },
///                     },
///                 },
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
///     var test = new Aws.Schemas.Registry("test", new()
///     {
///         Name = "my_own_registry",
///     });
///
///     var testSchema = new Aws.Schemas.Schema("test", new()
///     {
///         Name = "my_schema",
///         RegistryName = test.Name,
///         Type = "OpenApi3",
///         Description = "The schema definition for my event",
///         Content = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["openapi"] = "3.0.0",
///             ["info"] = new Dictionary<string, object?>
///             {
///                 ["version"] = "1.0.0",
///                 ["title"] = "Event",
///             },
///             ["paths"] = new Dictionary<string, object?>
///             {
///             },
///             ["components"] = new Dictionary<string, object?>
///             {
///                 ["schemas"] = new Dictionary<string, object?>
///                 {
///                     ["Event"] = new Dictionary<string, object?>
///                     {
///                         ["type"] = "object",
///                         ["properties"] = new Dictionary<string, object?>
///                         {
///                             ["name"] = new Dictionary<string, object?>
///                             {
///                                 ["type"] = "string",
///                             },
///                         },
///                     },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/schemas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := schemas.NewRegistry(ctx, "test", &schemas.RegistryArgs{
/// 			Name: pulumi.String("my_own_registry"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"openapi": "3.0.0",
/// 			"info": map[string]string{
/// 				"version": "1.0.0",
/// 				"title":   "Event",
/// 			},
/// 			"paths": map[string]interface{}{},
/// 			"components": map[string]map[string]map[string]interface{}{
/// 				"schemas": map[string]map[string]interface{}{
/// 					"Event": map[string]interface{}{
/// 						"type": "object",
/// 						"properties": map[string]map[string]string{
/// 							"name": map[string]string{
/// 								"type": "string",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = schemas.NewSchema(ctx, "test", &schemas.SchemaArgs{
/// 			Name:         pulumi.String("my_schema"),
/// 			RegistryName: test.Name,
/// 			Type:         pulumi.String("OpenApi3"),
/// 			Description:  pulumi.String("The schema definition for my event"),
/// 			Content:      pulumi.String(json0),
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
/// resource "aws_schemas_registry" "test" {
///   name = "my_own_registry"
/// }
/// resource "aws_schemas_schema" "test" {
///   name          = "my_schema"
///   registry_name = aws_schemas_registry.test.name
///   type          = "OpenApi3"
///   description   = "The schema definition for my event"
///   content = jsonencode({
///     "openapi" = "3.0.0"
///     "info" = {
///       "version" = "1.0.0"
///       "title"   = "Event"
///     }
///     "paths" = {}
///     "components" = {
///       "schemas" = {
///         "Event" = {
///           "type" = "object"
///           "properties" = {
///             "name" = {
///               "type" = "string"
///             }
///           }
///         }
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
/// import com.pulumi.aws.schemas.Registry;
/// import com.pulumi.aws.schemas.RegistryArgs;
/// import com.pulumi.aws.schemas.Schema;
/// import com.pulumi.aws.schemas.SchemaArgs;
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
///         var test = new Registry("test", RegistryArgs.builder()
///             .name("my_own_registry")
///             .build());
///
///         var testSchema = new Schema("testSchema", SchemaArgs.builder()
///             .name("my_schema")
///             .registryName(test.name())
///             .type("OpenApi3")
///             .description("The schema definition for my event")
///             .content(serializeJson(
///                 jsonObject(
///                     jsonProperty("openapi", "3.0.0"),
///                     jsonProperty("info", jsonObject(
///                         jsonProperty("version", "1.0.0"),
///                         jsonProperty("title", "Event")
///                     )),
///                     jsonProperty("paths", jsonObject(
///
///                     )),
///                     jsonProperty("components", jsonObject(
///                         jsonProperty("schemas", jsonObject(
///                             jsonProperty("Event", jsonObject(
///                                 jsonProperty("type", "object"),
///                                 jsonProperty("properties", jsonObject(
///                                     jsonProperty("name", jsonObject(
///                                         jsonProperty("type", "string")
///                                     ))
///                                 ))
///                             ))
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
///   test:
///     type: aws:schemas:Registry
///     properties:
///       name: my_own_registry
///   testSchema:
///     type: aws:schemas:Schema
///     name: test
///     properties:
///       name: my_schema
///       registryName: ${test.name}
///       type: OpenApi3
///       description: The schema definition for my event
///       content:
///         fn::toJSON:
///           openapi: 3.0.0
///           info:
///             version: 1.0.0
///             title: Event
///           paths: {}
///           components:
///             schemas:
///               Event:
///                 type: object
///                 properties:
///                   name:
///                     type: string
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EventBridge schema using the `name` and `registryName`. For example:
///
/// ```sh
/// $ pulumi import aws:schemas/schema:Schema test name/registry
/// ```
class Schema extends pulumi.CustomResource {
  /// ARN of the discoverer.
  late final pulumi.Output<String> arn;
  /// The schema specification. Must be a valid Open API 3.0 spec.
  late final pulumi.Output<String> content;
  /// The description of the schema. Maximum of 256 characters.
  late final pulumi.Output<String?> description;
  /// The last modified date of the schema.
  late final pulumi.Output<String> lastModified;
  /// The name of the schema. Maximum of 385 characters consisting of lower case letters, upper case letters, ., -, _, @.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The name of the registry in which this schema belongs.
  late final pulumi.Output<String> registryName;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The type of the schema. Valid values: `OpenApi3` or `JSONSchemaDraft4`.
  late final pulumi.Output<String> type;
  /// The version of the schema.
  late final pulumi.Output<String> version;
  /// The created date of the version of the schema.
  late final pulumi.Output<String> versionCreatedDate;

  /// Creates a new [Schema].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Schema]. {@macro pulumi_schemas_schema_schema_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Schema(
    String name, {
    SchemaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:schemas/schema:Schema',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    content = registerOutput<String>('content');
    description = registerOutput<String?>('description');
    lastModified = registerOutput<String>('lastModified');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    registryName = registerOutput<String>('registryName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    version = registerOutput<String>('version');
    versionCreatedDate = registerOutput<String>('versionCreatedDate');
  }

  /// Gets an existing [Schema] resource's state with the given [name] and [id].
  static Schema get(
    String name,
    pulumi.Input<String> id, {
    SchemaState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Schema._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Schema._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:schemas/schema:Schema',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    content = registerOutput<String>('content');
    description = registerOutput<String?>('description');
    lastModified = registerOutput<String>('lastModified');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    registryName = registerOutput<String>('registryName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    version = registerOutput<String>('version');
    versionCreatedDate = registerOutput<String>('versionCreatedDate');
  }

  /// Creates a typed reference to an existing [Schema] resource.
  Schema.reference(String urn)
    : super(
        'aws:schemas/schema:Schema',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    content = registerOutput<String>('content');
    description = registerOutput<String?>('description');
    lastModified = registerOutput<String>('lastModified');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    registryName = registerOutput<String>('registryName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    version = registerOutput<String>('version');
    versionCreatedDate = registerOutput<String>('versionCreatedDate');
  }
}
