import 'package:pulumi/pulumi.dart' as pulumi;
import 'relationship_args.dart';
import 'relationship_properties_response.dart';
import 'system_data_response.dart';

/// A relationship (aka edge) between two entities in a health model
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudhealth [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Relationships_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var relationship = new AzureNative.CloudHealth.Relationship("relationship", new()
///     {
///         HealthModelName = "model1",
///         Properties = new AzureNative.CloudHealth.Inputs.RelationshipPropertiesArgs
///         {
///             ChildEntityName = "Entity2",
///             DisplayName = "My relationship",
///             Labels =
///             {
///                 { "key9681", "ixfvzsfnpvkkbrce" },
///             },
///             ParentEntityName = "Entity1",
///         },
///         RelationshipName = "rel1",
///         ResourceGroupName = "rgopenapi",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	cloudhealth "github.com/pulumi/pulumi-azure-native-sdk/cloudhealth/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudhealth.NewRelationship(ctx, "relationship", &cloudhealth.RelationshipArgs{
/// 			HealthModelName: pulumi.String("model1"),
/// 			Properties: &cloudhealth.RelationshipPropertiesArgs{
/// 				ChildEntityName: pulumi.String("Entity2"),
/// 				DisplayName:     pulumi.String("My relationship"),
/// 				Labels: pulumi.StringMap{
/// 					"key9681": pulumi.String("ixfvzsfnpvkkbrce"),
/// 				},
/// 				ParentEntityName: pulumi.String("Entity1"),
/// 			},
/// 			RelationshipName:  pulumi.String("rel1"),
/// 			ResourceGroupName: pulumi.String("rgopenapi"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.cloudhealth.Relationship;
/// import com.pulumi.azurenative.cloudhealth.RelationshipArgs;
/// import com.pulumi.azurenative.cloudhealth.inputs.RelationshipPropertiesArgs;
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
///         var relationship = new Relationship("relationship", RelationshipArgs.builder()
///             .healthModelName("model1")
///             .properties(RelationshipPropertiesArgs.builder()
///                 .childEntityName("Entity2")
///                 .displayName("My relationship")
///                 .labels(Map.of("key9681", "ixfvzsfnpvkkbrce"))
///                 .parentEntityName("Entity1")
///                 .build())
///             .relationshipName("rel1")
///             .resourceGroupName("rgopenapi")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const relationship = new azure_native.cloudhealth.Relationship("relationship", {
///     healthModelName: "model1",
///     properties: {
///         childEntityName: "Entity2",
///         displayName: "My relationship",
///         labels: {
///             key9681: "ixfvzsfnpvkkbrce",
///         },
///         parentEntityName: "Entity1",
///     },
///     relationshipName: "rel1",
///     resourceGroupName: "rgopenapi",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// relationship = azure_native.cloudhealth.Relationship("relationship",
///     health_model_name="model1",
///     properties={
///         "child_entity_name": "Entity2",
///         "display_name": "My relationship",
///         "labels": {
///             "key9681": "ixfvzsfnpvkkbrce",
///         },
///         "parent_entity_name": "Entity1",
///     },
///     relationship_name="rel1",
///     resource_group_name="rgopenapi")
///
/// ```
///
/// ```yaml
/// resources:
///   relationship:
///     type: azure-native:cloudhealth:Relationship
///     properties:
///       healthModelName: model1
///       properties:
///         childEntityName: Entity2
///         displayName: My relationship
///         labels:
///           key9681: ixfvzsfnpvkkbrce
///         parentEntityName: Entity1
///       relationshipName: rel1
///       resourceGroupName: rgopenapi
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:cloudhealth:Relationship rel1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CloudHealth/healthmodels/{healthModelName}/relationships/{relationshipName}
/// ```
class Relationship extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<RelationshipPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Relationship].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Relationship]. {@macro pulumi_cloudhealth_relationship_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Relationship(
    String name, {
    RelationshipArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cloudhealth:Relationship',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<RelationshipPropertiesResponse>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
