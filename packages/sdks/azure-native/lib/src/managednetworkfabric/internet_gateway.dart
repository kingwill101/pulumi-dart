import 'package:pulumi/pulumi.dart' as pulumi;
import 'internet_gateway_args.dart';
import 'system_data_response.dart';

/// The Internet Gateway resource definition.
///
/// Uses Azure REST API version 2023-06-15. In version 2.x of the Azure Native provider, it used API version 2023-06-15.
///
/// Other available API versions: 2024-02-15-preview, 2024-06-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### InternetGateways_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var internetGateway = new AzureNative.ManagedNetworkFabric.InternetGateway("internetGateway", new()
///     {
///         Annotation = "annotation",
///         InternetGatewayName = "example-internetGateway",
///         InternetGatewayRuleId = "/subscriptions/xxxx-xxxx-xxxx-xxxx/providers/Microsoft.ManagedNetworkFabric/internetGatewayRules/example-internetGatewayRule",
///         Location = "eastus",
///         NetworkFabricControllerId = "/subscriptions/xxxx-xxxx-xxxx-xxxx/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabricControllers/example-networkFabricController",
///         ResourceGroupName = "example-rg",
///         Tags =
///         {
///             { "key3540", "1234" },
///         },
///         Type = AzureNative.ManagedNetworkFabric.GatewayType.Infrastructure,
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
/// 	managednetworkfabric "github.com/pulumi/pulumi-azure-native-sdk/managednetworkfabric/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := managednetworkfabric.NewInternetGateway(ctx, "internetGateway", &managednetworkfabric.InternetGatewayArgs{
/// 			Annotation:                pulumi.String("annotation"),
/// 			InternetGatewayName:       pulumi.String("example-internetGateway"),
/// 			InternetGatewayRuleId:     pulumi.String("/subscriptions/xxxx-xxxx-xxxx-xxxx/providers/Microsoft.ManagedNetworkFabric/internetGatewayRules/example-internetGatewayRule"),
/// 			Location:                  pulumi.String("eastus"),
/// 			NetworkFabricControllerId: pulumi.String("/subscriptions/xxxx-xxxx-xxxx-xxxx/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabricControllers/example-networkFabricController"),
/// 			ResourceGroupName:         pulumi.String("example-rg"),
/// 			Tags: pulumi.StringMap{
/// 				"key3540": pulumi.String("1234"),
/// 			},
/// 			Type: pulumi.String(managednetworkfabric.GatewayTypeInfrastructure),
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
/// import com.pulumi.azurenative.managednetworkfabric.InternetGateway;
/// import com.pulumi.azurenative.managednetworkfabric.InternetGatewayArgs;
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
///         var internetGateway = new InternetGateway("internetGateway", InternetGatewayArgs.builder()
///             .annotation("annotation")
///             .internetGatewayName("example-internetGateway")
///             .internetGatewayRuleId("/subscriptions/xxxx-xxxx-xxxx-xxxx/providers/Microsoft.ManagedNetworkFabric/internetGatewayRules/example-internetGatewayRule")
///             .location("eastus")
///             .networkFabricControllerId("/subscriptions/xxxx-xxxx-xxxx-xxxx/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabricControllers/example-networkFabricController")
///             .resourceGroupName("example-rg")
///             .tags(Map.of("key3540", "1234"))
///             .type("Infrastructure")
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
/// const internetGateway = new azure_native.managednetworkfabric.InternetGateway("internetGateway", {
///     annotation: "annotation",
///     internetGatewayName: "example-internetGateway",
///     internetGatewayRuleId: "/subscriptions/xxxx-xxxx-xxxx-xxxx/providers/Microsoft.ManagedNetworkFabric/internetGatewayRules/example-internetGatewayRule",
///     location: "eastus",
///     networkFabricControllerId: "/subscriptions/xxxx-xxxx-xxxx-xxxx/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabricControllers/example-networkFabricController",
///     resourceGroupName: "example-rg",
///     tags: {
///         key3540: "1234",
///     },
///     type: azure_native.managednetworkfabric.GatewayType.Infrastructure,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// internet_gateway = azure_native.managednetworkfabric.InternetGateway("internetGateway",
///     annotation="annotation",
///     internet_gateway_name="example-internetGateway",
///     internet_gateway_rule_id="/subscriptions/xxxx-xxxx-xxxx-xxxx/providers/Microsoft.ManagedNetworkFabric/internetGatewayRules/example-internetGatewayRule",
///     location="eastus",
///     network_fabric_controller_id="/subscriptions/xxxx-xxxx-xxxx-xxxx/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabricControllers/example-networkFabricController",
///     resource_group_name="example-rg",
///     tags={
///         "key3540": "1234",
///     },
///     type=azure_native.managednetworkfabric.GatewayType.INFRASTRUCTURE)
///
/// ```
///
/// ```yaml
/// resources:
///   internetGateway:
///     type: azure-native:managednetworkfabric:InternetGateway
///     properties:
///       annotation: annotation
///       internetGatewayName: example-internetGateway
///       internetGatewayRuleId: /subscriptions/xxxx-xxxx-xxxx-xxxx/providers/Microsoft.ManagedNetworkFabric/internetGatewayRules/example-internetGatewayRule
///       location: eastus
///       networkFabricControllerId: /subscriptions/xxxx-xxxx-xxxx-xxxx/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabricControllers/example-networkFabricController
///       resourceGroupName: example-rg
///       tags:
///         key3540: '1234'
///       type: Infrastructure
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
/// $ pulumi import azure-native:managednetworkfabric:InternetGateway example-internetGateway /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedNetworkFabric/internetGateways/{internetGatewayName}
/// ```
class InternetGateway extends pulumi.CustomResource {
  /// Switch configuration description.
  late final pulumi.Output<String?> annotation;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// ARM Resource ID of the Internet Gateway Rule.
  late final pulumi.Output<String?> internetGatewayRuleId;
  /// IPv4 Address of Internet Gateway.
  late final pulumi.Output<String> ipv4Address;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// ARM Resource ID of the Network Fabric Controller.
  late final pulumi.Output<String> networkFabricControllerId;
  /// Port number of Internet Gateway.
  late final pulumi.Output<int> port;
  /// Provisioning state of resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [InternetGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InternetGateway]. {@macro pulumi_managednetworkfabric_internet_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InternetGateway(
    String name, {
    InternetGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:managednetworkfabric:InternetGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotation = registerOutput<String?>('annotation');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.internetGatewayRuleId = registerOutput<String?>('internetGatewayRuleId');
    this.ipv4Address = registerOutput<String>('ipv4Address');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.networkFabricControllerId = registerOutput<String>('networkFabricControllerId');
    this.port = registerOutput<int>('port');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
