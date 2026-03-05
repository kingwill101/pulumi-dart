import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_scoped_resource_args.dart';
import 'system_data_response.dart';

/// A private link scoped resource
///
/// Uses Azure REST API version 2023-06-01-preview.
///
/// Other available API versions: 2021-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native monitor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Update a scoped platform metrics subscription in a private link scope.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateLinkScopedResource = new AzureNative.Monitor.PrivateLinkScopedResource("privateLinkScopedResource", new()
///     {
///         Kind = "PlatformMetrics",
///         LinkedResourceId = "/subscriptions/00000000-1111-2222-3333-444444444444",
///         Name = "scoped-resource-name",
///         ResourceGroupName = "MyResourceGroup",
///         ScopeName = "MyPrivateLinkScope",
///         SubscriptionLocation = "eastus",
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
/// 		_, err := monitor.NewPrivateLinkScopedResource(ctx, "privateLinkScopedResource", &monitor.PrivateLinkScopedResourceArgs{
/// 			Kind:                 pulumi.String("PlatformMetrics"),
/// 			LinkedResourceId:     pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444"),
/// 			Name:                 pulumi.String("scoped-resource-name"),
/// 			ResourceGroupName:    pulumi.String("MyResourceGroup"),
/// 			ScopeName:            pulumi.String("MyPrivateLinkScope"),
/// 			SubscriptionLocation: pulumi.String("eastus"),
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
/// import com.pulumi.azurenative.monitor.PrivateLinkScopedResource;
/// import com.pulumi.azurenative.monitor.PrivateLinkScopedResourceArgs;
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
///         var privateLinkScopedResource = new PrivateLinkScopedResource("privateLinkScopedResource", PrivateLinkScopedResourceArgs.builder()
///             .kind("PlatformMetrics")
///             .linkedResourceId("/subscriptions/00000000-1111-2222-3333-444444444444")
///             .name("scoped-resource-name")
///             .resourceGroupName("MyResourceGroup")
///             .scopeName("MyPrivateLinkScope")
///             .subscriptionLocation("eastus")
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
/// const privateLinkScopedResource = new azure_native.monitor.PrivateLinkScopedResource("privateLinkScopedResource", {
///     kind: "PlatformMetrics",
///     linkedResourceId: "/subscriptions/00000000-1111-2222-3333-444444444444",
///     name: "scoped-resource-name",
///     resourceGroupName: "MyResourceGroup",
///     scopeName: "MyPrivateLinkScope",
///     subscriptionLocation: "eastus",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_link_scoped_resource = azure_native.monitor.PrivateLinkScopedResource("privateLinkScopedResource",
///     kind="PlatformMetrics",
///     linked_resource_id="/subscriptions/00000000-1111-2222-3333-444444444444",
///     name="scoped-resource-name",
///     resource_group_name="MyResourceGroup",
///     scope_name="MyPrivateLinkScope",
///     subscription_location="eastus")
///
/// ```
///
/// ```yaml
/// resources:
///   privateLinkScopedResource:
///     type: azure-native:monitor:PrivateLinkScopedResource
///     properties:
///       kind: PlatformMetrics
///       linkedResourceId: /subscriptions/00000000-1111-2222-3333-444444444444
///       name: scoped-resource-name
///       resourceGroupName: MyResourceGroup
///       scopeName: MyPrivateLinkScope
///       subscriptionLocation: eastus
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Update a scoped resource in a private link scope.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateLinkScopedResource = new AzureNative.Monitor.PrivateLinkScopedResource("privateLinkScopedResource", new()
///     {
///         Kind = AzureNative.Monitor.ScopedResourceKind.Resource,
///         LinkedResourceId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/MyResourceGroup/providers/Microsoft.Insights/components/my-component",
///         Name = "scoped-resource-name",
///         ResourceGroupName = "MyResourceGroup",
///         ScopeName = "MyPrivateLinkScope",
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
/// 		_, err := monitor.NewPrivateLinkScopedResource(ctx, "privateLinkScopedResource", &monitor.PrivateLinkScopedResourceArgs{
/// 			Kind:              pulumi.String(monitor.ScopedResourceKindResource),
/// 			LinkedResourceId:  pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/MyResourceGroup/providers/Microsoft.Insights/components/my-component"),
/// 			Name:              pulumi.String("scoped-resource-name"),
/// 			ResourceGroupName: pulumi.String("MyResourceGroup"),
/// 			ScopeName:         pulumi.String("MyPrivateLinkScope"),
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
/// import com.pulumi.azurenative.monitor.PrivateLinkScopedResource;
/// import com.pulumi.azurenative.monitor.PrivateLinkScopedResourceArgs;
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
///         var privateLinkScopedResource = new PrivateLinkScopedResource("privateLinkScopedResource", PrivateLinkScopedResourceArgs.builder()
///             .kind("Resource")
///             .linkedResourceId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/MyResourceGroup/providers/Microsoft.Insights/components/my-component")
///             .name("scoped-resource-name")
///             .resourceGroupName("MyResourceGroup")
///             .scopeName("MyPrivateLinkScope")
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
/// const privateLinkScopedResource = new azure_native.monitor.PrivateLinkScopedResource("privateLinkScopedResource", {
///     kind: azure_native.monitor.ScopedResourceKind.Resource,
///     linkedResourceId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/MyResourceGroup/providers/Microsoft.Insights/components/my-component",
///     name: "scoped-resource-name",
///     resourceGroupName: "MyResourceGroup",
///     scopeName: "MyPrivateLinkScope",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_link_scoped_resource = azure_native.monitor.PrivateLinkScopedResource("privateLinkScopedResource",
///     kind=azure_native.monitor.ScopedResourceKind.RESOURCE,
///     linked_resource_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/MyResourceGroup/providers/Microsoft.Insights/components/my-component",
///     name="scoped-resource-name",
///     resource_group_name="MyResourceGroup",
///     scope_name="MyPrivateLinkScope")
///
/// ```
///
/// ```yaml
/// resources:
///   privateLinkScopedResource:
///     type: azure-native:monitor:PrivateLinkScopedResource
///     properties:
///       kind: Resource
///       linkedResourceId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/MyResourceGroup/providers/Microsoft.Insights/components/my-component
///       name: scoped-resource-name
///       resourceGroupName: MyResourceGroup
///       scopeName: MyPrivateLinkScope
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
/// $ pulumi import azure-native:monitor:PrivateLinkScopedResource scoped-resource-name /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/privateLinkScopes/{scopeName}/scopedResources/{name}
/// ```
class PrivateLinkScopedResource extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The kind of scoped Azure monitor resource.
  late final pulumi.Output<String?> kind;

  /// The resource id of the scoped Azure monitor resource.
  late final pulumi.Output<String?> linkedResourceId;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// State of the Azure monitor resource.
  late final pulumi.Output<String> provisioningState;

  /// The location of a scoped subscription. Only needs to be specified for metric dataplane subscriptions.
  late final pulumi.Output<String?> subscriptionLocation;

  /// System data
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateLinkScopedResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateLinkScopedResource]. {@macro pulumi_monitor_private_link_scoped_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateLinkScopedResource(
    String name, {
    PrivateLinkScopedResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:monitor:PrivateLinkScopedResource',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    kind = registerOutput<String?>('kind');
    linkedResourceId = registerOutput<String?>('linkedResourceId');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    subscriptionLocation = registerOutput<String?>('subscriptionLocation');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
