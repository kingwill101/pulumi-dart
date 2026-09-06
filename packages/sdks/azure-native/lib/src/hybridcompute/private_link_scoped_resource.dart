import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_scoped_resource_args.dart';

/// A private link scoped resource
///
/// Uses Azure REST API version 2020-08-15-preview. In version 2.x of the Azure Native provider, it used API version 2020-08-15-preview.
///
/// {{% examples %}}
/// ## Example Usage
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
///     var privateLinkScopedResource = new AzureNative.HybridCompute.PrivateLinkScopedResource("privateLinkScopedResource", new()
///     {
///         LinkedResourceId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/Machines/machineName1",
///         Name = "scoped-resource-name",
///         ResourceGroupName = "myResourceGroup",
///         ScopeName = "myPrivateLinkScope",
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
/// 	hybridcompute "github.com/pulumi/pulumi-azure-native-sdk/hybridcompute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridcompute.NewPrivateLinkScopedResource(ctx, "privateLinkScopedResource", &hybridcompute.PrivateLinkScopedResourceArgs{
/// 			LinkedResourceId:  pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/Machines/machineName1"),
/// 			Name:              pulumi.String("scoped-resource-name"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ScopeName:         pulumi.String("myPrivateLinkScope"),
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
/// resource "azure-native_hybridcompute_privatelinkscopedresource" "privateLinkScopedResource" {
///   linked_resource_id  = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/Machines/machineName1"
///   name                = "scoped-resource-name"
///   resource_group_name = "myResourceGroup"
///   scope_name          = "myPrivateLinkScope"
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
/// import com.pulumi.azurenative.hybridcompute.PrivateLinkScopedResource;
/// import com.pulumi.azurenative.hybridcompute.PrivateLinkScopedResourceArgs;
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
///         var privateLinkScopedResource = new PrivateLinkScopedResource("privateLinkScopedResource", PrivateLinkScopedResourceArgs.builder()
///             .linkedResourceId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/Machines/machineName1")
///             .name("scoped-resource-name")
///             .resourceGroupName("myResourceGroup")
///             .scopeName("myPrivateLinkScope")
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
/// const privateLinkScopedResource = new azure_native.hybridcompute.PrivateLinkScopedResource("privateLinkScopedResource", {
///     linkedResourceId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/Machines/machineName1",
///     name: "scoped-resource-name",
///     resourceGroupName: "myResourceGroup",
///     scopeName: "myPrivateLinkScope",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_link_scoped_resource = azure_native.hybridcompute.PrivateLinkScopedResource("privateLinkScopedResource",
///     linked_resource_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/Machines/machineName1",
///     name="scoped-resource-name",
///     resource_group_name="myResourceGroup",
///     scope_name="myPrivateLinkScope")
///
/// ```
///
/// ```yaml
/// resources:
///   privateLinkScopedResource:
///     type: azure-native:hybridcompute:PrivateLinkScopedResource
///     properties:
///       linkedResourceId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/Machines/machineName1
///       name: scoped-resource-name
///       resourceGroupName: myResourceGroup
///       scopeName: myPrivateLinkScope
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
/// $ pulumi import azure-native:hybridcompute:PrivateLinkScopedResource scoped-resource-name /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridCompute/privateLinkScopes/{scopeName}/scopedResources/{name}
/// ```
class PrivateLinkScopedResource extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The resource id of the scoped Azure monitor resource.
  late final pulumi.Output<String?> linkedResourceId;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// State of the private endpoint connection.
  late final pulumi.Output<String> provisioningState;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateLinkScopedResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateLinkScopedResource]. {@macro pulumi_hybridcompute_private_link_scoped_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateLinkScopedResource(
    String name, {
    PrivateLinkScopedResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:hybridcompute:PrivateLinkScopedResource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    linkedResourceId = registerOutput<String?>('linkedResourceId');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [PrivateLinkScopedResource] resource.
  PrivateLinkScopedResource.reference(String urn)
    : super(
        'azure-native:hybridcompute:PrivateLinkScopedResource',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    linkedResourceId = registerOutput<String?>('linkedResourceId');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    type = registerOutput<String>('type');
  }
}
