import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space_response.dart';
import 'bgp_settings_response.dart';
import 'local_network_gateway_args.dart';

/// A common class for general resource information.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateLocalNetworkGateway
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var localNetworkGateway = new AzureNative.Network.LocalNetworkGateway("localNetworkGateway", new()
///     {
///         Fqdn = "site1.contoso.com",
///         GatewayIpAddress = "11.12.13.14",
///         LocalNetworkAddressSpace = new AzureNative.Network.Inputs.AddressSpaceArgs
///         {
///             AddressPrefixes = new[]
///             {
///                 "10.1.0.0/16",
///             },
///         },
///         LocalNetworkGatewayName = "localgw",
///         Location = "Central US",
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
/// 		_, err := network.NewLocalNetworkGateway(ctx, "localNetworkGateway", &network.LocalNetworkGatewayArgs{
/// 			Fqdn:             pulumi.String("site1.contoso.com"),
/// 			GatewayIpAddress: pulumi.String("11.12.13.14"),
/// 			LocalNetworkAddressSpace: &network.AddressSpaceArgs{
/// 				AddressPrefixes: pulumi.StringArray{
/// 					pulumi.String("10.1.0.0/16"),
/// 				},
/// 			},
/// 			LocalNetworkGatewayName: pulumi.String("localgw"),
/// 			Location:                pulumi.String("Central US"),
/// 			ResourceGroupName:       pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.network.LocalNetworkGateway;
/// import com.pulumi.azurenative.network.LocalNetworkGatewayArgs;
/// import com.pulumi.azurenative.network.inputs.AddressSpaceArgs;
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
///         var localNetworkGateway = new LocalNetworkGateway("localNetworkGateway", LocalNetworkGatewayArgs.builder()
///             .fqdn("site1.contoso.com")
///             .gatewayIpAddress("11.12.13.14")
///             .localNetworkAddressSpace(AddressSpaceArgs.builder()
///                 .addressPrefixes("10.1.0.0/16")
///                 .build())
///             .localNetworkGatewayName("localgw")
///             .location("Central US")
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
/// const localNetworkGateway = new azure_native.network.LocalNetworkGateway("localNetworkGateway", {
///     fqdn: "site1.contoso.com",
///     gatewayIpAddress: "11.12.13.14",
///     localNetworkAddressSpace: {
///         addressPrefixes: ["10.1.0.0/16"],
///     },
///     localNetworkGatewayName: "localgw",
///     location: "Central US",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// local_network_gateway = azure_native.network.LocalNetworkGateway("localNetworkGateway",
///     fqdn="site1.contoso.com",
///     gateway_ip_address="11.12.13.14",
///     local_network_address_space={
///         "address_prefixes": ["10.1.0.0/16"],
///     },
///     local_network_gateway_name="localgw",
///     location="Central US",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   localNetworkGateway:
///     type: azure-native:network:LocalNetworkGateway
///     properties:
///       fqdn: site1.contoso.com
///       gatewayIpAddress: 11.12.13.14
///       localNetworkAddressSpace:
///         addressPrefixes:
///           - 10.1.0.0/16
///       localNetworkGatewayName: localgw
///       location: Central US
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
/// $ pulumi import azure-native:network:LocalNetworkGateway localgw /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/localNetworkGateways/{localNetworkGatewayName}
/// ```
class LocalNetworkGatewayNetwork extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Local network gateway's BGP speaker settings.
  late final pulumi.Output<BgpSettingsResponse?> bgpSettings;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// FQDN of local network gateway.
  late final pulumi.Output<String?> fqdn;
  /// IP address of local network gateway.
  late final pulumi.Output<String?> gatewayIpAddress;
  /// Local network site address space.
  late final pulumi.Output<AddressSpaceResponse?> localNetworkAddressSpace;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The provisioning state of the local network gateway resource.
  late final pulumi.Output<String> provisioningState;
  /// The resource GUID property of the local network gateway resource.
  late final pulumi.Output<String> resourceGuid;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [LocalNetworkGatewayNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LocalNetworkGatewayNetwork]. {@macro pulumi_network_local_network_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LocalNetworkGatewayNetwork(
    String name, {
    LocalNetworkGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:LocalNetworkGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.bgpSettings = registerOutput<BgpSettingsResponse?>('bgpSettings');
    this.etag = registerOutput<String>('etag');
    this.fqdn = registerOutput<String?>('fqdn');
    this.gatewayIpAddress = registerOutput<String?>('gatewayIpAddress');
    this.localNetworkAddressSpace = registerOutput<AddressSpaceResponse?>('localNetworkAddressSpace');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.resourceGuid = registerOutput<String>('resourceGuid');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
