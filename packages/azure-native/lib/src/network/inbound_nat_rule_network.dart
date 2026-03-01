import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_nat_rule_args.dart';
import 'network_interface_ipconfiguration_response.dart';
import 'sub_resource_response.dart';

/// Inbound NAT rule of the load balancer.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### InboundNatRuleCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var inboundNatRule = new AzureNative.Network.InboundNatRule("inboundNatRule", new()
///     {
///         BackendPort = 3389,
///         EnableFloatingIP = false,
///         EnableTcpReset = false,
///         FrontendIPConfiguration = new AzureNative.Network.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/testrg/providers/Microsoft.Network/loadBalancers/lb1/frontendIPConfigurations/ip1",
///         },
///         FrontendPort = 3390,
///         IdleTimeoutInMinutes = 4,
///         InboundNatRuleName = "natRule1.1",
///         LoadBalancerName = "lb1",
///         Protocol = AzureNative.Network.TransportProtocol.Tcp,
///         ResourceGroupName = "testrg",
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
/// 		_, err := network.NewInboundNatRule(ctx, "inboundNatRule", &network.InboundNatRuleArgs{
/// 			BackendPort:      pulumi.Int(3389),
/// 			EnableFloatingIP: pulumi.Bool(false),
/// 			EnableTcpReset:   pulumi.Bool(false),
/// 			FrontendIPConfiguration: &network.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/testrg/providers/Microsoft.Network/loadBalancers/lb1/frontendIPConfigurations/ip1"),
/// 			},
/// 			FrontendPort:         pulumi.Int(3390),
/// 			IdleTimeoutInMinutes: pulumi.Int(4),
/// 			InboundNatRuleName:   pulumi.String("natRule1.1"),
/// 			LoadBalancerName:     pulumi.String("lb1"),
/// 			Protocol:             pulumi.String(network.TransportProtocolTcp),
/// 			ResourceGroupName:    pulumi.String("testrg"),
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
/// import com.pulumi.azurenative.network.InboundNatRule;
/// import com.pulumi.azurenative.network.InboundNatRuleArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
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
///         var inboundNatRule = new InboundNatRule("inboundNatRule", InboundNatRuleArgs.builder()
///             .backendPort(3389)
///             .enableFloatingIP(false)
///             .enableTcpReset(false)
///             .frontendIPConfiguration(SubResourceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/testrg/providers/Microsoft.Network/loadBalancers/lb1/frontendIPConfigurations/ip1")
///                 .build())
///             .frontendPort(3390)
///             .idleTimeoutInMinutes(4)
///             .inboundNatRuleName("natRule1.1")
///             .loadBalancerName("lb1")
///             .protocol("Tcp")
///             .resourceGroupName("testrg")
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
/// const inboundNatRule = new azure_native.network.InboundNatRule("inboundNatRule", {
///     backendPort: 3389,
///     enableFloatingIP: false,
///     enableTcpReset: false,
///     frontendIPConfiguration: {
///         id: "/subscriptions/subid/resourceGroups/testrg/providers/Microsoft.Network/loadBalancers/lb1/frontendIPConfigurations/ip1",
///     },
///     frontendPort: 3390,
///     idleTimeoutInMinutes: 4,
///     inboundNatRuleName: "natRule1.1",
///     loadBalancerName: "lb1",
///     protocol: azure_native.network.TransportProtocol.Tcp,
///     resourceGroupName: "testrg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// inbound_nat_rule = azure_native.network.InboundNatRule("inboundNatRule",
///     backend_port=3389,
///     enable_floating_ip=False,
///     enable_tcp_reset=False,
///     frontend_ip_configuration={
///         "id": "/subscriptions/subid/resourceGroups/testrg/providers/Microsoft.Network/loadBalancers/lb1/frontendIPConfigurations/ip1",
///     },
///     frontend_port=3390,
///     idle_timeout_in_minutes=4,
///     inbound_nat_rule_name="natRule1.1",
///     load_balancer_name="lb1",
///     protocol=azure_native.network.TransportProtocol.TCP,
///     resource_group_name="testrg")
///
/// ```
///
/// ```yaml
/// resources:
///   inboundNatRule:
///     type: azure-native:network:InboundNatRule
///     properties:
///       backendPort: 3389
///       enableFloatingIP: false
///       enableTcpReset: false
///       frontendIPConfiguration:
///         id: /subscriptions/subid/resourceGroups/testrg/providers/Microsoft.Network/loadBalancers/lb1/frontendIPConfigurations/ip1
///       frontendPort: 3390
///       idleTimeoutInMinutes: 4
///       inboundNatRuleName: natRule1.1
///       loadBalancerName: lb1
///       protocol: Tcp
///       resourceGroupName: testrg
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
/// $ pulumi import azure-native:network:InboundNatRule natRule1.1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/loadBalancers/{loadBalancerName}/inboundNatRules/{inboundNatRuleName}
/// ```
class InboundNatRuleNetwork extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A reference to backendAddressPool resource.
  late final pulumi.Output<SubResourceResponse?> backendAddressPool;
  /// A reference to a private IP address defined on a network interface of a VM. Traffic sent to the frontend port of each of the frontend IP configurations is forwarded to the backend IP.
  late final pulumi.Output<NetworkInterfaceIPConfigurationResponse> backendIPConfiguration;
  /// The port used for the internal endpoint. Acceptable values range from 1 to 65535.
  late final pulumi.Output<int?> backendPort;
  /// Configures a virtual machine's endpoint for the floating IP capability required to configure a SQL AlwaysOn Availability Group. This setting is required when using the SQL AlwaysOn Availability Groups in SQL server. This setting can't be changed after you create the endpoint.
  late final pulumi.Output<bool?> enableFloatingIP;
  /// Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP.
  late final pulumi.Output<bool?> enableTcpReset;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// A reference to frontend IP addresses.
  late final pulumi.Output<SubResourceResponse?> frontendIPConfiguration;
  /// The port for the external endpoint. Port numbers for each rule must be unique within the Load Balancer. Acceptable values range from 1 to 65534.
  late final pulumi.Output<int?> frontendPort;
  /// The port range end for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeStart. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534.
  late final pulumi.Output<int?> frontendPortRangeEnd;
  /// The port range start for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeEnd. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534.
  late final pulumi.Output<int?> frontendPortRangeStart;
  /// The timeout for the TCP idle connection. The value can be set between 4 and 30 minutes. The default value is 4 minutes. This element is only used when the protocol is set to TCP.
  late final pulumi.Output<int?> idleTimeoutInMinutes;
  /// The name of the resource that is unique within the set of inbound NAT rules used by the load balancer. This name can be used to access the resource.
  late final pulumi.Output<String?> name;
  /// The reference to the transport protocol used by the load balancing rule.
  late final pulumi.Output<String?> protocol;
  /// The provisioning state of the inbound NAT rule resource.
  late final pulumi.Output<String> provisioningState;
  /// Type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [InboundNatRuleNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InboundNatRuleNetwork]. {@macro pulumi_network_inbound_nat_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InboundNatRuleNetwork(
    String name, {
    InboundNatRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:InboundNatRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.backendAddressPool = registerOutput<SubResourceResponse?>('backendAddressPool');
    this.backendIPConfiguration = registerOutput<NetworkInterfaceIPConfigurationResponse>('backendIPConfiguration');
    this.backendPort = registerOutput<int?>('backendPort');
    this.enableFloatingIP = registerOutput<bool?>('enableFloatingIP');
    this.enableTcpReset = registerOutput<bool?>('enableTcpReset');
    this.etag = registerOutput<String>('etag');
    this.frontendIPConfiguration = registerOutput<SubResourceResponse?>('frontendIPConfiguration');
    this.frontendPort = registerOutput<int?>('frontendPort');
    this.frontendPortRangeEnd = registerOutput<int?>('frontendPortRangeEnd');
    this.frontendPortRangeStart = registerOutput<int?>('frontendPortRangeStart');
    this.idleTimeoutInMinutes = registerOutput<int?>('idleTimeoutInMinutes');
    this.name = registerOutput<String?>('name');
    this.protocol = registerOutput<String?>('protocol');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.type = registerOutput<String>('type');
  }
}
