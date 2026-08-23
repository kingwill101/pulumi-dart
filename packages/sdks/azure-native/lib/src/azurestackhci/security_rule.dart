import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'security_rule_args.dart';
import 'system_data_response.dart';

/// Security Rule resource.
///
/// Uses Azure REST API version 2025-02-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-02-01-preview.
///
/// Other available API versions: 2024-02-01-preview, 2024-05-01-preview, 2024-07-15-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-06-01-preview, 2025-09-01-preview, 2026-02-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SecurityRulesCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var securityRule = new AzureNative.AzureStackHCI.SecurityRule("securityRule", new()
///     {
///         Access = AzureNative.AzureStackHCI.SecurityRuleAccess.Allow,
///         DestinationAddressPrefixes = new[]
///         {
///             "*",
///         },
///         DestinationPortRanges = new[]
///         {
///             "80",
///         },
///         Direction = AzureNative.AzureStackHCI.SecurityRuleDirection.Inbound,
///         ExtendedLocation = new AzureNative.AzureStackHCI.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///             Type = AzureNative.AzureStackHCI.ExtendedLocationTypes.CustomLocation,
///         },
///         NetworkSecurityGroupName = "testnsg",
///         Priority = 130,
///         Protocol = AzureNative.AzureStackHCI.SecurityRuleProtocol.Asterisk,
///         ResourceGroupName = "testrg",
///         SecurityRuleName = "rule1",
///         SourceAddressPrefixes = new[]
///         {
///             "*",
///         },
///         SourcePortRanges = new[]
///         {
///             "*",
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewSecurityRule(ctx, "securityRule", &azurestackhci.SecurityRuleArgs{
/// 			Access: pulumi.String(azurestackhci.SecurityRuleAccessAllow),
/// 			DestinationAddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("*"),
/// 			},
/// 			DestinationPortRanges: pulumi.StringArray{
/// 				pulumi.String("80"),
/// 			},
/// 			Direction: pulumi.String(azurestackhci.SecurityRuleDirectionInbound),
/// 			ExtendedLocation: &azurestackhci.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"),
/// 				Type: pulumi.String(azurestackhci.ExtendedLocationTypesCustomLocation),
/// 			},
/// 			NetworkSecurityGroupName: pulumi.String("testnsg"),
/// 			Priority:                 pulumi.Int(130),
/// 			Protocol:                 pulumi.String(azurestackhci.SecurityRuleProtocolAsterisk),
/// 			ResourceGroupName:        pulumi.String("testrg"),
/// 			SecurityRuleName:         pulumi.String("rule1"),
/// 			SourceAddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("*"),
/// 			},
/// 			SourcePortRanges: pulumi.StringArray{
/// 				pulumi.String("*"),
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
/// resource "azure-native_azurestackhci_securityrule" "securityRule" {
///   access                       = "Allow"
///   destination_address_prefixes = ["*"]
///   destination_port_ranges      = ["80"]
///   direction                    = "Inbound"
///   extended_location = {
///     name = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"
///     type = "CustomLocation"
///   }
///   network_security_group_name = "testnsg"
///   priority                    = 130
///   protocol                    = "*"
///   resource_group_name         = "testrg"
///   security_rule_name          = "rule1"
///   source_address_prefixes     = ["*"]
///   source_port_ranges          = ["*"]
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
/// import com.pulumi.azurenative.azurestackhci.SecurityRule;
/// import com.pulumi.azurenative.azurestackhci.SecurityRuleArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.ExtendedLocationArgs;
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
///         var securityRule = new SecurityRule("securityRule", SecurityRuleArgs.builder()
///             .access("Allow")
///             .destinationAddressPrefixes("*")
///             .destinationPortRanges("80")
///             .direction("Inbound")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location")
///                 .type("CustomLocation")
///                 .build())
///             .networkSecurityGroupName("testnsg")
///             .priority(130)
///             .protocol("*")
///             .resourceGroupName("testrg")
///             .securityRuleName("rule1")
///             .sourceAddressPrefixes("*")
///             .sourcePortRanges("*")
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
/// const securityRule = new azure_native.azurestackhci.SecurityRule("securityRule", {
///     access: azure_native.azurestackhci.SecurityRuleAccess.Allow,
///     destinationAddressPrefixes: ["*"],
///     destinationPortRanges: ["80"],
///     direction: azure_native.azurestackhci.SecurityRuleDirection.Inbound,
///     extendedLocation: {
///         name: "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         type: azure_native.azurestackhci.ExtendedLocationTypes.CustomLocation,
///     },
///     networkSecurityGroupName: "testnsg",
///     priority: 130,
///     protocol: azure_native.azurestackhci.SecurityRuleProtocol.Asterisk,
///     resourceGroupName: "testrg",
///     securityRuleName: "rule1",
///     sourceAddressPrefixes: ["*"],
///     sourcePortRanges: ["*"],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// security_rule = azure_native.azurestackhci.SecurityRule("securityRule",
///     access=azure_native.azurestackhci.SecurityRuleAccess.ALLOW,
///     destination_address_prefixes=["*"],
///     destination_port_ranges=["80"],
///     direction=azure_native.azurestackhci.SecurityRuleDirection.INBOUND,
///     extended_location={
///         "name": "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         "type": azure_native.azurestackhci.ExtendedLocationTypes.CUSTOM_LOCATION,
///     },
///     network_security_group_name="testnsg",
///     priority=130,
///     protocol=azure_native.azurestackhci.SecurityRuleProtocol.ASTERISK,
///     resource_group_name="testrg",
///     security_rule_name="rule1",
///     source_address_prefixes=["*"],
///     source_port_ranges=["*"])
///
/// ```
///
/// ```yaml
/// resources:
///   securityRule:
///     type: azure-native:azurestackhci:SecurityRule
///     properties:
///       access: Allow
///       destinationAddressPrefixes:
///         - '*'
///       destinationPortRanges:
///         - '80'
///       direction: Inbound
///       extendedLocation:
///         name: /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location
///         type: CustomLocation
///       networkSecurityGroupName: testnsg
///       priority: 130
///       protocol: '*'
///       resourceGroupName: testrg
///       securityRuleName: rule1
///       sourceAddressPrefixes:
///         - '*'
///       sourcePortRanges:
///         - '*'
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
/// $ pulumi import azure-native:azurestackhci:SecurityRule rule1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureStackHCI/networkSecurityGroups/{networkSecurityGroupName}/securityRules/{securityRuleName}
/// ```
class SecurityRule extends pulumi.CustomResource {
  /// The network traffic is allowed or denied.
  late final pulumi.Output<String> access;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A description for this rule. Restricted to 140 chars.
  late final pulumi.Output<String?> description;
  /// The destination address prefixes. CIDR or destination IP ranges.
  late final pulumi.Output<List<String>?> destinationAddressPrefixes;
  /// The destination port ranges. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  late final pulumi.Output<List<String>?> destinationPortRanges;
  /// The direction of the rule. The direction specifies if rule will be evaluated on incoming or outgoing traffic.
  late final pulumi.Output<String> direction;
  /// The extendedLocation of the resource.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  late final pulumi.Output<int> priority;
  /// Network protocol this rule applies to.
  late final pulumi.Output<String> protocol;
  /// Provisioning state of the SR
  late final pulumi.Output<String> provisioningState;
  /// The CIDR or source IP ranges.
  late final pulumi.Output<List<String>?> sourceAddressPrefixes;
  /// The source port ranges. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  late final pulumi.Output<List<String>?> sourcePortRanges;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SecurityRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityRule]. {@macro pulumi_azurestackhci_security_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityRule(
    String name, {
    SecurityRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurestackhci:SecurityRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    access = registerOutput<String>('access');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    destinationAddressPrefixes = registerOutput<List<String>?>('destinationAddressPrefixes');
    destinationPortRanges = registerOutput<List<String>?>('destinationPortRanges');
    direction = registerOutput<String>('direction');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    protocol = registerOutput<String>('protocol');
    provisioningState = registerOutput<String>('provisioningState');
    sourceAddressPrefixes = registerOutput<List<String>?>('sourceAddressPrefixes');
    sourcePortRanges = registerOutput<List<String>?>('sourcePortRanges');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
