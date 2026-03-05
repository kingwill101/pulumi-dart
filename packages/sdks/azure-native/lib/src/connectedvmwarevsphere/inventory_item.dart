import 'package:pulumi/pulumi.dart' as pulumi;
import 'inventory_item_args.dart';
import 'system_data_response.dart';

/// Defines the inventory item.
///
/// Uses Azure REST API version 2023-12-01. In version 2.x of the Azure Native provider, it used API version 2022-07-15-preview.
///
/// Other available API versions: 2022-07-15-preview, 2023-03-01-preview, 2023-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedvmwarevsphere [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateInventoryItem
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var inventoryItem = new AzureNative.ConnectedVMwarevSphere.InventoryItem("inventoryItem", new()
///     {
///         InventoryItemName = "testItem",
///         InventoryType = AzureNative.ConnectedVMwarevSphere.InventoryType.ResourcePool,
///         ResourceGroupName = "testrg",
///         VcenterName = "ContosoVCenter",
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
/// 		_, err := connectedvmwarevsphere.NewInventoryItem(ctx, "inventoryItem", &connectedvmwarevsphere.InventoryItemArgs{
/// 			InventoryItemName: pulumi.String("testItem"),
/// 			InventoryType:     pulumi.String(connectedvmwarevsphere.InventoryTypeResourcePool),
/// 			ResourceGroupName: pulumi.String("testrg"),
/// 			VcenterName:       pulumi.String("ContosoVCenter"),
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
/// import com.pulumi.azurenative.connectedvmwarevsphere.InventoryItem;
/// import com.pulumi.azurenative.connectedvmwarevsphere.InventoryItemArgs;
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
///         var inventoryItem = new InventoryItem("inventoryItem", InventoryItemArgs.builder()
///             .inventoryItemName("testItem")
///             .inventoryType("ResourcePool")
///             .resourceGroupName("testrg")
///             .vcenterName("ContosoVCenter")
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
/// const inventoryItem = new azure_native.connectedvmwarevsphere.InventoryItem("inventoryItem", {
///     inventoryItemName: "testItem",
///     inventoryType: azure_native.connectedvmwarevsphere.InventoryType.ResourcePool,
///     resourceGroupName: "testrg",
///     vcenterName: "ContosoVCenter",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// inventory_item = azure_native.connectedvmwarevsphere.InventoryItem("inventoryItem",
///     inventory_item_name="testItem",
///     inventory_type=azure_native.connectedvmwarevsphere.InventoryType.RESOURCE_POOL,
///     resource_group_name="testrg",
///     vcenter_name="ContosoVCenter")
///
/// ```
///
/// ```yaml
/// resources:
///   inventoryItem:
///     type: azure-native:connectedvmwarevsphere:InventoryItem
///     properties:
///       inventoryItemName: testItem
///       inventoryType: ResourcePool
///       resourceGroupName: testrg
///       vcenterName: ContosoVCenter
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
/// $ pulumi import azure-native:connectedvmwarevsphere:InventoryItem testItem /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ConnectedVMwarevSphere/vcenters/{vcenterName}/inventoryItems/{inventoryItemName}
/// ```
class InventoryItem extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// They inventory type.
  late final pulumi.Output<String> inventoryType;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  late final pulumi.Output<String?> kind;
  /// Gets or sets the tracked resource id corresponding to the inventory resource.
  late final pulumi.Output<String?> managedResourceId;
  /// Gets or sets the vCenter Managed Object name for the inventory item.
  late final pulumi.Output<String?> moName;
  /// Gets or sets the MoRef (Managed Object Reference) ID for the inventory item.
  late final pulumi.Output<String?> moRefId;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Gets the provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [InventoryItem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InventoryItem]. {@macro pulumi_connectedvmwarevsphere_inventory_item_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InventoryItem(
    String name, {
    InventoryItemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:connectedvmwarevsphere:InventoryItem',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    inventoryType = registerOutput<String>('inventoryType');
    kind = registerOutput<String?>('kind');
    managedResourceId = registerOutput<String?>('managedResourceId');
    moName = registerOutput<String?>('moName');
    moRefId = registerOutput<String?>('moRefId');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
