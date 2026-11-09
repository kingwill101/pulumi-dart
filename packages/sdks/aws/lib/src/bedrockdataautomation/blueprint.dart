import 'package:pulumi/pulumi.dart' as pulumi;
import 'blueprint_args.dart';
import 'blueprint_encryption_configuration.dart';
import 'blueprint_state.dart';

/// Manages an Amazon Bedrock Data Automation Blueprint. A blueprint defines the fields to extract from a document, image, audio, or video file.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrockdataautomation.Blueprint("example", {
///     name: "example",
///     type: "DOCUMENT",
///     schema: JSON.stringify({
///         $schema: "http://json-schema.org/draft-07/schema#",
///         description: "Pay stub",
///         "class": "Pay stub",
///         type: "object",
///         definitions: {},
///         properties: {
///             gross_pay: {
///                 type: "number",
///                 inferenceType: "explicit",
///                 instruction: "The gross pay for this pay period",
///             },
///             net_pay: {
///                 type: "number",
///                 inferenceType: "explicit",
///                 instruction: "The net pay for this pay period",
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
/// example = aws.bedrockdataautomation.Blueprint("example",
///     name="example",
///     type="DOCUMENT",
///     schema=json.dumps({
///         "$schema": "http://json-schema.org/draft-07/schema#",
///         "description": "Pay stub",
///         "class": "Pay stub",
///         "type": "object",
///         "definitions": {},
///         "properties": {
///             "gross_pay": {
///                 "type": "number",
///                 "inferenceType": "explicit",
///                 "instruction": "The gross pay for this pay period",
///             },
///             "net_pay": {
///                 "type": "number",
///                 "inferenceType": "explicit",
///                 "instruction": "The net pay for this pay period",
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
///     var example = new Aws.BedrockDataAutomation.Blueprint("example", new()
///     {
///         Name = "example",
///         Type = "DOCUMENT",
///         Schema = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["$schema"] = "http://json-schema.org/draft-07/schema#",
///             ["description"] = "Pay stub",
///             ["class"] = "Pay stub",
///             ["type"] = "object",
///             ["definitions"] = new Dictionary<string, object?>
///             {
///             },
///             ["properties"] = new Dictionary<string, object?>
///             {
///                 ["gross_pay"] = new Dictionary<string, object?>
///                 {
///                     ["type"] = "number",
///                     ["inferenceType"] = "explicit",
///                     ["instruction"] = "The gross pay for this pay period",
///                 },
///                 ["net_pay"] = new Dictionary<string, object?>
///                 {
///                     ["type"] = "number",
///                     ["inferenceType"] = "explicit",
///                     ["instruction"] = "The net pay for this pay period",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrockdataautomation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"$schema":     "http://json-schema.org/draft-07/schema#",
/// 			"description": "Pay stub",
/// 			"class":       "Pay stub",
/// 			"type":        "object",
/// 			"definitions": map[string]interface{}{},
/// 			"properties": map[string]map[string]string{
/// 				"gross_pay": map[string]string{
/// 					"type":          "number",
/// 					"inferenceType": "explicit",
/// 					"instruction":   "The gross pay for this pay period",
/// 				},
/// 				"net_pay": map[string]string{
/// 					"type":          "number",
/// 					"inferenceType": "explicit",
/// 					"instruction":   "The net pay for this pay period",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = bedrockdataautomation.NewBlueprint(ctx, "example", &bedrockdataautomation.BlueprintArgs{
/// 			Name:   pulumi.String("example"),
/// 			Type:   pulumi.String("DOCUMENT"),
/// 			Schema: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_bedrockdataautomation_blueprint" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name = "example"
///   type = "DOCUMENT"
///   schema = jsonencode({
///     "$schema"     = "http://json-schema.org/draft-07/schema#"
///     "description" = "Pay stub"
///     "class"       = "Pay stub"
///     "type"        = "object"
///     "definitions" = {}
///     "properties" = {
///       "gross_pay" = {
///         "type"          = "number"
///         "inferenceType" = "explicit"
///         "instruction"   = "The gross pay for this pay period"
///       }
///       "net_pay" = {
///         "type"          = "number"
///         "inferenceType" = "explicit"
///         "instruction"   = "The net pay for this pay period"
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
/// import com.pulumi.aws.bedrockdataautomation.Blueprint;
/// import com.pulumi.aws.bedrockdataautomation.BlueprintArgs;
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
///         var example = new Blueprint("example", BlueprintArgs.builder()
///             .name("example")
///             .type("DOCUMENT")
///             .schema(serializeJson(
///                 jsonObject(
///                     jsonProperty("$schema", "http://json-schema.org/draft-07/schema#"),
///                     jsonProperty("description", "Pay stub"),
///                     jsonProperty("class", "Pay stub"),
///                     jsonProperty("type", "object"),
///                     jsonProperty("definitions", jsonObject(
///
///                     )),
///                     jsonProperty("properties", jsonObject(
///                         jsonProperty("gross_pay", jsonObject(
///                             jsonProperty("type", "number"),
///                             jsonProperty("inferenceType", "explicit"),
///                             jsonProperty("instruction", "The gross pay for this pay period")
///                         )),
///                         jsonProperty("net_pay", jsonObject(
///                             jsonProperty("type", "number"),
///                             jsonProperty("inferenceType", "explicit"),
///                             jsonProperty("instruction", "The net pay for this pay period")
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
///     type: aws:bedrockdataautomation:Blueprint
///     properties:
///       name: example
///       type: DOCUMENT
///       schema:
///         fn::toJSON:
///           $schema: http://json-schema.org/draft-07/schema#
///           description: Pay stub
///           class: Pay stub
///           type: object
///           definitions: {}
///           properties:
///             gross_pay:
///               type: number
///               inferenceType: explicit
///               instruction: The gross pay for this pay period
///             net_pay:
///               type: number
///               inferenceType: explicit
///               instruction: The net pay for this pay period
/// ```
///
///
/// #### Required
///
/// * `arn` (String) ARN of the blueprint.
///
///
/// Using `pulumi import`, import Bedrock Data Automation Blueprint using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrockdataautomation/blueprint:Blueprint example arn:aws:bedrock:us-west-2:123456789012:blueprint/abcd1234efgh
/// ```
class Blueprint extends pulumi.CustomResource {
  /// ARN of the blueprint.
  late final pulumi.Output<String> arn;
  /// Stage of the blueprint.
  late final pulumi.Output<String> blueprintStage;
  /// Time the blueprint was created, in RFC3339 format.
  late final pulumi.Output<String> creationTime;
  /// Encryption settings for the blueprint. See `encryptionConfiguration` below.
  late final pulumi.Output<BlueprintEncryptionConfiguration?> encryptionConfiguration;
  /// Time the blueprint was last modified, in RFC3339 format.
  late final pulumi.Output<String> lastModifiedTime;
  /// Name of the blueprint. Changing this value forces a new resource.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// JSON schema of the blueprint, defining the fields to extract.
  late final pulumi.Output<String> schema;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Modality of the blueprint. Valid values: `DOCUMENT`, `IMAGE`, `AUDIO`, `VIDEO`. Changing this value forces a new resource.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> type;

