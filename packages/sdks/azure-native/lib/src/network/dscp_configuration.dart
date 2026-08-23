import 'package:pulumi/pulumi.dart' as pulumi;
import 'dscp_configuration_args.dart';

/// Differentiated Services Code Point configuration for any given network interface
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create DSCP Configuration
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dscpConfiguration = new AzureNative.Network.DscpConfiguration("dscpConfiguration", new()
///     {
///         DscpConfigurationName = "mydscpconfig",
///         Location = "eastus",
///         QosDefinitionCollection = new[]
///         {
///             new AzureNative.Network.Inputs.QosDefinitionArgs
///             {
///                 DestinationIpRanges = new[]
///                 {
///                     new AzureNative.Network.Inputs.QosIpRangeArgs
///                     {
///                         EndIP = "127.0.10.2",
///                         StartIP = "127.0.10.1",
///                     },
///                 },
///                 DestinationPortRanges = new[]
///                 {
///                     new AzureNative.Network.Inputs.QosPortRangeArgs
///                     {
///                         End = 15,
///                         Start = 15,
///                     },
///                 },
///                 Markings = new[]
///                 {
///                     1,
///                 },
///                 Protocol = AzureNative.Network.ProtocolType.Tcp,
///                 SourceIpRanges = new[]
///                 {
///                     new AzureNative.Network.Inputs.QosIpRangeArgs
///                     {
///                         EndIP = "127.0.0.2",
///                         StartIP = "127.0.0.1",
///                     },
///                 },
///                 SourcePortRanges = new[]
///                 {
///                     new AzureNative.Network.Inputs.QosPortRangeArgs
///                     {
///                         End = 11,
///                         Start = 10,
///                     },
///                     new AzureNative.Network.Inputs.QosPortRangeArgs
///                     {
///                         End = 21,
///                         Start = 20,
///                     },
///                 },
///             },
///             new AzureNative.Network.Inputs.QosDefinitionArgs
///             {
///                 DestinationIpRanges = new[]
///                 {
///                     new AzureNative.Network.Inputs.QosIpRangeArgs
///                     {
///                         EndIP = "12.0.10.2",
///                         StartIP = "12.0.10.1",
///                     },
///                 },
///                 DestinationPortRanges = new[]
///                 {
///                     new AzureNative.Network.Inputs.QosPortRangeArgs
///                     {
///                         End = 52,
///                         Start = 51,
///                     },
///                 },
///                 Markings = new[]
///                 {
///                     2,
///                 },
///                 Protocol = AzureNative.Network.ProtocolType.Udp,
///                 SourceIpRanges = new[]
///                 {
///                     new AzureNative.Network.Inputs.QosIpRangeArgs
///                     {
///                         EndIP = "12.0.0.2",
///                         StartIP = "12.0.0.1",
///                     },
///                 },
///                 SourcePortRanges = new[]
///                 {
///                     new AzureNative.Network.Inputs.QosPortRangeArgs
///                     {
///                         End = 12,
///                         Start = 11,
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "rg1",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewDscpConfiguration(ctx, "dscpConfiguration", &network.DscpConfigurationArgs{
/// 			DscpConfigurationName: pulumi.String("mydscpconfig"),
/// 			Location:              pulumi.String("eastus"),
/// 			QosDefinitionCollection: network.QosDefinitionArray{
/// 				&network.QosDefinitionArgs{
/// 					DestinationIpRanges: network.QosIpRangeArray{
/// 						&network.QosIpRangeArgs{
/// 							EndIP:   pulumi.String("127.0.10.2"),
/// 							StartIP: pulumi.String("127.0.10.1"),
/// 						},
/// 					},
/// 					DestinationPortRanges: network.QosPortRangeArray{
/// 						&network.QosPortRangeArgs{
/// 							End:   pulumi.Int(15),
/// 							Start: pulumi.Int(15),
/// 						},
/// 					},
/// 					Markings: pulumi.IntArray{
/// 						pulumi.Int(1),
/// 					},
/// 					Protocol: pulumi.String(network.ProtocolTypeTcp),
/// 					SourceIpRanges: network.QosIpRangeArray{
/// 						&network.QosIpRangeArgs{
/// 							EndIP:   pulumi.String("127.0.0.2"),
/// 							StartIP: pulumi.String("127.0.0.1"),
/// 						},
/// 					},
/// 					SourcePortRanges: network.QosPortRangeArray{
/// 						&network.QosPortRangeArgs{
/// 							End:   pulumi.Int(11),
/// 							Start: pulumi.Int(10),
/// 						},
/// 						&network.QosPortRangeArgs{
/// 							End:   pulumi.Int(21),
/// 							Start: pulumi.Int(20),
/// 						},
/// 					},
/// 				},
/// 				&network.QosDefinitionArgs{
/// 					DestinationIpRanges: network.QosIpRangeArray{
/// 						&network.QosIpRangeArgs{
/// 							EndIP:   pulumi.String("12.0.10.2"),
/// 							StartIP: pulumi.String("12.0.10.1"),
/// 						},
/// 					},
/// 					DestinationPortRanges: network.QosPortRangeArray{
/// 						&network.QosPortRangeArgs{
/// 							End:   pulumi.Int(52),
/// 							Start: pulumi.Int(51),
/// 						},
/// 					},
/// 					Markings: pulumi.IntArray{
/// 						pulumi.Int(2),
/// 					},
/// 					Protocol: pulumi.String(network.ProtocolTypeUdp),
/// 					SourceIpRanges: network.QosIpRangeArray{
/// 						&network.QosIpRangeArgs{
/// 							EndIP:   pulumi.String("12.0.0.2"),
/// 							StartIP: pulumi.String("12.0.0.1"),
/// 						},
/// 					},
/// 					SourcePortRanges: network.QosPortRangeArray{
/// 						&network.QosPortRangeArgs{
/// 							End:   pulumi.Int(12),
/// 							Start: pulumi.Int(11),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// resource "azure-native_network_dscpconfiguration" "dscpConfiguration" {
///   dscp_configuration_name = "mydscpconfig"
///   location                = "eastus"
///   qos_definition_collection {
///     destination_ip_ranges {
///       end_ip   = "127.0.10.2"
///       start_ip = "127.0.10.1"
///     }
///     destination_port_ranges {
///       end   = 15
///       start = 15
///     }
///     markings = [1]
///     protocol = "Tcp"
///     source_ip_ranges {
///       end_ip   = "127.0.0.2"
///       start_ip = "127.0.0.1"
///     }
///     source_port_ranges {
///       end   = 11
///       start = 10
///     }
///     source_port_ranges {
///       end   = 21
///       start = 20
///     }
///   }
///   qos_definition_collection {
///     destination_ip_ranges {
///       end_ip   = "12.0.10.2"
///       start_ip = "12.0.10.1"
///     }
///     destination_port_ranges {
///       end   = 52
///       start = 51
///     }
///     markings = [2]
///     protocol = "Udp"
///     source_ip_ranges {
///       end_ip   = "12.0.0.2"
///       start_ip = "12.0.0.1"
///     }
///     source_port_ranges {
///       end   = 12
///       start = 11
///     }
///   }
///   resource_group_name = "rg1"
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
/// import com.pulumi.azurenative.network.DscpConfiguration;
/// import com.pulumi.azurenative.network.DscpConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.QosDefinitionArgs;
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
///         var dscpConfiguration = new DscpConfiguration("dscpConfiguration", DscpConfigurationArgs.builder()
///             .dscpConfigurationName("mydscpconfig")
///             .location("eastus")
///             .qosDefinitionCollection(
///                 QosDefinitionArgs.builder()
///                     .destinationIpRanges(QosIpRangeArgs.builder()
///                         .endIP("127.0.10.2")
///                         .startIP("127.0.10.1")
///                         .build())
///                     .destinationPortRanges(QosPortRangeArgs.builder()
///                         .end(15)
///                         .start(15)
///                         .build())
///                     .markings(1)
///                     .protocol("Tcp")
///                     .sourceIpRanges(QosIpRangeArgs.builder()
///                         .endIP("127.0.0.2")
///                         .startIP("127.0.0.1")
///                         .build())
///                     .sourcePortRanges(
///                         QosPortRangeArgs.builder()
///                             .end(11)
///                             .start(10)
///                             .build(),
///                         QosPortRangeArgs.builder()
///                             .end(21)
///                             .start(20)
///                             .build())
///                     .build(),
///                 QosDefinitionArgs.builder()
///                     .destinationIpRanges(QosIpRangeArgs.builder()
///                         .endIP("12.0.10.2")
///                         .startIP("12.0.10.1")
///                         .build())
///                     .destinationPortRanges(QosPortRangeArgs.builder()
///                         .end(52)
///                         .start(51)
///                         .build())
///                     .markings(2)
///                     .protocol("Udp")
///                     .sourceIpRanges(QosIpRangeArgs.builder()
///                         .endIP("12.0.0.2")
///                         .startIP("12.0.0.1")
///                         .build())
///                     .sourcePortRanges(QosPortRangeArgs.builder()
///                         .end(12)
///                         .start(11)
///                         .build())
///                     .build())
///             .resourceGroupName("rg1")
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
/// const dscpConfiguration = new azure_native.network.DscpConfiguration("dscpConfiguration", {
///     dscpConfigurationName: "mydscpconfig",
///     location: "eastus",
///     qosDefinitionCollection: [
///         {
///             destinationIpRanges: [{
///                 endIP: "127.0.10.2",
///                 startIP: "127.0.10.1",
///             }],
///             destinationPortRanges: [{
///                 end: 15,
///                 start: 15,
///             }],
///             markings: [1],
///             protocol: azure_native.network.ProtocolType.Tcp,
///             sourceIpRanges: [{
///                 endIP: "127.0.0.2",
///                 startIP: "127.0.0.1",
///             }],
///             sourcePortRanges: [
///                 {
///                     end: 11,
///                     start: 10,
///                 },
///                 {
///                     end: 21,
///                     start: 20,
///                 },
///             ],
///         },
///         {
///             destinationIpRanges: [{
///                 endIP: "12.0.10.2",
///                 startIP: "12.0.10.1",
///             }],
///             destinationPortRanges: [{
///                 end: 52,
///                 start: 51,
///             }],
///             markings: [2],
///             protocol: azure_native.network.ProtocolType.Udp,
///             sourceIpRanges: [{
///                 endIP: "12.0.0.2",
///                 startIP: "12.0.0.1",
///             }],
///             sourcePortRanges: [{
///                 end: 12,
///                 start: 11,
///             }],
///         },
///     ],
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dscp_configuration = azure_native.network.DscpConfiguration("dscpConfiguration",
///     dscp_configuration_name="mydscpconfig",
///     location="eastus",
///     qos_definition_collection=[
///         {
///             "destination_ip_ranges": [{
///                 "end_ip": "127.0.10.2",
///                 "start_ip": "127.0.10.1",
///             }],
///             "destination_port_ranges": [{
///                 "end": 15,
///                 "start": 15,
///             }],
///             "markings": [1],
///             "protocol": azure_native.network.ProtocolType.TCP,
///             "source_ip_ranges": [{
///                 "end_ip": "127.0.0.2",
///                 "start_ip": "127.0.0.1",
///             }],
///             "source_port_ranges": [
///                 {
///                     "end": 11,
///                     "start": 10,
///                 },
///                 {
///                     "end": 21,
///                     "start": 20,
///                 },
///             ],
///         },
///         {
///             "destination_ip_ranges": [{
///                 "end_ip": "12.0.10.2",
///                 "start_ip": "12.0.10.1",
///             }],
///             "destination_port_ranges": [{
///                 "end": 52,
///                 "start": 51,
///             }],
///             "markings": [2],
///             "protocol": azure_native.network.ProtocolType.UDP,
///             "source_ip_ranges": [{
///                 "end_ip": "12.0.0.2",
///                 "start_ip": "12.0.0.1",
///             }],
///             "source_port_ranges": [{
///                 "end": 12,
///                 "start": 11,
///             }],
///         },
///     ],
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   dscpConfiguration:
///     type: azure-native:network:DscpConfiguration
///     properties:
///       dscpConfigurationName: mydscpconfig
///       location: eastus
///       qosDefinitionCollection:
///         - destinationIpRanges:
///             - endIP: 127.0.10.2
///               startIP: 127.0.10.1
///           destinationPortRanges:
///             - end: 15
///               start: 15
///           markings:
///             - 1
///           protocol: Tcp
///           sourceIpRanges:
///             - endIP: 127.0.0.2
///               startIP: 127.0.0.1
///           sourcePortRanges:
///             - end: 11
///               start: 10
///             - end: 21
///               start: 20
///         - destinationIpRanges:
///             - endIP: 12.0.10.2
///               startIP: 12.0.10.1
///           destinationPortRanges:
///             - end: 52
///               start: 51
///           markings:
///             - 2
///           protocol: Udp
///           sourceIpRanges:
///             - endIP: 12.0.0.2
///               startIP: 12.0.0.1
///           sourcePortRanges:
///             - end: 12
///               start: 11
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:network:DscpConfiguration mydscpConfig /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/dscpConfigurations/{dscpConfigurationName}
/// ```
class DscpConfiguration extends pulumi.CustomResource {
  /// Associated Network Interfaces to the DSCP Configuration.
  late final pulumi.Output<List<Map<String, dynamic>>> associatedNetworkInterfaces;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Destination IP ranges.
  late final pulumi.Output<List<Map<String, dynamic>>?> destinationIpRanges;
  /// Destination port ranges.
  late final pulumi.Output<List<Map<String, dynamic>>?> destinationPortRanges;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// List of markings to be used in the configuration.
  late final pulumi.Output<List<int>?> markings;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// RNM supported protocol types.
  late final pulumi.Output<String?> protocol;
  /// The provisioning state of the DSCP Configuration resource.
  late final pulumi.Output<String> provisioningState;
  /// Qos Collection ID generated by RNM.
  late final pulumi.Output<String> qosCollectionId;
  /// QoS object definitions
  late final pulumi.Output<List<Map<String, dynamic>>?> qosDefinitionCollection;
  /// The resource GUID property of the DSCP Configuration resource.
  late final pulumi.Output<String> resourceGuid;
  /// Source IP ranges.
  late final pulumi.Output<List<Map<String, dynamic>>?> sourceIpRanges;
  /// Sources port ranges.
  late final pulumi.Output<List<Map<String, dynamic>>?> sourcePortRanges;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [DscpConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DscpConfiguration]. {@macro pulumi_network_dscp_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DscpConfiguration(
    String name, {
    DscpConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:DscpConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    associatedNetworkInterfaces = registerOutput<List<Map<String, dynamic>>>('associatedNetworkInterfaces');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    destinationIpRanges = registerOutput<List<Map<String, dynamic>>?>('destinationIpRanges');
    destinationPortRanges = registerOutput<List<Map<String, dynamic>>?>('destinationPortRanges');
    etag = registerOutput<String>('etag');
    location = registerOutput<String?>('location');
    markings = registerOutput<List<int>?>('markings');
    this.name = registerOutput<String>('name');
    protocol = registerOutput<String?>('protocol');
    provisioningState = registerOutput<String>('provisioningState');
    qosCollectionId = registerOutput<String>('qosCollectionId');
    qosDefinitionCollection = registerOutput<List<Map<String, dynamic>>?>('qosDefinitionCollection');
    resourceGuid = registerOutput<String>('resourceGuid');
    sourceIpRanges = registerOutput<List<Map<String, dynamic>>?>('sourceIpRanges');
    sourcePortRanges = registerOutput<List<Map<String, dynamic>>?>('sourcePortRanges');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
