import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_policy_group_args.dart';
import 'sub_resource_response.dart';
import 'vpn_server_configuration_policy_group_member_response.dart';

/// VpnServerConfigurationPolicyGroup Resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ConfigurationPolicyGroupPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var configurationPolicyGroup = new AzureNative.Network.ConfigurationPolicyGroup("configurationPolicyGroup", new()
///     {
///         ConfigurationPolicyGroupName = "policyGroup1",
///         IsDefault = true,
///         PolicyMembers = new[]
///         {
///             new AzureNative.Network.Inputs.VpnServerConfigurationPolicyGroupMemberArgs
///             {
///                 AttributeType = AzureNative.Network.VpnPolicyMemberAttributeType.RadiusAzureGroupId,
///                 AttributeValue = "6ad1bd08",
///                 Name = "policy1",
///             },
///             new AzureNative.Network.Inputs.VpnServerConfigurationPolicyGroupMemberArgs
///             {
///                 AttributeType = AzureNative.Network.VpnPolicyMemberAttributeType.CertificateGroupId,
///                 AttributeValue = "red.com",
///                 Name = "policy2",
///             },
///         },
///         Priority = 0,
///         ResourceGroupName = "rg1",
///         VpnServerConfigurationName = "vpnServerConfiguration1",
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
/// 		_, err := network.NewConfigurationPolicyGroup(ctx, "configurationPolicyGroup", &network.ConfigurationPolicyGroupArgs{
/// 			ConfigurationPolicyGroupName: pulumi.String("policyGroup1"),
/// 			IsDefault:                    pulumi.Bool(true),
/// 			PolicyMembers: network.VpnServerConfigurationPolicyGroupMemberArray{
/// 				&network.VpnServerConfigurationPolicyGroupMemberArgs{
/// 					AttributeType:  pulumi.String(network.VpnPolicyMemberAttributeTypeRadiusAzureGroupId),
/// 					AttributeValue: pulumi.String("6ad1bd08"),
/// 					Name:           pulumi.String("policy1"),
/// 				},
/// 				&network.VpnServerConfigurationPolicyGroupMemberArgs{
/// 					AttributeType:  pulumi.String(network.VpnPolicyMemberAttributeTypeCertificateGroupId),
/// 					AttributeValue: pulumi.String("red.com"),
/// 					Name:           pulumi.String("policy2"),
/// 				},
/// 			},
/// 			Priority:                   pulumi.Int(0),
/// 			ResourceGroupName:          pulumi.String("rg1"),
/// 			VpnServerConfigurationName: pulumi.String("vpnServerConfiguration1"),
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
/// resource "azure-native_network_configurationpolicygroup" "configurationPolicyGroup" {
///   configuration_policy_group_name = "policyGroup1"
///   is_default                      = true
///   policy_members {
///     attribute_type  = "RadiusAzureGroupId"
///     attribute_value = "6ad1bd08"
///     name            = "policy1"
///   }
///   policy_members {
///     attribute_type  = "CertificateGroupId"
///     attribute_value = "red.com"
///     name            = "policy2"
///   }
///   priority                      = 0
///   resource_group_name           = "rg1"
///   vpn_server_configuration_name = "vpnServerConfiguration1"
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
/// import com.pulumi.azurenative.network.ConfigurationPolicyGroup;
/// import com.pulumi.azurenative.network.ConfigurationPolicyGroupArgs;
/// import com.pulumi.azurenative.network.inputs.VpnServerConfigurationPolicyGroupMemberArgs;
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
///         var configurationPolicyGroup = new ConfigurationPolicyGroup("configurationPolicyGroup", ConfigurationPolicyGroupArgs.builder()
///             .configurationPolicyGroupName("policyGroup1")
///             .isDefault(true)
///             .policyMembers(
///                 VpnServerConfigurationPolicyGroupMemberArgs.builder()
///                     .attributeType("RadiusAzureGroupId")
///                     .attributeValue("6ad1bd08")
///                     .name("policy1")
///                     .build(),
///                 VpnServerConfigurationPolicyGroupMemberArgs.builder()
///                     .attributeType("CertificateGroupId")
///                     .attributeValue("red.com")
///                     .name("policy2")
///                     .build())
///             .priority(0)
///             .resourceGroupName("rg1")
///             .vpnServerConfigurationName("vpnServerConfiguration1")
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
/// const configurationPolicyGroup = new azure_native.network.ConfigurationPolicyGroup("configurationPolicyGroup", {
///     configurationPolicyGroupName: "policyGroup1",
///     isDefault: true,
///     policyMembers: [
///         {
///             attributeType: azure_native.network.VpnPolicyMemberAttributeType.RadiusAzureGroupId,
///             attributeValue: "6ad1bd08",
///             name: "policy1",
///         },
///         {
///             attributeType: azure_native.network.VpnPolicyMemberAttributeType.CertificateGroupId,
///             attributeValue: "red.com",
///             name: "policy2",
///         },
///     ],
///     priority: 0,
///     resourceGroupName: "rg1",
///     vpnServerConfigurationName: "vpnServerConfiguration1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// configuration_policy_group = azure_native.network.ConfigurationPolicyGroup("configurationPolicyGroup",
///     configuration_policy_group_name="policyGroup1",
///     is_default=True,
///     policy_members=[
///         {
///             "attribute_type": azure_native.network.VpnPolicyMemberAttributeType.RADIUS_AZURE_GROUP_ID,
///             "attribute_value": "6ad1bd08",
///             "name": "policy1",
///         },
///         {
///             "attribute_type": azure_native.network.VpnPolicyMemberAttributeType.CERTIFICATE_GROUP_ID,
///             "attribute_value": "red.com",
///             "name": "policy2",
///         },
///     ],
///     priority=0,
///     resource_group_name="rg1",
///     vpn_server_configuration_name="vpnServerConfiguration1")
///
/// ```
///
/// ```yaml
/// resources:
///   configurationPolicyGroup:
///     type: azure-native:network:ConfigurationPolicyGroup
///     properties:
///       configurationPolicyGroupName: policyGroup1
///       isDefault: true
///       policyMembers:
///         - attributeType: RadiusAzureGroupId
///           attributeValue: 6ad1bd08
///           name: policy1
///         - attributeType: CertificateGroupId
///           attributeValue: red.com
///           name: policy2
///       priority: 0
///       resourceGroupName: rg1
///       vpnServerConfigurationName: vpnServerConfiguration1
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
/// $ pulumi import azure-native:network:ConfigurationPolicyGroup policyGroup1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/vpnServerConfigurations/{vpnServerConfigurationName}/configurationPolicyGroups/{configurationPolicyGroupName}
/// ```
class ConfigurationPolicyGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Shows if this is a Default VpnServerConfigurationPolicyGroup or not.
  late final pulumi.Output<bool?> isDefault;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  late final pulumi.Output<String?> name;
  /// List of references to P2SConnectionConfigurations.
  late final pulumi.Output<List<SubResourceResponse>> p2SConnectionConfigurations;
  /// Multiple PolicyMembers for VpnServerConfigurationPolicyGroup.
  late final pulumi.Output<List<VpnServerConfigurationPolicyGroupMemberResponse>?> policyMembers;
  /// Priority for VpnServerConfigurationPolicyGroup.
  late final pulumi.Output<int?> priority;
  /// The provisioning state of the VpnServerConfigurationPolicyGroup resource.
  late final pulumi.Output<String> provisioningState;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ConfigurationPolicyGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigurationPolicyGroup]. {@macro pulumi_network_configuration_policy_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigurationPolicyGroup(
    String name, {
    ConfigurationPolicyGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:ConfigurationPolicyGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    isDefault = registerOutput<bool?>('isDefault');
    this.name = registerOutput<String?>('name');
    p2SConnectionConfigurations = registerOutput<List<SubResourceResponse>>('p2SConnectionConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); });
    policyMembers = registerOutput<List<VpnServerConfigurationPolicyGroupMemberResponse>?>('policyMembers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VpnServerConfigurationPolicyGroupMemberResponse>(guardedValue, (value) => VpnServerConfigurationPolicyGroupMemberResponse.fromMap((value as Map).cast<String, dynamic>())); });
    priority = registerOutput<int?>('priority');
    provisioningState = registerOutput<String>('provisioningState');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ConfigurationPolicyGroup] resource.
  ConfigurationPolicyGroup.reference(String urn)
    : super(
        'azure-native:network:ConfigurationPolicyGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    isDefault = registerOutput<bool?>('isDefault');
    this.name = registerOutput<String?>('name');
    p2SConnectionConfigurations = registerOutput<List<SubResourceResponse>>('p2SConnectionConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); });
    policyMembers = registerOutput<List<VpnServerConfigurationPolicyGroupMemberResponse>?>('policyMembers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VpnServerConfigurationPolicyGroupMemberResponse>(guardedValue, (value) => VpnServerConfigurationPolicyGroupMemberResponse.fromMap((value as Map).cast<String, dynamic>())); });
    priority = registerOutput<int?>('priority');
    provisioningState = registerOutput<String>('provisioningState');
    type = registerOutput<String>('type');
  }
}
