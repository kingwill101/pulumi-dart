import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_tap_args.dart';
import 'network_tap_properties_response_destinations.dart';
import 'system_data_response.dart';

/// The Network Tap resource definition.
///
/// Uses Azure REST API version 2023-06-15. In version 2.x of the Azure Native provider, it used API version 2023-06-15.
///
/// Other available API versions: 2024-02-15-preview, 2024-06-15-preview, 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NetworkTaps_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkTap = new AzureNative.ManagedNetworkFabric.NetworkTap("networkTap", new()
///     {
///         Annotation = "annotation",
///         Destinations = new[]
///         {
///             new AzureNative.ManagedNetworkFabric.Inputs.NetworkTapPropertiesDestinationsArgs
///             {
///                 DestinationId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/l3IsloationDomains/example-l3Domain/internalNetworks/example-internalNetwork",
///                 DestinationTapRuleId = "/subscriptions/xxxx-xxxx-xxxx-xxxx/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkTapRules/example-destinationTapRule",
///                 DestinationType = AzureNative.ManagedNetworkFabric.DestinationType.IsolationDomain,
///                 IsolationDomainProperties = new AzureNative.ManagedNetworkFabric.Inputs.IsolationDomainPropertiesArgs
///                 {
///                     Encapsulation = AzureNative.ManagedNetworkFabric.Encapsulation.None,
///                     NeighborGroupIds = new[]
///                     {
///                         "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/neighborGroups/example-neighborGroup",
///                     },
///                 },
///                 Name = "example-destinaionName",
///             },
///         },
///         Location = "eastuseuap",
///         NetworkPacketBrokerId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkPacketBrokers/example-networkPacketBroker",
///         NetworkTapName = "example-networkTap",
///         PollingType = AzureNative.ManagedNetworkFabric.PollingType.Pull,
///         ResourceGroupName = "example-rg",
///         Tags =
///         {
///             { "key6024", "1234" },
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
/// 	managednetworkfabric "github.com/pulumi/pulumi-azure-native-sdk/managednetworkfabric/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := managednetworkfabric.NewNetworkTap(ctx, "networkTap", &managednetworkfabric.NetworkTapArgs{
/// 			Annotation: pulumi.String("annotation"),
/// 			Destinations: managednetworkfabric.NetworkTapPropertiesDestinationsArray{
/// 				&managednetworkfabric.NetworkTapPropertiesDestinationsArgs{
/// 					DestinationId:        pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/l3IsloationDomains/example-l3Domain/internalNetworks/example-internalNetwork"),
/// 					DestinationTapRuleId: pulumi.String("/subscriptions/xxxx-xxxx-xxxx-xxxx/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkTapRules/example-destinationTapRule"),
/// 					DestinationType:      pulumi.String(managednetworkfabric.DestinationTypeIsolationDomain),
/// 					IsolationDomainProperties: &managednetworkfabric.IsolationDomainPropertiesArgs{
/// 						Encapsulation: pulumi.String(managednetworkfabric.EncapsulationNone),
/// 						NeighborGroupIds: pulumi.StringArray{
/// 							pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/neighborGroups/example-neighborGroup"),
/// 						},
/// 					},
/// 					Name: pulumi.String("example-destinaionName"),
/// 				},
/// 			},
/// 			Location:              pulumi.String("eastuseuap"),
/// 			NetworkPacketBrokerId: pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkPacketBrokers/example-networkPacketBroker"),
/// 			NetworkTapName:        pulumi.String("example-networkTap"),
/// 			PollingType:           pulumi.String(managednetworkfabric.PollingTypePull),
/// 			ResourceGroupName:     pulumi.String("example-rg"),
/// 			Tags: pulumi.StringMap{
/// 				"key6024": pulumi.String("1234"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_managednetworkfabric_networktap" "networkTap" {
///   annotation = "annotation"
///   destinations {
///     destination_id          = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/l3IsloationDomains/example-l3Domain/internalNetworks/example-internalNetwork"
///     destination_tap_rule_id = "/subscriptions/xxxx-xxxx-xxxx-xxxx/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkTapRules/example-destinationTapRule"
///     destination_type        = "IsolationDomain"
///     isolation_domain_properties = {
///       encapsulation      = "None"
///       neighbor_group_ids = ["/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/neighborGroups/example-neighborGroup"]
///     }
///     name = "example-destinaionName"
///   }
///   location                 = "eastuseuap"
///   network_packet_broker_id = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkPacketBrokers/example-networkPacketBroker"
///   network_tap_name         = "example-networkTap"
///   polling_type             = "Pull"
///   resource_group_name      = "example-rg"
///   tags = {
///     "key6024" = "1234"
///   }
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
/// import com.pulumi.azurenative.managednetworkfabric.NetworkTap;
/// import com.pulumi.azurenative.managednetworkfabric.NetworkTapArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.NetworkTapPropertiesDestinationsArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.IsolationDomainPropertiesArgs;
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
///         var networkTap = new NetworkTap("networkTap", NetworkTapArgs.builder()
///             .annotation("annotation")
///             .destinations(NetworkTapPropertiesDestinationsArgs.builder()
///                 .destinationId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/l3IsloationDomains/example-l3Domain/internalNetworks/example-internalNetwork")
///                 .destinationTapRuleId("/subscriptions/xxxx-xxxx-xxxx-xxxx/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkTapRules/example-destinationTapRule")
///                 .destinationType("IsolationDomain")
///                 .isolationDomainProperties(IsolationDomainPropertiesArgs.builder()
///                     .encapsulation("None")
///                     .neighborGroupIds("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/neighborGroups/example-neighborGroup")
///                     .build())
///                 .name("example-destinaionName")
///                 .build())
///             .location("eastuseuap")
///             .networkPacketBrokerId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkPacketBrokers/example-networkPacketBroker")
///             .networkTapName("example-networkTap")
///             .pollingType("Pull")
///             .resourceGroupName("example-rg")
///             .tags(Map.of("key6024", "1234"))
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
/// const networkTap = new azure_native.managednetworkfabric.NetworkTap("networkTap", {
///     annotation: "annotation",
///     destinations: [{
///         destinationId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/l3IsloationDomains/example-l3Domain/internalNetworks/example-internalNetwork",
///         destinationTapRuleId: "/subscriptions/xxxx-xxxx-xxxx-xxxx/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkTapRules/example-destinationTapRule",
///         destinationType: azure_native.managednetworkfabric.DestinationType.IsolationDomain,
///         isolationDomainProperties: {
///             encapsulation: azure_native.managednetworkfabric.Encapsulation.None,
///             neighborGroupIds: ["/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/neighborGroups/example-neighborGroup"],
///         },
///         name: "example-destinaionName",
///     }],
///     location: "eastuseuap",
///     networkPacketBrokerId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkPacketBrokers/example-networkPacketBroker",
///     networkTapName: "example-networkTap",
///     pollingType: azure_native.managednetworkfabric.PollingType.Pull,
///     resourceGroupName: "example-rg",
///     tags: {
///         key6024: "1234",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_tap = azure_native.managednetworkfabric.NetworkTap("networkTap",
///     annotation="annotation",
///     destinations=[{
///         "destination_id": "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/l3IsloationDomains/example-l3Domain/internalNetworks/example-internalNetwork",
///         "destination_tap_rule_id": "/subscriptions/xxxx-xxxx-xxxx-xxxx/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkTapRules/example-destinationTapRule",
///         "destination_type": azure_native.managednetworkfabric.DestinationType.ISOLATION_DOMAIN,
///         "isolation_domain_properties": {
///             "encapsulation": azure_native.managednetworkfabric.Encapsulation.NONE,
///             "neighbor_group_ids": ["/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/neighborGroups/example-neighborGroup"],
///         },
///         "name": "example-destinaionName",
///     }],
///     location="eastuseuap",
///     network_packet_broker_id="/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkPacketBrokers/example-networkPacketBroker",
///     network_tap_name="example-networkTap",
///     polling_type=azure_native.managednetworkfabric.PollingType.PULL,
///     resource_group_name="example-rg",
///     tags={
///         "key6024": "1234",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   networkTap:
///     type: azure-native:managednetworkfabric:NetworkTap
///     properties:
///       annotation: annotation
///       destinations:
///         - destinationId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/l3IsloationDomains/example-l3Domain/internalNetworks/example-internalNetwork
///           destinationTapRuleId: /subscriptions/xxxx-xxxx-xxxx-xxxx/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkTapRules/example-destinationTapRule
///           destinationType: IsolationDomain
///           isolationDomainProperties:
///             encapsulation: None
///             neighborGroupIds:
///               - /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/neighborGroups/example-neighborGroup
///           name: example-destinaionName
///       location: eastuseuap
///       networkPacketBrokerId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkPacketBrokers/example-networkPacketBroker
///       networkTapName: example-networkTap
///       pollingType: Pull
///       resourceGroupName: example-rg
///       tags:
///         key6024: '1234'
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
/// $ pulumi import azure-native:managednetworkfabric:NetworkTap example-networkTap /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedNetworkFabric/networkTaps/{networkTapName}
/// ```
class NetworkTap extends pulumi.CustomResource {
  /// Administrative state of the resource. Example -Enabled/Disabled
  late final pulumi.Output<String> administrativeState;
  /// Switch configuration description.
  late final pulumi.Output<String?> annotation;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets the configurations state of the resource.
  late final pulumi.Output<String> configurationState;
  /// List of destinations to send the filter traffic.
  late final pulumi.Output<List<NetworkTapPropertiesResponseDestinations>> destinations;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// ARM resource ID of the Network Packet Broker.
  late final pulumi.Output<String> networkPacketBrokerId;
  /// Polling type.
  late final pulumi.Output<String?> pollingType;
  /// Provides you the latest status of the NFC service, whether it is Accepted, updating, Succeeded or Failed. During this process, the states keep changing based on the status of Network Tap provisioning.
  late final pulumi.Output<String> provisioningState;
  /// Source Tap Rule Id. ARM Resource ID of the Network Tap Rule.
  late final pulumi.Output<String> sourceTapRuleId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [NetworkTap].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkTap]. {@macro pulumi_managednetworkfabric_network_tap_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkTap(
    String name, {
    NetworkTapArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:managednetworkfabric:NetworkTap',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    administrativeState = registerOutput<String>('administrativeState');
    annotation = registerOutput<String?>('annotation');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    configurationState = registerOutput<String>('configurationState');
    destinations = registerOutput<List<NetworkTapPropertiesResponseDestinations>>('destinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkTapPropertiesResponseDestinations>(guardedValue, (value) => NetworkTapPropertiesResponseDestinations.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkPacketBrokerId = registerOutput<String>('networkPacketBrokerId');
    pollingType = registerOutput<String?>('pollingType');
    provisioningState = registerOutput<String>('provisioningState');
    sourceTapRuleId = registerOutput<String>('sourceTapRuleId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [NetworkTap] resource.
  NetworkTap.reference(String urn)
    : super(
        'azure-native:managednetworkfabric:NetworkTap',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    administrativeState = registerOutput<String>('administrativeState');
    annotation = registerOutput<String?>('annotation');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    configurationState = registerOutput<String>('configurationState');
    destinations = registerOutput<List<NetworkTapPropertiesResponseDestinations>>('destinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkTapPropertiesResponseDestinations>(guardedValue, (value) => NetworkTapPropertiesResponseDestinations.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkPacketBrokerId = registerOutput<String>('networkPacketBrokerId');
    pollingType = registerOutput<String?>('pollingType');
    provisioningState = registerOutput<String>('provisioningState');
    sourceTapRuleId = registerOutput<String>('sourceTapRuleId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
