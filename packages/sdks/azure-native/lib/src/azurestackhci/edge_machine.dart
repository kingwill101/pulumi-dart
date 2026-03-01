import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_machine_args.dart';
import 'edge_machine_properties_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// EdgeMachine details.
///
/// Uses Azure REST API version 2025-12-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### EdgeMachines_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var edgeMachine = new AzureNative.AzureStackHCI.EdgeMachine("edgeMachine", new()
///     {
///         EdgeMachineName = "machine-1",
///         Location = "eastus",
///         Properties = new AzureNative.AzureStackHCI.Inputs.EdgeMachinePropertiesArgs
///         {
///             ArcMachineResourceGroupId = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg",
///             ArcMachineResourceId = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1",
///         },
///         ResourceGroupName = "ArcInstance-rg",
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewEdgeMachine(ctx, "edgeMachine", &azurestackhci.EdgeMachineArgs{
/// 			EdgeMachineName: pulumi.String("machine-1"),
/// 			Location:        pulumi.String("eastus"),
/// 			Properties: &azurestackhci.EdgeMachinePropertiesArgs{
/// 				ArcMachineResourceGroupId: pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg"),
/// 				ArcMachineResourceId:      pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1"),
/// 			},
/// 			ResourceGroupName: pulumi.String("ArcInstance-rg"),
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
/// import com.pulumi.azurenative.azurestackhci.EdgeMachine;
/// import com.pulumi.azurenative.azurestackhci.EdgeMachineArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.EdgeMachinePropertiesArgs;
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
///         var edgeMachine = new EdgeMachine("edgeMachine", EdgeMachineArgs.builder()
///             .edgeMachineName("machine-1")
///             .location("eastus")
///             .properties(EdgeMachinePropertiesArgs.builder()
///                 .arcMachineResourceGroupId("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg")
///                 .arcMachineResourceId("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1")
///                 .build())
///             .resourceGroupName("ArcInstance-rg")
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
/// const edgeMachine = new azure_native.azurestackhci.EdgeMachine("edgeMachine", {
///     edgeMachineName: "machine-1",
///     location: "eastus",
///     properties: {
///         arcMachineResourceGroupId: "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg",
///         arcMachineResourceId: "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1",
///     },
///     resourceGroupName: "ArcInstance-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// edge_machine = azure_native.azurestackhci.EdgeMachine("edgeMachine",
///     edge_machine_name="machine-1",
///     location="eastus",
///     properties={
///         "arc_machine_resource_group_id": "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg",
///         "arc_machine_resource_id": "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1",
///     },
///     resource_group_name="ArcInstance-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   edgeMachine:
///     type: azure-native:azurestackhci:EdgeMachine
///     properties:
///       edgeMachineName: machine-1
///       location: eastus
///       properties:
///         arcMachineResourceGroupId: /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg
///         arcMachineResourceId: /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1
///       resourceGroupName: ArcInstance-rg
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
/// $ pulumi import azure-native:azurestackhci:EdgeMachine machine-1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureStackHCI/edgeMachines/{edgeMachineName}
/// ```
class EdgeMachine extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The managed service identities assigned to this resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<EdgeMachinePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EdgeMachine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EdgeMachine]. {@macro pulumi_azurestackhci_edge_machine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EdgeMachine(
    String name, {
    EdgeMachineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurestackhci:EdgeMachine',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.identity = registerOutput<ManagedServiceIdentityResponse?>('identity');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<EdgeMachinePropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
