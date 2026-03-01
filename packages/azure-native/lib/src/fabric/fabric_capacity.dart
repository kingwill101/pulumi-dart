import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_administration_response.dart';
import 'fabric_capacity_args.dart';
import 'rp_sku_response.dart';
import 'system_data_response.dart';

/// Fabric Capacity resource
///
/// Uses Azure REST API version 2023-11-01. In version 2.x of the Azure Native provider, it used API version 2023-11-01.
///
/// Other available API versions: 2025-01-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native fabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a capacity
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fabricCapacity = new AzureNative.Fabric.FabricCapacity("fabricCapacity", new()
///     {
///         Administration = new AzureNative.Fabric.Inputs.CapacityAdministrationArgs
///         {
///             Members = new[]
///             {
///                 "azsdktest@microsoft.com",
///                 "azsdktest2@microsoft.com",
///             },
///         },
///         CapacityName = "azsdktest",
///         Location = "westcentralus",
///         ResourceGroupName = "TestRG",
///         Sku = new AzureNative.Fabric.Inputs.RpSkuArgs
///         {
///             Name = "F2",
///             Tier = AzureNative.Fabric.RpSkuTier.Fabric,
///         },
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
/// 	fabric "github.com/pulumi/pulumi-azure-native-sdk/fabric/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fabric.NewFabricCapacity(ctx, "fabricCapacity", &fabric.FabricCapacityArgs{
/// 			Administration: &fabric.CapacityAdministrationArgs{
/// 				Members: pulumi.StringArray{
/// 					pulumi.String("azsdktest@microsoft.com"),
/// 					pulumi.String("azsdktest2@microsoft.com"),
/// 				},
/// 			},
/// 			CapacityName:      pulumi.String("azsdktest"),
/// 			Location:          pulumi.String("westcentralus"),
/// 			ResourceGroupName: pulumi.String("TestRG"),
/// 			Sku: &fabric.RpSkuArgs{
/// 				Name: pulumi.String("F2"),
/// 				Tier: pulumi.String(fabric.RpSkuTierFabric),
/// 			},
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
/// import com.pulumi.azurenative.fabric.FabricCapacity;
/// import com.pulumi.azurenative.fabric.FabricCapacityArgs;
/// import com.pulumi.azurenative.fabric.inputs.CapacityAdministrationArgs;
/// import com.pulumi.azurenative.fabric.inputs.RpSkuArgs;
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
///         var fabricCapacity = new FabricCapacity("fabricCapacity", FabricCapacityArgs.builder()
///             .administration(CapacityAdministrationArgs.builder()
///                 .members(
///                     "azsdktest@microsoft.com",
///                     "azsdktest2@microsoft.com")
///                 .build())
///             .capacityName("azsdktest")
///             .location("westcentralus")
///             .resourceGroupName("TestRG")
///             .sku(RpSkuArgs.builder()
///                 .name("F2")
///                 .tier("Fabric")
///                 .build())
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
/// const fabricCapacity = new azure_native.fabric.FabricCapacity("fabricCapacity", {
///     administration: {
///         members: [
///             "azsdktest@microsoft.com",
///             "azsdktest2@microsoft.com",
///         ],
///     },
///     capacityName: "azsdktest",
///     location: "westcentralus",
///     resourceGroupName: "TestRG",
///     sku: {
///         name: "F2",
///         tier: azure_native.fabric.RpSkuTier.Fabric,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// fabric_capacity = azure_native.fabric.FabricCapacity("fabricCapacity",
///     administration={
///         "members": [
///             "azsdktest@microsoft.com",
///             "azsdktest2@microsoft.com",
///         ],
///     },
///     capacity_name="azsdktest",
///     location="westcentralus",
///     resource_group_name="TestRG",
///     sku={
///         "name": "F2",
///         "tier": azure_native.fabric.RpSkuTier.FABRIC,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   fabricCapacity:
///     type: azure-native:fabric:FabricCapacity
///     properties:
///       administration:
///         members:
///           - azsdktest@microsoft.com
///           - azsdktest2@microsoft.com
///       capacityName: azsdktest
///       location: westcentralus
///       resourceGroupName: TestRG
///       sku:
///         name: F2
///         tier: Fabric
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
/// $ pulumi import azure-native:fabric:FabricCapacity azsdktest /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Fabric/capacities/{capacityName}
/// ```
class FabricCapacity extends pulumi.CustomResource {
  /// The capacity administration
  late final pulumi.Output<CapacityAdministrationResponse> administration;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The current deployment state of Microsoft Fabric resource. The provisioningState is to indicate states for resource provisioning.
  late final pulumi.Output<String> provisioningState;
  /// The SKU details
  late final pulumi.Output<RpSkuResponse> sku;
  /// The current state of Microsoft Fabric resource. The state is to indicate more states outside of resource provisioning.
  late final pulumi.Output<String> state;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [FabricCapacity].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FabricCapacity]. {@macro pulumi_fabric_fabric_capacity_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FabricCapacity(
    String name, {
    FabricCapacityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:fabric:FabricCapacity',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.administration = registerOutput<CapacityAdministrationResponse>('administration');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.sku = registerOutput<RpSkuResponse>('sku');
    this.state = registerOutput<String>('state');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
