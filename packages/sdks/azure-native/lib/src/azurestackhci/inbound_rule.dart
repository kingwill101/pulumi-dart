import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'inbound_rule_args.dart';
import 'inbound_rule_properties_response.dart';
import 'system_data_response.dart';

/// The inbound rule resource definition.
///
/// Uses Azure REST API version 2026-04-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdateInboundRule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var inboundRule = new AzureNative.AzureStackHCI.InboundRule("inboundRule", new()
///     {
///         ExtendedLocation = new AzureNative.AzureStackHCI.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///             Type = AzureNative.AzureStackHCI.ExtendedLocationTypes.CustomLocation,
///         },
///         InboundRuleName = "sample-inbound-rule",
///         NatGatewayName = "test-nat-gw",
///         Properties = new AzureNative.AzureStackHCI.Inputs.InboundRulePropertiesArgs
///         {
///             BackendIPConfiguration = new AzureNative.AzureStackHCI.Inputs.IPConfigurationArmReferenceArgs
///             {
///                 ResourceId = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/test-rg/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic/ipConfigurations/ipconfig1",
///             },
///             BackendPort = 3389,
///             FrontendPort = 3389,
///             Protocol = AzureNative.AzureStackHCI.InboundNATRuleProtocol.TCP,
///             PublicIPAddress = new AzureNative.AzureStackHCI.Inputs.PublicIPAddressArmReferenceArgs
///             {
///                 ResourceId = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/test-rg/providers/Microsoft.AzureStackHCI/publicIPAddresses/test-public-ip",
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewInboundRule(ctx, "inboundRule", &azurestackhci.InboundRuleArgs{
/// 			ExtendedLocation: &azurestackhci.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"),
/// 				Type: pulumi.String(azurestackhci.ExtendedLocationTypesCustomLocation),
/// 			},
/// 			InboundRuleName: pulumi.String("sample-inbound-rule"),
/// 			NatGatewayName:  pulumi.String("test-nat-gw"),
/// 			Properties: &azurestackhci.InboundRulePropertiesArgs{
/// 				BackendIPConfiguration: &azurestackhci.IPConfigurationArmReferenceArgs{
/// 					ResourceId: pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/test-rg/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic/ipConfigurations/ipconfig1"),
/// 				},
/// 				BackendPort:  pulumi.Int(3389),
/// 				FrontendPort: pulumi.Int(3389),
/// 				Protocol:     pulumi.String(azurestackhci.InboundNATRuleProtocolTCP),
/// 				PublicIPAddress: &azurestackhci.PublicIPAddressArmReferenceArgs{
/// 					ResourceId: pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/test-rg/providers/Microsoft.AzureStackHCI/publicIPAddresses/test-public-ip"),
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
/// resource "azure-native_azurestackhci_inboundrule" "inboundRule" {
///   extended_location = {
///     name = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"
///     type = "CustomLocation"
///   }
///   inbound_rule_name = "sample-inbound-rule"
///   nat_gateway_name  = "test-nat-gw"
///   properties = {
///     backend_ip_configuration = {
///       resource_id = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/test-rg/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic/ipConfigurations/ipconfig1"
///     }
///     backend_port  = 3389
///     frontend_port = 3389
///     protocol      = "Tcp"
///     public_ip_address = {
///       resource_id = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/test-rg/providers/Microsoft.AzureStackHCI/publicIPAddresses/test-public-ip"
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
/// import com.pulumi.azurenative.azurestackhci.InboundRule;
/// import com.pulumi.azurenative.azurestackhci.InboundRuleArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.InboundRulePropertiesArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.IPConfigurationArmReferenceArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.PublicIPAddressArmReferenceArgs;
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
///         var inboundRule = new InboundRule("inboundRule", InboundRuleArgs.builder()
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location")
///                 .type("CustomLocation")
///                 .build())
///             .inboundRuleName("sample-inbound-rule")
///             .natGatewayName("test-nat-gw")
///             .properties(InboundRulePropertiesArgs.builder()
///                 .backendIPConfiguration(IPConfigurationArmReferenceArgs.builder()
///                     .resourceId("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/test-rg/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic/ipConfigurations/ipconfig1")
///                     .build())
///                 .backendPort(3389)
///                 .frontendPort(3389)
///                 .protocol("Tcp")
///                 .publicIPAddress(PublicIPAddressArmReferenceArgs.builder()
///                     .resourceId("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/test-rg/providers/Microsoft.AzureStackHCI/publicIPAddresses/test-public-ip")
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
/// const inboundRule = new azure_native.azurestackhci.InboundRule("inboundRule", {
///     extendedLocation: {
///         name: "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         type: azure_native.azurestackhci.ExtendedLocationTypes.CustomLocation,
///     },
///     inboundRuleName: "sample-inbound-rule",
///     natGatewayName: "test-nat-gw",
///     properties: {
///         backendIPConfiguration: {
///             resourceId: "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/test-rg/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic/ipConfigurations/ipconfig1",
///         },
///         backendPort: 3389,
///         frontendPort: 3389,
///         protocol: azure_native.azurestackhci.InboundNATRuleProtocol.TCP,
///         publicIPAddress: {
///             resourceId: "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/test-rg/providers/Microsoft.AzureStackHCI/publicIPAddresses/test-public-ip",
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
/// inbound_rule = azure_native.azurestackhci.InboundRule("inboundRule",
///     extended_location={
///         "name": "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         "type": azure_native.azurestackhci.ExtendedLocationTypes.CUSTOM_LOCATION,
///     },
///     inbound_rule_name="sample-inbound-rule",
///     nat_gateway_name="test-nat-gw",
///     properties={
///         "backend_ip_configuration": {
///             "resource_id": "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/test-rg/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic/ipConfigurations/ipconfig1",
///         },
///         "backend_port": 3389,
///         "frontend_port": 3389,
///         "protocol": azure_native.azurestackhci.InboundNATRuleProtocol.TCP,
///         "public_ip_address": {
///             "resource_id": "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/test-rg/providers/Microsoft.AzureStackHCI/publicIPAddresses/test-public-ip",
///         },
///     },
///     resource_group_name="test-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   inboundRule:
///     type: azure-native:azurestackhci:InboundRule
///     properties:
///       extendedLocation:
///         name: /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location
///         type: CustomLocation
///       inboundRuleName: sample-inbound-rule
///       natGatewayName: test-nat-gw
///       properties:
///         backendIPConfiguration:
///           resourceId: /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/test-rg/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic/ipConfigurations/ipconfig1
///         backendPort: 3389
///         frontendPort: 3389
///         protocol: Tcp
///         publicIPAddress:
///           resourceId: /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/test-rg/providers/Microsoft.AzureStackHCI/publicIPAddresses/test-public-ip
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
/// $ pulumi import azure-native:azurestackhci:InboundRule sample-inbound-rule /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureStackHCI/natGateways/{natGatewayName}/inboundRules/{inboundRuleName}
/// ```
class InboundRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The extendedLocation of the resource.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<InboundRulePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [InboundRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InboundRule]. {@macro pulumi_azurestackhci_inbound_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InboundRule(
    String name, {
    InboundRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurestackhci:InboundRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    properties = registerOutput<InboundRulePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InboundRulePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