  /// Creates a new [Blueprint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Blueprint]. {@macro pulumi_bedrockdataautomation_blueprint_blueprint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Blueprint(
    String name, {
    BlueprintArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrockdataautomation/blueprint:Blueprint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.54.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    blueprintStage = registerOutput<String>('blueprintStage');
    creationTime = registerOutput<String>('creationTime');
    encryptionConfiguration = registerOutput<BlueprintEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BlueprintEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    schema = registerOutput<String>('schema');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Gets an existing [Blueprint] resource's state with the given [name] and [id].
  static Blueprint get(
    String name,
    pulumi.Input<String> id, {
    BlueprintState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Blueprint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Blueprint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrockdataautomation/blueprint:Blueprint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    blueprintStage = registerOutput<String>('blueprintStage');
    creationTime = registerOutput<String>('creationTime');
    encryptionConfiguration = registerOutput<BlueprintEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BlueprintEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    schema = registerOutput<String>('schema');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Blueprint] resource.
  Blueprint.reference(String urn)
    : super(
        'aws:bedrockdataautomation/blueprint:Blueprint',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    blueprintStage = registerOutput<String>('blueprintStage');
    creationTime = registerOutput<String>('creationTime');
    encryptionConfiguration = registerOutput<BlueprintEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BlueprintEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    schema = registerOutput<String>('schema');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
