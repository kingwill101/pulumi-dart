import 'package:pulumi/pulumi.dart' as pulumi;
import 'relationship_args.dart';
import 'relationship_properties_response.dart';
import 'system_data_response.dart';

/// A relationship (aka edge) between two entities in a health model
///
/// Uses Azure REST API version 2025-05-03-preview.
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
///     var relationship = new AzureNative.Monitor.Relationship("relationship", new()
///     {
///         AzureMonitorWorkspaceName = "myWorkspace",
///         HealthModelName = "model1",
///         Properties = new AzureNative.Monitor.Inputs.RelationshipPropertiesArgs
///         {
///             ChildEntityName = "Entity2",
///             DisplayName = "My relationship",
///             ParentEntityName = "Entity1",
///             Tags =
///             {
///                 { "key9681", "ixfvzsfnpvkkbrce" },
///             },
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
/// 	monitor "github.com/pulumi/pulumi-azure-native-sdk/monitor/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := monitor.NewRelationship(ctx, "relationship", &monitor.RelationshipArgs{
/// 			AzureMonitorWorkspaceName: pulumi.String("myWorkspace"),
/// 			HealthModelName:           pulumi.String("model1"),
/// 			Properties: &monitor.RelationshipPropertiesArgs{
/// 				ChildEntityName:  pulumi.String("Entity2"),
/// 				DisplayName:      pulumi.String("My relationship"),
/// 				ParentEntityName: pulumi.String("Entity1"),
/// 				Tags: pulumi.StringMap{
/// 					"key9681": pulumi.String("ixfvzsfnpvkkbrce"),
/// 				},
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
/// import com.pulumi.azurenative.monitor.Relationship;
/// import com.pulumi.azurenative.monitor.RelationshipArgs;
/// import com.pulumi.azurenative.monitor.inputs.RelationshipPropertiesArgs;
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
///             .azureMonitorWorkspaceName("myWorkspace")
///             .healthModelName("model1")
///             .properties(RelationshipPropertiesArgs.builder()
///                 .childEntityName("Entity2")
///                 .displayName("My relationship")
///                 .parentEntityName("Entity1")
///                 .tags(Map.of("key9681", "ixfvzsfnpvkkbrce"))
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
/// const relationship = new azure_native.monitor.Relationship("relationship", {
///     azureMonitorWorkspaceName: "myWorkspace",
///     healthModelName: "model1",
///     properties: {
///         childEntityName: "Entity2",
///         displayName: "My relationship",
///         parentEntityName: "Entity1",
///         tags: {
///             key9681: "ixfvzsfnpvkkbrce",
///         },
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
/// relationship = azure_native.monitor.Relationship("relationship",
///     azure_monitor_workspace_name="myWorkspace",
///     health_model_name="model1",
///     properties={
///         "child_entity_name": "Entity2",
///         "display_name": "My relationship",
///         "parent_entity_name": "Entity1",
///         "tags": {
///             "key9681": "ixfvzsfnpvkkbrce",
///         },
///     },
///     relationship_name="rel1",
///     resource_group_name="rgopenapi")
///
/// ```
///
/// ```yaml
/// resources:
///   relationship:
///     type: azure-native:monitor:Relationship
///     properties:
///       azureMonitorWorkspaceName: myWorkspace
///       healthModelName: model1
///       properties:
///         childEntityName: Entity2
///         displayName: My relationship
///         parentEntityName: Entity1
///         tags:
///           key9681: ixfvzsfnpvkkbrce
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
/// $ pulumi import azure-native:monitor:Relationship rel1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Monitor/accounts/{azureMonitorWorkspaceName}/healthmodels/{healthModelName}/relationships/{relationshipName}
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
  /// [args] Arguments used to configure this [Relationship]. {@macro pulumi_monitor_relationship_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Relationship(
    String name, {
    RelationshipArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:monitor:Relationship',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<RelationshipPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
