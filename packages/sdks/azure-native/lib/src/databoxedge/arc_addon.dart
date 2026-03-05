import 'package:pulumi/pulumi.dart' as pulumi;
import 'arc_addon_args.dart';
import 'system_data_response.dart';

/// Arc Addon.
///
/// Uses Azure REST API version 2023-07-01. In version 2.x of the Azure Native provider, it used API version 2022-03-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutAddOns
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var arcAddon = new AzureNative.DataBoxEdge.ArcAddon("arcAddon", new()
///     {
///         AddonName = "arcName",
///         DeviceName = "testedgedevice",
///         Kind = "ArcForKubernetes",
///         ResourceGroupName = "GroupForEdgeAutomation",
///         ResourceLocation = "EastUS",
///         ResourceName = "testedgedevice",
///         RoleName = "KubernetesRole",
///         SubscriptionId = "4385cf00-2d3a-425a-832f-f4285b1c9dce",
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
/// 	databoxedge "github.com/pulumi/pulumi-azure-native-sdk/databoxedge/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databoxedge.NewArcAddon(ctx, "arcAddon", &databoxedge.ArcAddonArgs{
/// 			AddonName:         pulumi.String("arcName"),
/// 			DeviceName:        pulumi.String("testedgedevice"),
/// 			Kind:              pulumi.String("ArcForKubernetes"),
/// 			ResourceGroupName: pulumi.String("GroupForEdgeAutomation"),
/// 			ResourceLocation:  pulumi.String("EastUS"),
/// 			ResourceName:      pulumi.String("testedgedevice"),
/// 			RoleName:          pulumi.String("KubernetesRole"),
/// 			SubscriptionId:    pulumi.String("4385cf00-2d3a-425a-832f-f4285b1c9dce"),
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
/// import com.pulumi.azurenative.databoxedge.ArcAddon;
/// import com.pulumi.azurenative.databoxedge.ArcAddonArgs;
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
///         var arcAddon = new ArcAddon("arcAddon", ArcAddonArgs.builder()
///             .addonName("arcName")
///             .deviceName("testedgedevice")
///             .kind("ArcForKubernetes")
///             .resourceGroupName("GroupForEdgeAutomation")
///             .resourceLocation("EastUS")
///             .resourceName("testedgedevice")
///             .roleName("KubernetesRole")
///             .subscriptionId("4385cf00-2d3a-425a-832f-f4285b1c9dce")
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
/// const arcAddon = new azure_native.databoxedge.ArcAddon("arcAddon", {
///     addonName: "arcName",
///     deviceName: "testedgedevice",
///     kind: "ArcForKubernetes",
///     resourceGroupName: "GroupForEdgeAutomation",
///     resourceLocation: "EastUS",
///     resourceName: "testedgedevice",
///     roleName: "KubernetesRole",
///     subscriptionId: "4385cf00-2d3a-425a-832f-f4285b1c9dce",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// arc_addon = azure_native.databoxedge.ArcAddon("arcAddon",
///     addon_name="arcName",
///     device_name="testedgedevice",
///     kind="ArcForKubernetes",
///     resource_group_name="GroupForEdgeAutomation",
///     resource_location="EastUS",
///     resource_name_="testedgedevice",
///     role_name="KubernetesRole",
///     subscription_id="4385cf00-2d3a-425a-832f-f4285b1c9dce")
///
/// ```
///
/// ```yaml
/// resources:
///   arcAddon:
///     type: azure-native:databoxedge:ArcAddon
///     properties:
///       addonName: arcName
///       deviceName: testedgedevice
///       kind: ArcForKubernetes
///       resourceGroupName: GroupForEdgeAutomation
///       resourceLocation: EastUS
///       resourceName: testedgedevice
///       roleName: KubernetesRole
///       subscriptionId: 4385cf00-2d3a-425a-832f-f4285b1c9dce
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
/// $ pulumi import azure-native:databoxedge:ArcAddon arcName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/{deviceName}/roles/{roleName}/addons/{addonName}
/// ```
class ArcAddon extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Host OS supported by the Arc addon.
  late final pulumi.Output<String> hostPlatform;
  /// Platform where the runtime is hosted.
  late final pulumi.Output<String> hostPlatformType;
  /// Addon type.
  /// Expected value is 'ArcForKubernetes'.
  late final pulumi.Output<String> kind;
  /// The object name.
  late final pulumi.Output<String> name;
  /// Addon Provisioning State
  late final pulumi.Output<String> provisioningState;
  /// Arc resource group name
  late final pulumi.Output<String> resourceGroupName;
  /// Arc resource location
  late final pulumi.Output<String> resourceLocation;
  /// Arc resource Name
  late final pulumi.Output<String> resourceName;
  /// Arc resource subscription Id
  late final pulumi.Output<String> subscriptionId;
  /// Metadata pertaining to creation and last modification of Addon
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The hierarchical type of the object.
  late final pulumi.Output<String> type;
  /// Arc resource version
  late final pulumi.Output<String> version;

  /// Creates a new [ArcAddon].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ArcAddon]. {@macro pulumi_databoxedge_arc_addon_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ArcAddon(
    String name, {
    ArcAddonArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:databoxedge:ArcAddon',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    hostPlatform = registerOutput<String>('hostPlatform');
    hostPlatformType = registerOutput<String>('hostPlatformType');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    resourceLocation = registerOutput<String>('resourceLocation');
    resourceName = registerOutput<String>('resourceName');
    subscriptionId = registerOutput<String>('subscriptionId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    version = registerOutput<String>('version');
  }
}
