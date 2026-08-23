import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_network_setting_args.dart';
import 'managed_network_settings_properties_response.dart';
import 'system_data_response.dart';

/// Concrete proxy resource types can be created by aliasing this type using a specific property type.
///
/// Uses Azure REST API version 2026-01-15-preview.
///
/// Other available API versions: 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Put ManagedNetworkSettings
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedNetworkSetting = new AzureNative.CognitiveServices.ManagedNetworkSetting("managedNetworkSetting", new()
///     {
///         AccountName = "cognitive-account-name",
///         ManagedNetworkName = "default",
///         Properties = new AzureNative.CognitiveServices.Inputs.ManagedNetworkSettingsPropertiesArgs
///         {
///             ManagedNetwork = new AzureNative.CognitiveServices.Inputs.ManagedNetworkSettingsExArgs
///             {
///                 FirewallSku = AzureNative.CognitiveServices.FirewallSku.Standard,
///                 IsolationMode = AzureNative.CognitiveServices.IsolationMode.AllowOnlyApprovedOutbound,
///                 OutboundRules =
///                 {
///                     { "rule_name_1", new AzureNative.CognitiveServices.Inputs.FqdnOutboundRuleArgs
///                     {
///                         Category = AzureNative.CognitiveServices.RuleCategory.UserDefined,
///                         Destination = "destination_endpoint",
///                         Type = "FQDN",
///                     } },
///                 },
///             },
///         },
///         ResourceGroupName = "test-rg",
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
/// 	cognitiveservices "github.com/pulumi/pulumi-azure-native-sdk/cognitiveservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cognitiveservices.NewManagedNetworkSetting(ctx, "managedNetworkSetting", &cognitiveservices.ManagedNetworkSettingArgs{
/// 			AccountName:        pulumi.String("cognitive-account-name"),
/// 			ManagedNetworkName: pulumi.String("default"),
/// 			Properties: &cognitiveservices.ManagedNetworkSettingsPropertiesArgs{
/// 				ManagedNetwork: &cognitiveservices.ManagedNetworkSettingsExArgs{
/// 					FirewallSku:   pulumi.String(cognitiveservices.FirewallSkuStandard),
/// 					IsolationMode: pulumi.String(cognitiveservices.IsolationModeAllowOnlyApprovedOutbound),
/// 					OutboundRules: pulumi.Map{
/// 						"rule_name_1": cognitiveservices.FqdnOutboundRule{
/// 							Category:    cognitiveservices.RuleCategoryUserDefined,
/// 							Destination: "destination_endpoint",
/// 							Type:        "FQDN",
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("test-rg"),
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
/// resource "azure-native_cognitiveservices_managednetworksetting" "managedNetworkSetting" {
///   account_name         = "cognitive-account-name"
///   managed_network_name = "default"
///   properties = {
///     managed_network = {
///       firewall_sku   = "Standard"
///       isolation_mode = "AllowOnlyApprovedOutbound"
///       outbound_rules = {
///         "rule_name_1" = {
///           "category"    = "UserDefined"
///           "destination" = "destination_endpoint"
///           "type"        = "FQDN"
///         }
///       }
///     }
///   }
///   resource_group_name = "test-rg"
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
/// import com.pulumi.azurenative.cognitiveservices.ManagedNetworkSetting;
/// import com.pulumi.azurenative.cognitiveservices.ManagedNetworkSettingArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.ManagedNetworkSettingsPropertiesArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.ManagedNetworkSettingsExArgs;
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
///         var managedNetworkSetting = new ManagedNetworkSetting("managedNetworkSetting", ManagedNetworkSettingArgs.builder()
///             .accountName("cognitive-account-name")
///             .managedNetworkName("default")
///             .properties(ManagedNetworkSettingsPropertiesArgs.builder()
///                 .managedNetwork(ManagedNetworkSettingsExArgs.builder()
///                     .firewallSku("Standard")
///                     .isolationMode("AllowOnlyApprovedOutbound")
///                     .outboundRules(Map.of("rule_name_1", FqdnOutboundRuleArgs.builder()
///                         .category("UserDefined")
///                         .destination("destination_endpoint")
///                         .type("FQDN")
///                         .build()))
///                     .build())
///                 .build())
///             .resourceGroupName("test-rg")
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
/// const managedNetworkSetting = new azure_native.cognitiveservices.ManagedNetworkSetting("managedNetworkSetting", {
///     accountName: "cognitive-account-name",
///     managedNetworkName: "default",
///     properties: {
///         managedNetwork: {
///             firewallSku: azure_native.cognitiveservices.FirewallSku.Standard,
///             isolationMode: azure_native.cognitiveservices.IsolationMode.AllowOnlyApprovedOutbound,
///             outboundRules: {
///                 rule_name_1: {
///                     category: azure_native.cognitiveservices.RuleCategory.UserDefined,
///                     destination: "destination_endpoint",
///                     type: "FQDN",
///                 },
///             },
///         },
///     },
///     resourceGroupName: "test-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_network_setting = azure_native.cognitiveservices.ManagedNetworkSetting("managedNetworkSetting",
///     account_name="cognitive-account-name",
///     managed_network_name="default",
///     properties={
///         "managed_network": {
///             "firewall_sku": azure_native.cognitiveservices.FirewallSku.STANDARD,
///             "isolation_mode": azure_native.cognitiveservices.IsolationMode.ALLOW_ONLY_APPROVED_OUTBOUND,
///             "outbound_rules": {
///                 "rule_name_1": {
///                     "category": azure_native.cognitiveservices.RuleCategory.USER_DEFINED,
///                     "destination": "destination_endpoint",
///                     "type": "FQDN",
///                 },
///             },
///         },
///     },
///     resource_group_name="test-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   managedNetworkSetting:
///     type: azure-native:cognitiveservices:ManagedNetworkSetting
///     properties:
///       accountName: cognitive-account-name
///       managedNetworkName: default
///       properties:
///         managedNetwork:
///           firewallSku: Standard
///           isolationMode: AllowOnlyApprovedOutbound
///           outboundRules:
///             rule_name_1:
///               category: UserDefined
///               destination: destination_endpoint
///               type: FQDN
///       resourceGroupName: test-rg
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
/// $ pulumi import azure-native:cognitiveservices:ManagedNetworkSetting default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CognitiveServices/accounts/{accountName}/managedNetworks/{managedNetworkName}
/// ```
class ManagedNetworkSetting extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The properties of the managed network settings of a cognitive services account.
  late final pulumi.Output<ManagedNetworkSettingsPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ManagedNetworkSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedNetworkSetting]. {@macro pulumi_cognitiveservices_managed_network_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedNetworkSetting(
    String name, {
    ManagedNetworkSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cognitiveservices:ManagedNetworkSetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ManagedNetworkSettingsPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedNetworkSettingsPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
