import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_args.dart';
import 'schema_definition.dart';
import 'schema_state.dart';

/// This is a Terraform resource for managing an AWS Verified Permissions Policy Store Schema.
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
/// const example = new aws.verifiedpermissions.Schema("example", {
///     definition: {
///         value: JSON.stringify({
///             Namespace: {
///                 entityTypes: {},
///                 actions: {},
///             },
///         }),
///     },
///     policyStoreId: exampleAwsVerifiedpermissionsPolicyStore.policyStoreId,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.verifiedpermissions.Schema("example",
///     definition={
///         "value": json.dumps({
///             "Namespace": {
///                 "entityTypes": {},
///                 "actions": {},
///             },
///         }),
///     },
///     policy_store_id=example_aws_verifiedpermissions_policy_store["policyStoreId"])
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
///     var example = new Aws.VerifiedPermissions.Schema("example", new()
///     {
///         Definition = new Aws.VerifiedPermissions.Inputs.SchemaDefinitionArgs
///         {
///             Value = JsonSerializer.Serialize(new Dictionary<string, object?>
///             {
///                 ["Namespace"] = new Dictionary<string, object?>
///                 {
///                     ["entityTypes"] = new Dictionary<string, object?>
///                     {
///                     },
///                     ["actions"] = new Dictionary<string, object?>
///                     {
///                     },
///                 },
///             }),
///         },
///         PolicyStoreId = exampleAwsVerifiedpermissionsPolicyStore.PolicyStoreId,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/verifiedpermissions"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]map[string]map[string]interface{}{
/// 			"Namespace": map[string]map[string]interface{}{
/// 				"entityTypes": map[string]interface{}{},
/// 				"actions":     map[string]interface{}{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = verifiedpermissions.NewSchema(ctx, "example", &verifiedpermissions.SchemaArgs{
/// 			Definition: &verifiedpermissions.SchemaDefinitionArgs{
/// 				Value: pulumi.String(json0),
/// 			},
/// 			PolicyStoreId: pulumi.Any(exampleAwsVerifiedpermissionsPolicyStore.PolicyStoreId),
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
/// resource "aws_verifiedpermissions_schema" "example" {
///   definition = {
///     value = jsonencode({
///       "Namespace" = {
///         "entityTypes" = {}
///         "actions"     = {}
///       }
///     })
///   }
///   policy_store_id = exampleAwsVerifiedpermissionsPolicyStore.policyStoreId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.verifiedpermissions.Schema;
/// import com.pulumi.aws.verifiedpermissions.SchemaArgs;
/// import com.pulumi.aws.verifiedpermissions.inputs.SchemaDefinitionArgs;
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
///         var example = new Schema("example", SchemaArgs.builder()
///             .definition(SchemaDefinitionArgs.builder()
///                 .value(serializeJson(
///                     jsonObject(
///                         jsonProperty("Namespace", jsonObject(
///                             jsonProperty("entityTypes", jsonObject(
///
///                             )),
///                             jsonProperty("actions", jsonObject(
///
///                             ))
///                         ))
///                     )))
///                 .build())
///             .policyStoreId(exampleAwsVerifiedpermissionsPolicyStore.policyStoreId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:verifiedpermissions:Schema
///     properties:
///       definition:
///         value:
///           fn::toJSON:
///             Namespace:
///               entityTypes: {}
///               actions: {}
///       policyStoreId: ${exampleAwsVerifiedpermissionsPolicyStore.policyStoreId}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Verified Permissions Policy Store Schema using the `policyStoreId`. For example:
///
/// ```sh
/// $ pulumi import aws:verifiedpermissions/schema:Schema example DxQg2j8xvXJQ1tQCYNWj9T
/// ```
class Schema extends pulumi.CustomResource {
  /// The definition of the schema.
  late final pulumi.Output<SchemaDefinition> definition;
  /// (Optional) Identifies the namespaces of the entities referenced by this schema.
  late final pulumi.Output<List<String>> namespaces;
  /// The ID of the Policy Store.
  late final pulumi.Output<String> policyStoreId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [Schema].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Schema]. {@macro pulumi_verifiedpermissions_schema_schema_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Schema(
    String name, {
    SchemaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:verifiedpermissions/schema:Schema',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    definition = registerOutput<SchemaDefinition>('definition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SchemaDefinition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    namespaces = registerOutput<List<String>>('namespaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    policyStoreId = registerOutput<String>('policyStoreId');
    region = registerOutput<String>('region');
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
          'aws:verifiedpermissions/schema:Schema',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    definition = registerOutput<SchemaDefinition>('definition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SchemaDefinition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    namespaces = registerOutput<List<String>>('namespaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    policyStoreId = registerOutput<String>('policyStoreId');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [Schema] resource.
  Schema.reference(String urn)
    : super(
        'aws:verifiedpermissions/schema:Schema',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    definition = registerOutput<SchemaDefinition>('definition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SchemaDefinition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    namespaces = registerOutput<List<String>>('namespaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    policyStoreId = registerOutput<String>('policyStoreId');
    region = registerOutput<String>('region');
  }
}
