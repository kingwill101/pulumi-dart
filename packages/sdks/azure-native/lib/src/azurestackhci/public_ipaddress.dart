import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'public_ipaddress_args.dart';
import 'public_ipaddress_properties_response.dart';
import 'system_data_response.dart';

/// The publicIP resource definition.
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// Other available API versions: 2026-02-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreatePublicIPAddress
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var publicIPAddress = new AzureNative.AzureStackHCI.PublicIPAddress("publicIPAddress", new()
///     {
///         Location = "eastus",
///         Properties = new AzureNative.AzureStackHCI.Inputs.PublicIPAddressPropertiesArgs
///         {
///             IpAddress = "10.100.100.4",
///             IpAllocationScope = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.AzureStackHCI/logicalNetworks/lnet1",
///             PublicIPAddressVersion = AzureNative.AzureStackHCI.PublicIPAddressType.IPv4,
///         },
///         PublicIPAddressName = "public-ip1",
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewPublicIPAddress(ctx, "publicIPAddress", &azurestackhci.PublicIPAddressArgs{
/// 			Location: pulumi.String("eastus"),
/// 			Properties: &azurestackhci.PublicIPAddressPropertiesArgs{
/// 				IpAddress:              pulumi.String("10.100.100.4"),
/// 				IpAllocationScope:      pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.AzureStackHCI/logicalNetworks/lnet1"),
/// 				PublicIPAddressVersion: pulumi.String(azurestackhci.PublicIPAddressTypeIPv4),
/// 			},
/// 			PublicIPAddressName: pulumi.String("public-ip1"),
/// 			ResourceGroupName:   pulumi.String("testrg"),
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
/// resource "azure-native_azurestackhci_publicipaddress" "publicIPAddress" {
///   location = "eastus"
///   properties = {
///     ip_address                = "10.100.100.4"
///     ip_allocation_scope       = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.AzureStackHCI/logicalNetworks/lnet1"
///     public_ip_address_version = "IPv4"
///   }
///   public_ip_address_name = "public-ip1"
///   resource_group_name    = "testrg"
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
/// import com.pulumi.azurenative.azurestackhci.PublicIPAddress;
/// import com.pulumi.azurenative.azurestackhci.PublicIPAddressArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.PublicIPAddressPropertiesArgs;
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
///         var publicIPAddress = new PublicIPAddress("publicIPAddress", PublicIPAddressArgs.builder()
///             .location("eastus")
///             .properties(PublicIPAddressPropertiesArgs.builder()
///                 .ipAddress("10.100.100.4")
///                 .ipAllocationScope("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.AzureStackHCI/logicalNetworks/lnet1")
///                 .publicIPAddressVersion("IPv4")
///                 .build())
///             .publicIPAddressName("public-ip1")
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
/// const publicIPAddress = new azure_native.azurestackhci.PublicIPAddress("publicIPAddress", {
///     location: "eastus",
///     properties: {
///         ipAddress: "10.100.100.4",
///         ipAllocationScope: "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.AzureStackHCI/logicalNetworks/lnet1",
///         publicIPAddressVersion: azure_native.azurestackhci.PublicIPAddressType.IPv4,
///     },
///     publicIPAddressName: "public-ip1",
///     resourceGroupName: "testrg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// public_ip_address = azure_native.azurestackhci.PublicIPAddress("publicIPAddress",
///     location="eastus",
///     properties={
///         "ip_address": "10.100.100.4",
///         "ip_allocation_scope": "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.AzureStackHCI/logicalNetworks/lnet1",
///         "public_ip_address_version": azure_native.azurestackhci.PublicIPAddressType.I_PV4,
///     },
///     public_ip_address_name="public-ip1",
///     resource_group_name="testrg")
///
/// ```
///
/// ```yaml
/// resources:
///   publicIPAddress:
///     type: azure-native:azurestackhci:PublicIPAddress
///     properties:
///       location: eastus
///       properties:
///         ipAddress: 10.100.100.4
///         ipAllocationScope: /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.AzureStackHCI/logicalNetworks/lnet1
///         publicIPAddressVersion: IPv4
///       publicIPAddressName: public-ip1
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
/// $ pulumi import azure-native:azurestackhci:PublicIPAddress public-ip1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureStackHCI/publicIPAddresses/{publicIPAddressName}
/// ```
class PublicIPAddress extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The extendedLocation of the resource.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<PublicIPAddressPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PublicIPAddress].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PublicIPAddress]. {@macro pulumi_azurestackhci_public_ipaddress_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PublicIPAddress(
    String name, {
    PublicIPAddressArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurestackhci:PublicIPAddress',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<PublicIPAddressPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PublicIPAddressPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
