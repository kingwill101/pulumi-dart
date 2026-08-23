import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'system_data_response.dart';
import 'virtual_network_args.dart';

/// Define the virtualNetwork.
///
/// Uses Azure REST API version 2023-12-01. In version 2.x of the Azure Native provider, it used API version 2022-07-15-preview.
///
/// Other available API versions: 2022-07-15-preview, 2023-03-01-preview, 2023-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedvmwarevsphere [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateVirtualNetwork
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualNetwork = new AzureNative.ConnectedVMwarevSphere.VirtualNetwork("virtualNetwork", new()
///     {
///         ExtendedLocation = new AzureNative.ConnectedVMwarevSphere.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso",
///             Type = "customLocation",
///         },
///         Location = "East US",
///         MoRefId = "aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
///         ResourceGroupName = "testrg",
///         VCenterId = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter",
///         VirtualNetworkName = "ProdNetwork",
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
/// 	connectedvmwarevsphere "github.com/pulumi/pulumi-azure-native-sdk/connectedvmwarevsphere/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connectedvmwarevsphere.NewVirtualNetwork(ctx, "virtualNetwork", &connectedvmwarevsphere.VirtualNetworkArgs{
/// 			ExtendedLocation: &connectedvmwarevsphere.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso"),
/// 				Type: pulumi.String("customLocation"),
/// 			},
/// 			Location:           pulumi.String("East US"),
/// 			MoRefId:            pulumi.String("aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee"),
/// 			ResourceGroupName:  pulumi.String("testrg"),
/// 			VCenterId:          pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter"),
/// 			VirtualNetworkName: pulumi.String("ProdNetwork"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_connectedvmwarevsphere_virtualnetwork" "virtualNetwork" {
///   extended_location = {
///     name = "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso"
///     type = "customLocation"
///   }
///   location             = "East US"
///   mo_ref_id            = "aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee"
///   resource_group_name  = "testrg"
///   v_center_id          = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter"
///   virtual_network_name = "ProdNetwork"
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
/// import com.pulumi.azurenative.connectedvmwarevsphere.VirtualNetwork;
/// import com.pulumi.azurenative.connectedvmwarevsphere.VirtualNetworkArgs;
/// import com.pulumi.azurenative.connectedvmwarevsphere.inputs.ExtendedLocationArgs;
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
///         var virtualNetwork = new VirtualNetwork("virtualNetwork", VirtualNetworkArgs.builder()
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso")
///                 .type("customLocation")
///                 .build())
///             .location("East US")
///             .moRefId("aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee")
///             .resourceGroupName("testrg")
///             .vCenterId("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter")
///             .virtualNetworkName("ProdNetwork")
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
/// const virtualNetwork = new azure_native.connectedvmwarevsphere.VirtualNetwork("virtualNetwork", {
///     extendedLocation: {
///         name: "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso",
///         type: "customLocation",
///     },
///     location: "East US",
///     moRefId: "aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
///     resourceGroupName: "testrg",
///     vCenterId: "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter",
///     virtualNetworkName: "ProdNetwork",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network = azure_native.connectedvmwarevsphere.VirtualNetwork("virtualNetwork",
///     extended_location={
///         "name": "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso",
///         "type": "customLocation",
///     },
///     location="East US",
///     mo_ref_id="aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
///     resource_group_name="testrg",
///     v_center_id="/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter",
///     virtual_network_name="ProdNetwork")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetwork:
///     type: azure-native:connectedvmwarevsphere:VirtualNetwork
///     properties:
///       extendedLocation:
///         name: /subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso
///         type: customLocation
///       location: East US
///       moRefId: aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee
///       resourceGroupName: testrg
///       vCenterId: /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter
///       virtualNetworkName: ProdNetwork
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
/// $ pulumi import azure-native:connectedvmwarevsphere:VirtualNetwork ProdNetwork /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ConnectedVMwarevSphere/virtualNetworks/{virtualNetworkName}
/// ```
class VirtualNetwork extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets the name of the corresponding resource in Kubernetes.
  late final pulumi.Output<String> customResourceName;
  /// Gets or sets the extended location.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// Gets or sets the inventory Item ID for the virtual network.
  late final pulumi.Output<String?> inventoryItemId;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  late final pulumi.Output<String?> kind;
  /// Gets or sets the location.
  late final pulumi.Output<String> location;
  /// Gets or sets the vCenter Managed Object name for the virtual network.
  late final pulumi.Output<String> moName;
  /// Gets or sets the vCenter MoRef (Managed Object Reference) ID for the virtual network.
  late final pulumi.Output<String?> moRefId;
  /// Gets or sets the name.
  late final pulumi.Output<String> name;
  /// Gets the provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// The resource status information.
  late final pulumi.Output<List<Map<String, dynamic>>> statuses;
  /// The system data.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Gets or sets the Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Gets or sets the type of the resource.
  late final pulumi.Output<String> type;
  /// Gets or sets a unique identifier for this resource.
  late final pulumi.Output<String> uuid;
  /// Gets or sets the ARM Id of the vCenter resource in which this template resides.
  late final pulumi.Output<String?> vCenterId;

  /// Creates a new [VirtualNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualNetwork]. {@macro pulumi_connectedvmwarevsphere_virtual_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualNetwork(
    String name, {
    VirtualNetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:connectedvmwarevsphere:VirtualNetwork',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    customResourceName = registerOutput<String>('customResourceName');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inventoryItemId = registerOutput<String?>('inventoryItemId');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    moName = registerOutput<String>('moName');
    moRefId = registerOutput<String?>('moRefId');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    statuses = registerOutput<List<Map<String, dynamic>>>('statuses');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    uuid = registerOutput<String>('uuid');
    vCenterId = registerOutput<String?>('vCenterId');
  }
}
