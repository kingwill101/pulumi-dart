import 'package:pulumi/pulumi.dart' as pulumi;
import 'controller_args.dart';
import 'sku_response.dart';

/// Uses Azure REST API version 2019-04-01. In version 2.x of the Azure Native provider, it used API version 2019-04-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ControllersCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var controller = new AzureNative.DevSpaces.Controller("controller", new()
///     {
///         Location = "eastus",
///         Name = "myControllerResource",
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.DevSpaces.Inputs.SkuArgs
///         {
///             Name = AzureNative.DevSpaces.SkuName.S1,
///             Tier = AzureNative.DevSpaces.SkuTier.Standard,
///         },
///         Tags = null,
///         TargetContainerHostCredentialsBase64 = "QmFzZTY0IEVuY29kZWQgVmFsdWUK",
///         TargetContainerHostResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerService/managedClusters/myCluster",
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
/// 	devspaces "github.com/pulumi/pulumi-azure-native-sdk/devspaces/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devspaces.NewController(ctx, "controller", &devspaces.ControllerArgs{
/// 			Location:          pulumi.String("eastus"),
/// 			Name:              pulumi.String("myControllerResource"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &devspaces.SkuArgs{
/// 				Name: pulumi.String(devspaces.SkuNameS1),
/// 				Tier: pulumi.String(devspaces.SkuTierStandard),
/// 			},
/// 			Tags:                                 pulumi.StringMap{},
/// 			TargetContainerHostCredentialsBase64: pulumi.String("QmFzZTY0IEVuY29kZWQgVmFsdWUK"),
/// 			TargetContainerHostResourceId:        pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerService/managedClusters/myCluster"),
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
/// import com.pulumi.azurenative.devspaces.Controller;
/// import com.pulumi.azurenative.devspaces.ControllerArgs;
/// import com.pulumi.azurenative.devspaces.inputs.SkuArgs;
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
///         var controller = new Controller("controller", ControllerArgs.builder()
///             .location("eastus")
///             .name("myControllerResource")
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .name("S1")
///                 .tier("Standard")
///                 .build())
///             .tags(Map.ofEntries(
///             ))
///             .targetContainerHostCredentialsBase64("QmFzZTY0IEVuY29kZWQgVmFsdWUK")
///             .targetContainerHostResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerService/managedClusters/myCluster")
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
/// const controller = new azure_native.devspaces.Controller("controller", {
///     location: "eastus",
///     name: "myControllerResource",
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         name: azure_native.devspaces.SkuName.S1,
///         tier: azure_native.devspaces.SkuTier.Standard,
///     },
///     tags: {},
///     targetContainerHostCredentialsBase64: "QmFzZTY0IEVuY29kZWQgVmFsdWUK",
///     targetContainerHostResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerService/managedClusters/myCluster",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// controller = azure_native.devspaces.Controller("controller",
///     location="eastus",
///     name="myControllerResource",
///     resource_group_name="myResourceGroup",
///     sku={
///         "name": azure_native.devspaces.SkuName.S1,
///         "tier": azure_native.devspaces.SkuTier.STANDARD,
///     },
///     tags={},
///     target_container_host_credentials_base64="QmFzZTY0IEVuY29kZWQgVmFsdWUK",
///     target_container_host_resource_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerService/managedClusters/myCluster")
///
/// ```
///
/// ```yaml
/// resources:
///   controller:
///     type: azure-native:devspaces:Controller
///     properties:
///       location: eastus
///       name: myControllerResource
///       resourceGroupName: myResourceGroup
///       sku:
///         name: S1
///         tier: Standard
///       tags: {}
///       targetContainerHostCredentialsBase64: QmFzZTY0IEVuY29kZWQgVmFsdWUK
///       targetContainerHostResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerService/managedClusters/myCluster
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
/// $ pulumi import azure-native:devspaces:Controller myControllerResource /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevSpaces/controllers/{name}
/// ```
class Controller extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// DNS name for accessing DataPlane services
  late final pulumi.Output<String> dataPlaneFqdn;
  /// DNS suffix for public endpoints running in the Azure Dev Spaces Controller.
  late final pulumi.Output<String> hostSuffix;
  /// Region where the Azure resource is located.
  late final pulumi.Output<String> location;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// Provisioning state of the Azure Dev Spaces Controller.
  late final pulumi.Output<String> provisioningState;
  /// Model representing SKU for Azure Dev Spaces Controller.
  late final pulumi.Output<SkuResponse> sku;
  /// Tags for the Azure resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// DNS of the target container host's API server
  late final pulumi.Output<String> targetContainerHostApiServerFqdn;
  /// Resource ID of the target container host
  late final pulumi.Output<String> targetContainerHostResourceId;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Controller].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Controller]. {@macro pulumi_devspaces_controller_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Controller(
    String name, {
    ControllerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:devspaces:Controller',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.dataPlaneFqdn = registerOutput<String>('dataPlaneFqdn');
    this.hostSuffix = registerOutput<String>('hostSuffix');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.sku = registerOutput<SkuResponse>('sku');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.targetContainerHostApiServerFqdn = registerOutput<String>('targetContainerHostApiServerFqdn');
    this.targetContainerHostResourceId = registerOutput<String>('targetContainerHostResourceId');
    this.type = registerOutput<String>('type');
  }
}
