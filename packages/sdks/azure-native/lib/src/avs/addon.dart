import 'package:pulumi/pulumi.dart' as pulumi;
import 'addon_arc_properties_response.dart';
import 'addon_args.dart';
import 'system_data_response.dart';

/// An addon resource
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2022-05-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Addons_CreateOrUpdate_ArcReg
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var addon = new AzureNative.AVS.Addon("addon", new()
///     {
///         AddonName = "arc",
///         PrivateCloudName = "cloud1",
///         Properties = new AzureNative.AVS.Inputs.AddonArcPropertiesArgs
///         {
///             AddonType = "Arc",
///             VCenter = "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg_test/providers/Microsoft.ConnectedVMwarevSphere/VCenters/test-vcenter",
///         },
///         ResourceGroupName = "group1",
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
/// 	avs "github.com/pulumi/pulumi-azure-native-sdk/avs/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := avs.NewAddon(ctx, "addon", &avs.AddonArgs{
/// 			AddonName:        pulumi.String("arc"),
/// 			PrivateCloudName: pulumi.String("cloud1"),
/// 			Properties: &avs.AddonArcPropertiesArgs{
/// 				AddonType: pulumi.String("Arc"),
/// 				VCenter:   pulumi.String("subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg_test/providers/Microsoft.ConnectedVMwarevSphere/VCenters/test-vcenter"),
/// 			},
/// 			ResourceGroupName: pulumi.String("group1"),
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
/// import com.pulumi.azurenative.avs.Addon;
/// import com.pulumi.azurenative.avs.AddonArgs;
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
///         var addon = new Addon("addon", AddonArgs.builder()
///             .addonName("arc")
///             .privateCloudName("cloud1")
///             .properties(AddonArcPropertiesArgs.builder()
///                 .addonType("Arc")
///                 .vCenter("subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg_test/providers/Microsoft.ConnectedVMwarevSphere/VCenters/test-vcenter")
///                 .build())
///             .resourceGroupName("group1")
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
/// const addon = new azure_native.avs.Addon("addon", {
///     addonName: "arc",
///     privateCloudName: "cloud1",
///     properties: {
///         addonType: "Arc",
///         vCenter: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg_test/providers/Microsoft.ConnectedVMwarevSphere/VCenters/test-vcenter",
///     },
///     resourceGroupName: "group1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// addon = azure_native.avs.Addon("addon",
///     addon_name="arc",
///     private_cloud_name="cloud1",
///     properties={
///         "addon_type": "Arc",
///         "v_center": "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg_test/providers/Microsoft.ConnectedVMwarevSphere/VCenters/test-vcenter",
///     },
///     resource_group_name="group1")
///
/// ```
///
/// ```yaml
/// resources:
///   addon:
///     type: azure-native:avs:Addon
///     properties:
///       addonName: arc
///       privateCloudName: cloud1
///       properties:
///         addonType: Arc
///         vCenter: subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg_test/providers/Microsoft.ConnectedVMwarevSphere/VCenters/test-vcenter
///       resourceGroupName: group1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Addons_CreateOrUpdate_HCX
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var addon = new AzureNative.AVS.Addon("addon", new()
///     {
///         AddonName = "hcx",
///         PrivateCloudName = "cloud1",
///         Properties = new AzureNative.AVS.Inputs.AddonHcxPropertiesArgs
///         {
///             AddonType = "HCX",
///             Offer = "VMware MaaS Cloud Provider (Enterprise)",
///         },
///         ResourceGroupName = "group1",
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
/// 	avs "github.com/pulumi/pulumi-azure-native-sdk/avs/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := avs.NewAddon(ctx, "addon", &avs.AddonArgs{
/// 			AddonName:        pulumi.String("hcx"),
/// 			PrivateCloudName: pulumi.String("cloud1"),
/// 			Properties: &avs.AddonHcxPropertiesArgs{
/// 				AddonType: pulumi.String("HCX"),
/// 				Offer:     pulumi.String("VMware MaaS Cloud Provider (Enterprise)"),
/// 			},
/// 			ResourceGroupName: pulumi.String("group1"),
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
/// import com.pulumi.azurenative.avs.Addon;
/// import com.pulumi.azurenative.avs.AddonArgs;
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
///         var addon = new Addon("addon", AddonArgs.builder()
///             .addonName("hcx")
///             .privateCloudName("cloud1")
///             .properties(AddonHcxPropertiesArgs.builder()
///                 .addonType("HCX")
///                 .offer("VMware MaaS Cloud Provider (Enterprise)")
///                 .build())
///             .resourceGroupName("group1")
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
/// const addon = new azure_native.avs.Addon("addon", {
///     addonName: "hcx",
///     privateCloudName: "cloud1",
///     properties: {
///         addonType: "HCX",
///         offer: "VMware MaaS Cloud Provider (Enterprise)",
///     },
///     resourceGroupName: "group1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// addon = azure_native.avs.Addon("addon",
///     addon_name="hcx",
///     private_cloud_name="cloud1",
///     properties={
///         "addon_type": "HCX",
///         "offer": "VMware MaaS Cloud Provider (Enterprise)",
///     },
///     resource_group_name="group1")
///
/// ```
///
/// ```yaml
/// resources:
///   addon:
///     type: azure-native:avs:Addon
///     properties:
///       addonName: hcx
///       privateCloudName: cloud1
///       properties:
///         addonType: HCX
///         offer: VMware MaaS Cloud Provider (Enterprise)
///       resourceGroupName: group1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Addons_CreateOrUpdate_SRM
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var addon = new AzureNative.AVS.Addon("addon", new()
///     {
///         AddonName = "srm",
///         PrivateCloudName = "cloud1",
///         Properties = new AzureNative.AVS.Inputs.AddonSrmPropertiesArgs
///         {
///             AddonType = "SRM",
///             LicenseKey = "41915178-A8FF-4A4D-B683-6D735AF5E3F5",
///         },
///         ResourceGroupName = "group1",
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
/// 	avs "github.com/pulumi/pulumi-azure-native-sdk/avs/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := avs.NewAddon(ctx, "addon", &avs.AddonArgs{
/// 			AddonName:        pulumi.String("srm"),
/// 			PrivateCloudName: pulumi.String("cloud1"),
/// 			Properties: &avs.AddonSrmPropertiesArgs{
/// 				AddonType:  pulumi.String("SRM"),
/// 				LicenseKey: pulumi.String("41915178-A8FF-4A4D-B683-6D735AF5E3F5"),
/// 			},
/// 			ResourceGroupName: pulumi.String("group1"),
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
/// import com.pulumi.azurenative.avs.Addon;
/// import com.pulumi.azurenative.avs.AddonArgs;
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
///         var addon = new Addon("addon", AddonArgs.builder()
///             .addonName("srm")
///             .privateCloudName("cloud1")
///             .properties(AddonSrmPropertiesArgs.builder()
///                 .addonType("SRM")
///                 .licenseKey("41915178-A8FF-4A4D-B683-6D735AF5E3F5")
///                 .build())
///             .resourceGroupName("group1")
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
/// const addon = new azure_native.avs.Addon("addon", {
///     addonName: "srm",
///     privateCloudName: "cloud1",
///     properties: {
///         addonType: "SRM",
///         licenseKey: "41915178-A8FF-4A4D-B683-6D735AF5E3F5",
///     },
///     resourceGroupName: "group1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// addon = azure_native.avs.Addon("addon",
///     addon_name="srm",
///     private_cloud_name="cloud1",
///     properties={
///         "addon_type": "SRM",
///         "license_key": "41915178-A8FF-4A4D-B683-6D735AF5E3F5",
///     },
///     resource_group_name="group1")
///
/// ```
///
/// ```yaml
/// resources:
///   addon:
///     type: azure-native:avs:Addon
///     properties:
///       addonName: srm
///       privateCloudName: cloud1
///       properties:
///         addonType: SRM
///         licenseKey: 41915178-A8FF-4A4D-B683-6D735AF5E3F5
///       resourceGroupName: group1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Addons_CreateOrUpdate_VR
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var addon = new AzureNative.AVS.Addon("addon", new()
///     {
///         AddonName = "vr",
///         PrivateCloudName = "cloud1",
///         Properties = new AzureNative.AVS.Inputs.AddonVrPropertiesArgs
///         {
///             AddonType = "VR",
///             VrsCount = 1,
///         },
///         ResourceGroupName = "group1",
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
/// 	avs "github.com/pulumi/pulumi-azure-native-sdk/avs/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := avs.NewAddon(ctx, "addon", &avs.AddonArgs{
/// 			AddonName:        pulumi.String("vr"),
/// 			PrivateCloudName: pulumi.String("cloud1"),
/// 			Properties: &avs.AddonVrPropertiesArgs{
/// 				AddonType: pulumi.String("VR"),
/// 				VrsCount:  pulumi.Int(1),
/// 			},
/// 			ResourceGroupName: pulumi.String("group1"),
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
/// import com.pulumi.azurenative.avs.Addon;
/// import com.pulumi.azurenative.avs.AddonArgs;
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
///         var addon = new Addon("addon", AddonArgs.builder()
///             .addonName("vr")
///             .privateCloudName("cloud1")
///             .properties(AddonVrPropertiesArgs.builder()
///                 .addonType("VR")
///                 .vrsCount(1)
///                 .build())
///             .resourceGroupName("group1")
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
/// const addon = new azure_native.avs.Addon("addon", {
///     addonName: "vr",
///     privateCloudName: "cloud1",
///     properties: {
///         addonType: "VR",
///         vrsCount: 1,
///     },
///     resourceGroupName: "group1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// addon = azure_native.avs.Addon("addon",
///     addon_name="vr",
///     private_cloud_name="cloud1",
///     properties={
///         "addon_type": "VR",
///         "vrs_count": 1,
///     },
///     resource_group_name="group1")
///
/// ```
///
/// ```yaml
/// resources:
///   addon:
///     type: azure-native:avs:Addon
///     properties:
///       addonName: vr
///       privateCloudName: cloud1
///       properties:
///         addonType: VR
///         vrsCount: 1
///       resourceGroupName: group1
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
/// $ pulumi import azure-native:avs:Addon vr /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AVS/privateClouds/{privateCloudName}/addons/{addonName}
/// ```
class Addon extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<AddonArcPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Addon].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Addon]. {@macro pulumi_avs_addon_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Addon(String name, {AddonArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:avs:Addon',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AddonArcPropertiesResponse>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
