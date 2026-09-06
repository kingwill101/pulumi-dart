import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_prefix_item_response.dart';
import 'admin_rule_args.dart';
import 'system_data_response.dart';

/// Network admin rule.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2021-02-01-preview, 2022-01-01, 2022-02-01-preview, 2022-04-01-preview, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-01-01-preview, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a admin rule with network group as source or destination
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var adminRule = new AzureNative.Network.AdminRule("adminRule", new()
///     {
///         Access = AzureNative.Network.SecurityConfigurationRuleAccess.Deny,
///         ConfigurationName = "myTestSecurityConfig",
///         Description = "This is Sample Admin Rule",
///         DestinationPortRanges = new[]
///         {
///             "22",
///         },
///         Destinations = new[]
///         {
///             new AzureNative.Network.Inputs.AddressPrefixItemArgs
///             {
///                 AddressPrefix = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/ng1",
///                 AddressPrefixType = "NetworkGroup",
///             },
///         },
///         Direction = AzureNative.Network.SecurityConfigurationRuleDirection.Inbound,
///         Kind = "Custom",
///         NetworkManagerName = "testNetworkManager",
///         Priority = 1,
///         Protocol = AzureNative.Network.SecurityConfigurationRuleProtocol.Tcp,
///         ResourceGroupName = "rg1",
///         RuleCollectionName = "testRuleCollection",
///         RuleName = "SampleAdminRule",
///         SourcePortRanges = new[]
///         {
///             "0-65535",
///         },
///         Sources = new[]
///         {
///             new AzureNative.Network.Inputs.AddressPrefixItemArgs
///             {
///                 AddressPrefix = "Internet",
///                 AddressPrefixType = AzureNative.Network.AddressPrefixType.ServiceTag,
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewAdminRule(ctx, "adminRule", &network.AdminRuleArgs{
/// 			Access:            pulumi.String(network.SecurityConfigurationRuleAccessDeny),
/// 			ConfigurationName: pulumi.String("myTestSecurityConfig"),
/// 			Description:       pulumi.String("This is Sample Admin Rule"),
/// 			DestinationPortRanges: pulumi.StringArray{
/// 				pulumi.String("22"),
/// 			},
/// 			Destinations: network.AddressPrefixItemArray{
/// 				&network.AddressPrefixItemArgs{
/// 					AddressPrefix:     pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/ng1"),
/// 					AddressPrefixType: pulumi.String("NetworkGroup"),
/// 				},
/// 			},
/// 			Direction:          pulumi.String(network.SecurityConfigurationRuleDirectionInbound),
/// 			Kind:               pulumi.String("Custom"),
/// 			NetworkManagerName: pulumi.String("testNetworkManager"),
/// 			Priority:           pulumi.Int(1),
/// 			Protocol:           pulumi.String(network.SecurityConfigurationRuleProtocolTcp),
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			RuleCollectionName: pulumi.String("testRuleCollection"),
/// 			RuleName:           pulumi.String("SampleAdminRule"),
/// 			SourcePortRanges: pulumi.StringArray{
/// 				pulumi.String("0-65535"),
/// 			},
/// 			Sources: network.AddressPrefixItemArray{
/// 				&network.AddressPrefixItemArgs{
/// 					AddressPrefix:     pulumi.String("Internet"),
/// 					AddressPrefixType: pulumi.String(network.AddressPrefixTypeServiceTag),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_network_adminrule" "adminRule" {
///   access                  = "Deny"
///   configuration_name      = "myTestSecurityConfig"
///   description             = "This is Sample Admin Rule"
///   destination_port_ranges = ["22"]
///   destinations {
///     address_prefix      = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/ng1"
///     address_prefix_type = "NetworkGroup"
///   }
///   direction            = "Inbound"
///   kind                 = "Custom"
///   network_manager_name = "testNetworkManager"
///   priority             = 1
///   protocol             = "Tcp"
///   resource_group_name  = "rg1"
///   rule_collection_name = "testRuleCollection"
///   rule_name            = "SampleAdminRule"
///   source_port_ranges   = ["0-65535"]
///   sources {
///     address_prefix      = "Internet"
///     address_prefix_type = "ServiceTag"
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
/// import com.pulumi.azurenative.network.AdminRule;
/// import com.pulumi.azurenative.network.AdminRuleArgs;
/// import com.pulumi.azurenative.network.inputs.AddressPrefixItemArgs;
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
///         var adminRule = new AdminRule("adminRule", AdminRuleArgs.builder()
///             .access("Deny")
///             .configurationName("myTestSecurityConfig")
///             .description("This is Sample Admin Rule")
///             .destinationPortRanges("22")
///             .destinations(AddressPrefixItemArgs.builder()
///                 .addressPrefix("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/ng1")
///                 .addressPrefixType("NetworkGroup")
///                 .build())
///             .direction("Inbound")
///             .kind("Custom")
///             .networkManagerName("testNetworkManager")
///             .priority(1)
///             .protocol("Tcp")
///             .resourceGroupName("rg1")
///             .ruleCollectionName("testRuleCollection")
///             .ruleName("SampleAdminRule")
///             .sourcePortRanges("0-65535")
///             .sources(AddressPrefixItemArgs.builder()
///                 .addressPrefix("Internet")
///                 .addressPrefixType("ServiceTag")
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
/// const adminRule = new azure_native.network.AdminRule("adminRule", {
///     access: azure_native.network.SecurityConfigurationRuleAccess.Deny,
///     configurationName: "myTestSecurityConfig",
///     description: "This is Sample Admin Rule",
///     destinationPortRanges: ["22"],
///     destinations: [{
///         addressPrefix: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/ng1",
///         addressPrefixType: "NetworkGroup",
///     }],
///     direction: azure_native.network.SecurityConfigurationRuleDirection.Inbound,
///     kind: "Custom",
///     networkManagerName: "testNetworkManager",
///     priority: 1,
///     protocol: azure_native.network.SecurityConfigurationRuleProtocol.Tcp,
///     resourceGroupName: "rg1",
///     ruleCollectionName: "testRuleCollection",
///     ruleName: "SampleAdminRule",
///     sourcePortRanges: ["0-65535"],
///     sources: [{
///         addressPrefix: "Internet",
///         addressPrefixType: azure_native.network.AddressPrefixType.ServiceTag,
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// admin_rule = azure_native.network.AdminRule("adminRule",
///     access=azure_native.network.SecurityConfigurationRuleAccess.DENY,
///     configuration_name="myTestSecurityConfig",
///     description="This is Sample Admin Rule",
///     destination_port_ranges=["22"],
///     destinations=[{
///         "address_prefix": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/ng1",
///         "address_prefix_type": "NetworkGroup",
///     }],
///     direction=azure_native.network.SecurityConfigurationRuleDirection.INBOUND,
///     kind="Custom",
///     network_manager_name="testNetworkManager",
///     priority=1,
///     protocol=azure_native.network.SecurityConfigurationRuleProtocol.TCP,
///     resource_group_name="rg1",
///     rule_collection_name="testRuleCollection",
///     rule_name="SampleAdminRule",
///     source_port_ranges=["0-65535"],
///     sources=[{
///         "address_prefix": "Internet",
///         "address_prefix_type": azure_native.network.AddressPrefixType.SERVICE_TAG,
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   adminRule:
///     type: azure-native:network:AdminRule
///     properties:
///       access: Deny
///       configurationName: myTestSecurityConfig
///       description: This is Sample Admin Rule
///       destinationPortRanges:
///         - '22'
///       destinations:
///         - addressPrefix: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/ng1
///           addressPrefixType: NetworkGroup
///       direction: Inbound
///       kind: Custom
///       networkManagerName: testNetworkManager
///       priority: 1
///       protocol: Tcp
///       resourceGroupName: rg1
///       ruleCollectionName: testRuleCollection
///       ruleName: SampleAdminRule
///       sourcePortRanges:
///         - 0-65535
///       sources:
///         - addressPrefix: Internet
///           addressPrefixType: ServiceTag
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create an admin rule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var adminRule = new AzureNative.Network.AdminRule("adminRule", new()
///     {
///         Access = AzureNative.Network.SecurityConfigurationRuleAccess.Deny,
///         ConfigurationName = "myTestSecurityConfig",
///         Description = "This is Sample Admin Rule",
///         DestinationPortRanges = new[]
///         {
///             "22",
///         },
///         Destinations = new[]
///         {
///             new AzureNative.Network.Inputs.AddressPrefixItemArgs
///             {
///                 AddressPrefix = "*",
///                 AddressPrefixType = AzureNative.Network.AddressPrefixType.IPPrefix,
///             },
///         },
///         Direction = AzureNative.Network.SecurityConfigurationRuleDirection.Inbound,
///         Kind = "Custom",
///         NetworkManagerName = "testNetworkManager",
///         Priority = 1,
///         Protocol = AzureNative.Network.SecurityConfigurationRuleProtocol.Tcp,
///         ResourceGroupName = "rg1",
///         RuleCollectionName = "testRuleCollection",
///         RuleName = "SampleAdminRule",
///         SourcePortRanges = new[]
///         {
///             "0-65535",
///         },
///         Sources = new[]
///         {
///             new AzureNative.Network.Inputs.AddressPrefixItemArgs
///             {
///                 AddressPrefix = "Internet",
///                 AddressPrefixType = AzureNative.Network.AddressPrefixType.ServiceTag,
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewAdminRule(ctx, "adminRule", &network.AdminRuleArgs{
/// 			Access:            pulumi.String(network.SecurityConfigurationRuleAccessDeny),
/// 			ConfigurationName: pulumi.String("myTestSecurityConfig"),
/// 			Description:       pulumi.String("This is Sample Admin Rule"),
/// 			DestinationPortRanges: pulumi.StringArray{
/// 				pulumi.String("22"),
/// 			},
/// 			Destinations: network.AddressPrefixItemArray{
/// 				&network.AddressPrefixItemArgs{
/// 					AddressPrefix:     pulumi.String("*"),
/// 					AddressPrefixType: pulumi.String(network.AddressPrefixTypeIPPrefix),
/// 				},
/// 			},
/// 			Direction:          pulumi.String(network.SecurityConfigurationRuleDirectionInbound),
/// 			Kind:               pulumi.String("Custom"),
/// 			NetworkManagerName: pulumi.String("testNetworkManager"),
/// 			Priority:           pulumi.Int(1),
/// 			Protocol:           pulumi.String(network.SecurityConfigurationRuleProtocolTcp),
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			RuleCollectionName: pulumi.String("testRuleCollection"),
/// 			RuleName:           pulumi.String("SampleAdminRule"),
/// 			SourcePortRanges: pulumi.StringArray{
/// 				pulumi.String("0-65535"),
/// 			},
/// 			Sources: network.AddressPrefixItemArray{
/// 				&network.AddressPrefixItemArgs{
/// 					AddressPrefix:     pulumi.String("Internet"),
/// 					AddressPrefixType: pulumi.String(network.AddressPrefixTypeServiceTag),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_network_adminrule" "adminRule" {
///   access                  = "Deny"
///   configuration_name      = "myTestSecurityConfig"
///   description             = "This is Sample Admin Rule"
///   destination_port_ranges = ["22"]
///   destinations {
///     address_prefix      = "*"
///     address_prefix_type = "IPPrefix"
///   }
///   direction            = "Inbound"
///   kind                 = "Custom"
///   network_manager_name = "testNetworkManager"
///   priority             = 1
///   protocol             = "Tcp"
///   resource_group_name  = "rg1"
///   rule_collection_name = "testRuleCollection"
///   rule_name            = "SampleAdminRule"
///   source_port_ranges   = ["0-65535"]
///   sources {
///     address_prefix      = "Internet"
///     address_prefix_type = "ServiceTag"
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
/// import com.pulumi.azurenative.network.AdminRule;
/// import com.pulumi.azurenative.network.AdminRuleArgs;
/// import com.pulumi.azurenative.network.inputs.AddressPrefixItemArgs;
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
///         var adminRule = new AdminRule("adminRule", AdminRuleArgs.builder()
///             .access("Deny")
///             .configurationName("myTestSecurityConfig")
///             .description("This is Sample Admin Rule")
///             .destinationPortRanges("22")
///             .destinations(AddressPrefixItemArgs.builder()
///                 .addressPrefix("*")
///                 .addressPrefixType("IPPrefix")
///                 .build())
///             .direction("Inbound")
///             .kind("Custom")
///             .networkManagerName("testNetworkManager")
///             .priority(1)
///             .protocol("Tcp")
///             .resourceGroupName("rg1")
///             .ruleCollectionName("testRuleCollection")
///             .ruleName("SampleAdminRule")
///             .sourcePortRanges("0-65535")
///             .sources(AddressPrefixItemArgs.builder()
///                 .addressPrefix("Internet")
///                 .addressPrefixType("ServiceTag")
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
/// const adminRule = new azure_native.network.AdminRule("adminRule", {
///     access: azure_native.network.SecurityConfigurationRuleAccess.Deny,
///     configurationName: "myTestSecurityConfig",
///     description: "This is Sample Admin Rule",
///     destinationPortRanges: ["22"],
///     destinations: [{
///         addressPrefix: "*",
///         addressPrefixType: azure_native.network.AddressPrefixType.IPPrefix,
///     }],
///     direction: azure_native.network.SecurityConfigurationRuleDirection.Inbound,
///     kind: "Custom",
///     networkManagerName: "testNetworkManager",
///     priority: 1,
///     protocol: azure_native.network.SecurityConfigurationRuleProtocol.Tcp,
///     resourceGroupName: "rg1",
///     ruleCollectionName: "testRuleCollection",
///     ruleName: "SampleAdminRule",
///     sourcePortRanges: ["0-65535"],
///     sources: [{
///         addressPrefix: "Internet",
///         addressPrefixType: azure_native.network.AddressPrefixType.ServiceTag,
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// admin_rule = azure_native.network.AdminRule("adminRule",
///     access=azure_native.network.SecurityConfigurationRuleAccess.DENY,
///     configuration_name="myTestSecurityConfig",
///     description="This is Sample Admin Rule",
///     destination_port_ranges=["22"],
///     destinations=[{
///         "address_prefix": "*",
///         "address_prefix_type": azure_native.network.AddressPrefixType.IP_PREFIX,
///     }],
///     direction=azure_native.network.SecurityConfigurationRuleDirection.INBOUND,
///     kind="Custom",
///     network_manager_name="testNetworkManager",
///     priority=1,
///     protocol=azure_native.network.SecurityConfigurationRuleProtocol.TCP,
///     resource_group_name="rg1",
///     rule_collection_name="testRuleCollection",
///     rule_name="SampleAdminRule",
///     source_port_ranges=["0-65535"],
///     sources=[{
///         "address_prefix": "Internet",
///         "address_prefix_type": azure_native.network.AddressPrefixType.SERVICE_TAG,
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   adminRule:
///     type: azure-native:network:AdminRule
///     properties:
///       access: Deny
///       configurationName: myTestSecurityConfig
///       description: This is Sample Admin Rule
///       destinationPortRanges:
///         - '22'
///       destinations:
///         - addressPrefix: '*'
///           addressPrefixType: IPPrefix
///       direction: Inbound
///       kind: Custom
///       networkManagerName: testNetworkManager
///       priority: 1
///       protocol: Tcp
///       resourceGroupName: rg1
///       ruleCollectionName: testRuleCollection
///       ruleName: SampleAdminRule
///       sourcePortRanges:
///         - 0-65535
///       sources:
///         - addressPrefix: Internet
///           addressPrefixType: ServiceTag
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
/// $ pulumi import azure-native:network:AdminRule SampleAdminRule /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/securityAdminConfigurations/{configurationName}/ruleCollections/{ruleCollectionName}/rules/{ruleName}
/// ```
class AdminRule extends pulumi.CustomResource {
  /// Indicates the access allowed for this particular rule
  late final pulumi.Output<String> access;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A description for this rule. Restricted to 140 chars.
  late final pulumi.Output<String?> description;
  /// The destination port ranges.
  late final pulumi.Output<List<String>?> destinationPortRanges;
  /// The destination address prefixes. CIDR or destination IP ranges.
  late final pulumi.Output<List<AddressPrefixItemResponse>?> destinations;
  /// Indicates if the traffic matched against the rule in inbound or outbound.
  late final pulumi.Output<String> direction;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Whether the rule is custom or default.
  /// Expected value is 'Custom'.
  late final pulumi.Output<String> kind;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The priority of the rule. The value can be between 1 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  late final pulumi.Output<int> priority;
  /// Network protocol this rule applies to.
  late final pulumi.Output<String> protocol;
  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Unique identifier for this resource.
  late final pulumi.Output<String> resourceGuid;
  /// The source port ranges.
  late final pulumi.Output<List<String>?> sourcePortRanges;
  /// The CIDR or source IP ranges.
  late final pulumi.Output<List<AddressPrefixItemResponse>?> sources;
  /// The system metadata related to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [AdminRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AdminRule]. {@macro pulumi_network_admin_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AdminRule(
    String name, {
    AdminRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:AdminRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    access = registerOutput<String>('access');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    destinationPortRanges = registerOutput<List<String>?>('destinationPortRanges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    destinations = registerOutput<List<AddressPrefixItemResponse>?>('destinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AddressPrefixItemResponse>(guardedValue, (value) => AddressPrefixItemResponse.fromMap((value as Map).cast<String, dynamic>())); });
    direction = registerOutput<String>('direction');
    etag = registerOutput<String>('etag');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    protocol = registerOutput<String>('protocol');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
    sourcePortRanges = registerOutput<List<String>?>('sourcePortRanges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    sources = registerOutput<List<AddressPrefixItemResponse>?>('sources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AddressPrefixItemResponse>(guardedValue, (value) => AddressPrefixItemResponse.fromMap((value as Map).cast<String, dynamic>())); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [AdminRule] resource.
  AdminRule.reference(String urn)
    : super(
        'azure-native:network:AdminRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    access = registerOutput<String>('access');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    destinationPortRanges = registerOutput<List<String>?>('destinationPortRanges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    destinations = registerOutput<List<AddressPrefixItemResponse>?>('destinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AddressPrefixItemResponse>(guardedValue, (value) => AddressPrefixItemResponse.fromMap((value as Map).cast<String, dynamic>())); });
    direction = registerOutput<String>('direction');
    etag = registerOutput<String>('etag');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    protocol = registerOutput<String>('protocol');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
    sourcePortRanges = registerOutput<List<String>?>('sourcePortRanges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    sources = registerOutput<List<AddressPrefixItemResponse>?>('sources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AddressPrefixItemResponse>(guardedValue, (value) => AddressPrefixItemResponse.fromMap((value as Map).cast<String, dynamic>())); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
