import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_resource_provider_args.dart';

/// A manifest file that defines the custom resource provider resources.
///
/// Uses Azure REST API version 2018-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2018-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update the custom resource provider
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var customResourceProvider = new AzureNative.CustomProviders.CustomResourceProvider("customResourceProvider", new()
///     {
///         Actions = new[]
///         {
///             new AzureNative.CustomProviders.Inputs.CustomRPActionRouteDefinitionArgs
///             {
///                 Endpoint = "https://mytestendpoint/",
///                 Name = "TestAction",
///                 RoutingType = AzureNative.CustomProviders.ActionRouting.Proxy,
///             },
///         },
///         Location = "eastus",
///         ResourceGroupName = "testRG",
///         ResourceProviderName = "newrp",
///         ResourceTypes = new[]
///         {
///             new AzureNative.CustomProviders.Inputs.CustomRPResourceTypeRouteDefinitionArgs
///             {
///                 Endpoint = "https://mytestendpoint2/",
///                 Name = "TestResource",
///                 RoutingType = AzureNative.CustomProviders.ResourceTypeRouting.Proxy_Cache,
///             },
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
/// 	customproviders "github.com/pulumi/pulumi-azure-native-sdk/customproviders/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := customproviders.NewCustomResourceProvider(ctx, "customResourceProvider", &customproviders.CustomResourceProviderArgs{
/// 			Actions: customproviders.CustomRPActionRouteDefinitionArray{
/// 				&customproviders.CustomRPActionRouteDefinitionArgs{
/// 					Endpoint:    pulumi.String("https://mytestendpoint/"),
/// 					Name:        pulumi.String("TestAction"),
/// 					RoutingType: pulumi.String(customproviders.ActionRoutingProxy),
/// 				},
/// 			},
/// 			Location:             pulumi.String("eastus"),
/// 			ResourceGroupName:    pulumi.String("testRG"),
/// 			ResourceProviderName: pulumi.String("newrp"),
/// 			ResourceTypes: customproviders.CustomRPResourceTypeRouteDefinitionArray{
/// 				&customproviders.CustomRPResourceTypeRouteDefinitionArgs{
/// 					Endpoint:    pulumi.String("https://mytestendpoint2/"),
/// 					Name:        pulumi.String("TestResource"),
/// 					RoutingType: pulumi.String(customproviders.ResourceTypeRouting_Proxy_Cache),
/// 				},
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
/// import com.pulumi.azurenative.customproviders.CustomResourceProvider;
/// import com.pulumi.azurenative.customproviders.CustomResourceProviderArgs;
/// import com.pulumi.azurenative.customproviders.inputs.CustomRPActionRouteDefinitionArgs;
/// import com.pulumi.azurenative.customproviders.inputs.CustomRPResourceTypeRouteDefinitionArgs;
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
///         var customResourceProvider = new CustomResourceProvider("customResourceProvider", CustomResourceProviderArgs.builder()
///             .actions(CustomRPActionRouteDefinitionArgs.builder()
///                 .endpoint("https://mytestendpoint/")
///                 .name("TestAction")
///                 .routingType("Proxy")
///                 .build())
///             .location("eastus")
///             .resourceGroupName("testRG")
///             .resourceProviderName("newrp")
///             .resourceTypes(CustomRPResourceTypeRouteDefinitionArgs.builder()
///                 .endpoint("https://mytestendpoint2/")
///                 .name("TestResource")
///                 .routingType("Proxy,Cache")
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
/// const customResourceProvider = new azure_native.customproviders.CustomResourceProvider("customResourceProvider", {
///     actions: [{
///         endpoint: "https://mytestendpoint/",
///         name: "TestAction",
///         routingType: azure_native.customproviders.ActionRouting.Proxy,
///     }],
///     location: "eastus",
///     resourceGroupName: "testRG",
///     resourceProviderName: "newrp",
///     resourceTypes: [{
///         endpoint: "https://mytestendpoint2/",
///         name: "TestResource",
///         routingType: azure_native.customproviders.ResourceTypeRouting.Proxy_Cache,
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// custom_resource_provider = azure_native.customproviders.CustomResourceProvider("customResourceProvider",
///     actions=[{
///         "endpoint": "https://mytestendpoint/",
///         "name": "TestAction",
///         "routing_type": azure_native.customproviders.ActionRouting.PROXY,
///     }],
///     location="eastus",
///     resource_group_name="testRG",
///     resource_provider_name="newrp",
///     resource_types=[{
///         "endpoint": "https://mytestendpoint2/",
///         "name": "TestResource",
///         "routing_type": azure_native.customproviders.ResourceTypeRouting.PROXY_CACHE,
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   customResourceProvider:
///     type: azure-native:customproviders:CustomResourceProvider
///     properties:
///       actions:
///         - endpoint: https://mytestendpoint/
///           name: TestAction
///           routingType: Proxy
///       location: eastus
///       resourceGroupName: testRG
///       resourceProviderName: newrp
///       resourceTypes:
///         - endpoint: https://mytestendpoint2/
///           name: TestResource
///           routingType: Proxy,Cache
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
/// $ pulumi import azure-native:customproviders:CustomResourceProvider newrp /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CustomProviders/resourceProviders/{resourceProviderName}
/// ```
class CustomResourceProvider extends pulumi.CustomResource {
  /// A list of actions that the custom resource provider implements.
  late final pulumi.Output<List<Map<String, dynamic>>?> actions;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource location
  late final pulumi.Output<String> location;
  /// Resource name
  late final pulumi.Output<String> name;
  /// The provisioning state of the resource provider.
  late final pulumi.Output<String> provisioningState;
  /// A list of resource types that the custom resource provider implements.
  late final pulumi.Output<List<Map<String, dynamic>>?> resourceTypes;
  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type
  late final pulumi.Output<String> type;
  /// A list of validations to run on the custom resource provider's requests.
  late final pulumi.Output<List<Map<String, dynamic>>?> validations;

  /// Creates a new [CustomResourceProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomResourceProvider]. {@macro pulumi_customproviders_custom_resource_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomResourceProvider(
    String name, {
    CustomResourceProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:customproviders:CustomResourceProvider',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actions = registerOutput<List<Map<String, dynamic>>?>('actions');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceTypes = registerOutput<List<Map<String, dynamic>>?>('resourceTypes');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    validations = registerOutput<List<Map<String, dynamic>>?>('validations');
  }
}
