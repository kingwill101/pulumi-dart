import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_function_definition_group_args.dart';
import 'network_function_definition_group_properties_format_response.dart';
import 'system_data_response.dart';

/// Network function definition group resource.
///
/// Uses Azure REST API version 2024-04-15. In version 2.x of the Azure Native provider, it used API version 2023-09-01.
///
/// Other available API versions: 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridnetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update the network function definition group
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkFunctionDefinitionGroup = new AzureNative.HybridNetwork.NetworkFunctionDefinitionGroup("networkFunctionDefinitionGroup", new()
///     {
///         Location = "eastus",
///         NetworkFunctionDefinitionGroupName = "TestNetworkFunctionDefinitionGroupName",
///         PublisherName = "TestPublisher",
///         ResourceGroupName = "rg",
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
/// 	hybridnetwork "github.com/pulumi/pulumi-azure-native-sdk/hybridnetwork/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridnetwork.NewNetworkFunctionDefinitionGroup(ctx, "networkFunctionDefinitionGroup", &hybridnetwork.NetworkFunctionDefinitionGroupArgs{
/// 			Location:                           pulumi.String("eastus"),
/// 			NetworkFunctionDefinitionGroupName: pulumi.String("TestNetworkFunctionDefinitionGroupName"),
/// 			PublisherName:                      pulumi.String("TestPublisher"),
/// 			ResourceGroupName:                  pulumi.String("rg"),
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
/// resource "azure-native_hybridnetwork_networkfunctiondefinitiongroup" "networkFunctionDefinitionGroup" {
///   location                               = "eastus"
///   network_function_definition_group_name = "TestNetworkFunctionDefinitionGroupName"
///   publisher_name                         = "TestPublisher"
///   resource_group_name                    = "rg"
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
/// import com.pulumi.azurenative.hybridnetwork.NetworkFunctionDefinitionGroup;
/// import com.pulumi.azurenative.hybridnetwork.NetworkFunctionDefinitionGroupArgs;
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
///         var networkFunctionDefinitionGroup = new NetworkFunctionDefinitionGroup("networkFunctionDefinitionGroup", NetworkFunctionDefinitionGroupArgs.builder()
///             .location("eastus")
///             .networkFunctionDefinitionGroupName("TestNetworkFunctionDefinitionGroupName")
///             .publisherName("TestPublisher")
///             .resourceGroupName("rg")
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
/// const networkFunctionDefinitionGroup = new azure_native.hybridnetwork.NetworkFunctionDefinitionGroup("networkFunctionDefinitionGroup", {
///     location: "eastus",
///     networkFunctionDefinitionGroupName: "TestNetworkFunctionDefinitionGroupName",
///     publisherName: "TestPublisher",
///     resourceGroupName: "rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_function_definition_group = azure_native.hybridnetwork.NetworkFunctionDefinitionGroup("networkFunctionDefinitionGroup",
///     location="eastus",
///     network_function_definition_group_name="TestNetworkFunctionDefinitionGroupName",
///     publisher_name="TestPublisher",
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   networkFunctionDefinitionGroup:
///     type: azure-native:hybridnetwork:NetworkFunctionDefinitionGroup
///     properties:
///       location: eastus
///       networkFunctionDefinitionGroupName: TestNetworkFunctionDefinitionGroupName
///       publisherName: TestPublisher
///       resourceGroupName: rg
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
/// $ pulumi import azure-native:hybridnetwork:NetworkFunctionDefinitionGroup TestPublisherSkuVersion /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridNetwork/publishers/{publisherName}/networkFunctionDefinitionGroups/{networkFunctionDefinitionGroupName}
/// ```
class NetworkFunctionDefinitionGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Network function definition group properties.
  late final pulumi.Output<NetworkFunctionDefinitionGroupPropertiesFormatResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [NetworkFunctionDefinitionGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkFunctionDefinitionGroup]. {@macro pulumi_hybridnetwork_network_function_definition_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkFunctionDefinitionGroup(
    String name, {
    NetworkFunctionDefinitionGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:hybridnetwork:NetworkFunctionDefinitionGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<NetworkFunctionDefinitionGroupPropertiesFormatResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkFunctionDefinitionGroupPropertiesFormatResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
