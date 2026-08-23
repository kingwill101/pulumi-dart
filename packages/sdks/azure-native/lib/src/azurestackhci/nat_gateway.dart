import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'nat_gateway_args.dart';
import 'nat_gateway_properties_response.dart';
import 'system_data_response.dart';

/// The NatGateway resource definition.
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// Other available API versions: 2026-02-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutNatGateway
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var natGateway = new AzureNative.AzureStackHCI.NatGateway("natGateway", new()
///     {
///         ExtendedLocation = new AzureNative.AzureStackHCI.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///             Type = AzureNative.AzureStackHCI.ExtendedLocationTypes.CustomLocation,
///         },
///         Location = "West US2",
///         NatGatewayName = "test-nat-gw",
///         Properties = new AzureNative.AzureStackHCI.Inputs.NatGatewayPropertiesArgs
///         {
///             PublicIPAddresses = new[]
///             {
///                 new AzureNative.AzureStackHCI.Inputs.PublicIPAddressArmReferenceArgs
///                 {
///                     ResourceId = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/publicIPAddresses/outbound-pip",
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewNatGateway(ctx, "natGateway", &azurestackhci.NatGatewayArgs{
/// 			ExtendedLocation: &azurestackhci.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"),
/// 				Type: pulumi.String(azurestackhci.ExtendedLocationTypesCustomLocation),
/// 			},
/// 			Location:       pulumi.String("West US2"),
/// 			NatGatewayName: pulumi.String("test-nat-gw"),
/// 			Properties: &azurestackhci.NatGatewayPropertiesArgs{
/// 				PublicIPAddresses: azurestackhci.PublicIPAddressArmReferenceArray{
/// 					&azurestackhci.PublicIPAddressArmReferenceArgs{
/// 						ResourceId: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/publicIPAddresses/outbound-pip"),
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
/// resource "azure-native_azurestackhci_natgateway" "natGateway" {
///   extended_location = {
///     name = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"
///     type = "CustomLocation"
///   }
///   location         = "West US2"
///   nat_gateway_name = "test-nat-gw"
///   properties = {
///     public_ip_addresses = [{
///       "resourceId" = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/publicIPAddresses/outbound-pip"
///     }]
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
/// import com.pulumi.azurenative.azurestackhci.NatGateway;
/// import com.pulumi.azurenative.azurestackhci.NatGatewayArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.NatGatewayPropertiesArgs;
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
///         var natGateway = new NatGateway("natGateway", NatGatewayArgs.builder()
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location")
///                 .type("CustomLocation")
///                 .build())
///             .location("West US2")
///             .natGatewayName("test-nat-gw")
///             .properties(NatGatewayPropertiesArgs.builder()
///                 .publicIPAddresses(PublicIPAddressArmReferenceArgs.builder()
///                     .resourceId("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/publicIPAddresses/outbound-pip")
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
/// const natGateway = new azure_native.azurestackhci.NatGateway("natGateway", {
///     extendedLocation: {
///         name: "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         type: azure_native.azurestackhci.ExtendedLocationTypes.CustomLocation,
///     },
///     location: "West US2",
///     natGatewayName: "test-nat-gw",
///     properties: {
///         publicIPAddresses: [{
///             resourceId: "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/publicIPAddresses/outbound-pip",
///         }],
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
/// nat_gateway = azure_native.azurestackhci.NatGateway("natGateway",
///     extended_location={
///         "name": "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         "type": azure_native.azurestackhci.ExtendedLocationTypes.CUSTOM_LOCATION,
///     },
///     location="West US2",
///     nat_gateway_name="test-nat-gw",
///     properties={
///         "public_ip_addresses": [{
///             "resource_id": "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/publicIPAddresses/outbound-pip",
///         }],
///     },
///     resource_group_name="test-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   natGateway:
///     type: azure-native:azurestackhci:NatGateway
///     properties:
///       extendedLocation:
///         name: /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location
///         type: CustomLocation
///       location: West US2
///       natGatewayName: test-nat-gw
///       properties:
///         publicIPAddresses:
///           - resourceId: /subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/publicIPAddresses/outbound-pip
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
/// $ pulumi import azure-native:azurestackhci:NatGateway test-nat-gw /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureStackHCI/natGateways/{natGatewayName}
/// ```
class NatGateway extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The extendedLocation of the resource.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<NatGatewayPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [NatGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NatGateway]. {@macro pulumi_azurestackhci_nat_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NatGateway(
    String name, {
    NatGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurestackhci:NatGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<NatGatewayPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NatGatewayPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
