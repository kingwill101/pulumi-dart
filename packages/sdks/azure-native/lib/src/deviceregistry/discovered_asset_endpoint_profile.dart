import 'package:pulumi/pulumi.dart' as pulumi;
import 'discovered_asset_endpoint_profile_args.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Discovered Asset Endpoint Profile definition.
///
/// Uses Azure REST API version 2024-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create_DiscoveredAssetEndpointProfile
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var discoveredAssetEndpointProfile = new AzureNative.DeviceRegistry.DiscoveredAssetEndpointProfile("discoveredAssetEndpointProfile", new()
///     {
///         AdditionalConfiguration = "{\"foo\": \"bar\"}",
///         DiscoveredAssetEndpointProfileName = "my-discoveredassetendpointprofile",
///         DiscoveryId = "11111111-1111-1111-1111-111111111111",
///         EndpointProfileType = "myEndpointProfileType",
///         ExtendedLocation = new AzureNative.DeviceRegistry.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///             Type = "CustomLocation",
///         },
///         Location = "West Europe",
///         ResourceGroupName = "myResourceGroup",
///         SupportedAuthenticationMethods = new[]
///         {
///             AzureNative.DeviceRegistry.AuthenticationMethod.Anonymous,
///             AzureNative.DeviceRegistry.AuthenticationMethod.Certificate,
///             AzureNative.DeviceRegistry.AuthenticationMethod.UsernamePassword,
///         },
///         Tags =
///         {
///             { "site", "building-1" },
///         },
///         TargetAddress = "https://www.example.com/myTargetAddress",
///         Version = 73766,
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
/// 	deviceregistry "github.com/pulumi/pulumi-azure-native-sdk/deviceregistry/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := deviceregistry.NewDiscoveredAssetEndpointProfile(ctx, "discoveredAssetEndpointProfile", &deviceregistry.DiscoveredAssetEndpointProfileArgs{
/// 			AdditionalConfiguration:            pulumi.String("{\"foo\": \"bar\"}"),
/// 			DiscoveredAssetEndpointProfileName: pulumi.String("my-discoveredassetendpointprofile"),
/// 			DiscoveryId:                        pulumi.String("11111111-1111-1111-1111-111111111111"),
/// 			EndpointProfileType:                pulumi.String("myEndpointProfileType"),
/// 			ExtendedLocation: &deviceregistry.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1"),
/// 				Type: pulumi.String("CustomLocation"),
/// 			},
/// 			Location:          pulumi.String("West Europe"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SupportedAuthenticationMethods: pulumi.StringArray{
/// 				pulumi.String(deviceregistry.AuthenticationMethodAnonymous),
/// 				pulumi.String(deviceregistry.AuthenticationMethodCertificate),
/// 				pulumi.String(deviceregistry.AuthenticationMethodUsernamePassword),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"site": pulumi.String("building-1"),
/// 			},
/// 			TargetAddress: pulumi.String("https://www.example.com/myTargetAddress"),
/// 			Version:       pulumi.Float64(73766),
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
/// import com.pulumi.azurenative.deviceregistry.DiscoveredAssetEndpointProfile;
/// import com.pulumi.azurenative.deviceregistry.DiscoveredAssetEndpointProfileArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.ExtendedLocationArgs;
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
///         var discoveredAssetEndpointProfile = new DiscoveredAssetEndpointProfile("discoveredAssetEndpointProfile", DiscoveredAssetEndpointProfileArgs.builder()
///             .additionalConfiguration("{\"foo\": \"bar\"}")
///             .discoveredAssetEndpointProfileName("my-discoveredassetendpointprofile")
///             .discoveryId("11111111-1111-1111-1111-111111111111")
///             .endpointProfileType("myEndpointProfileType")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1")
///                 .type("CustomLocation")
///                 .build())
///             .location("West Europe")
///             .resourceGroupName("myResourceGroup")
///             .supportedAuthenticationMethods(
///                 "Anonymous",
///                 "Certificate",
///                 "UsernamePassword")
///             .tags(Map.of("site", "building-1"))
///             .targetAddress("https://www.example.com/myTargetAddress")
///             .version(73766.0)
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
/// const discoveredAssetEndpointProfile = new azure_native.deviceregistry.DiscoveredAssetEndpointProfile("discoveredAssetEndpointProfile", {
///     additionalConfiguration: "{\"foo\": \"bar\"}",
///     discoveredAssetEndpointProfileName: "my-discoveredassetendpointprofile",
///     discoveryId: "11111111-1111-1111-1111-111111111111",
///     endpointProfileType: "myEndpointProfileType",
///     extendedLocation: {
///         name: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///         type: "CustomLocation",
///     },
///     location: "West Europe",
///     resourceGroupName: "myResourceGroup",
///     supportedAuthenticationMethods: [
///         azure_native.deviceregistry.AuthenticationMethod.Anonymous,
///         azure_native.deviceregistry.AuthenticationMethod.Certificate,
///         azure_native.deviceregistry.AuthenticationMethod.UsernamePassword,
///     ],
///     tags: {
///         site: "building-1",
///     },
///     targetAddress: "https://www.example.com/myTargetAddress",
///     version: 73766,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// discovered_asset_endpoint_profile = azure_native.deviceregistry.DiscoveredAssetEndpointProfile("discoveredAssetEndpointProfile",
///     additional_configuration="{\"foo\": \"bar\"}",
///     discovered_asset_endpoint_profile_name="my-discoveredassetendpointprofile",
///     discovery_id="11111111-1111-1111-1111-111111111111",
///     endpoint_profile_type="myEndpointProfileType",
///     extended_location={
///         "name": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///         "type": "CustomLocation",
///     },
///     location="West Europe",
///     resource_group_name="myResourceGroup",
///     supported_authentication_methods=[
///         azure_native.deviceregistry.AuthenticationMethod.ANONYMOUS,
///         azure_native.deviceregistry.AuthenticationMethod.CERTIFICATE,
///         azure_native.deviceregistry.AuthenticationMethod.USERNAME_PASSWORD,
///     ],
///     tags={
///         "site": "building-1",
///     },
///     target_address="https://www.example.com/myTargetAddress",
///     version=73766)
///
/// ```
///
/// ```yaml
/// resources:
///   discoveredAssetEndpointProfile:
///     type: azure-native:deviceregistry:DiscoveredAssetEndpointProfile
///     properties:
///       additionalConfiguration: '{"foo": "bar"}'
///       discoveredAssetEndpointProfileName: my-discoveredassetendpointprofile
///       discoveryId: 11111111-1111-1111-1111-111111111111
///       endpointProfileType: myEndpointProfileType
///       extendedLocation:
///         name: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1
///         type: CustomLocation
///       location: West Europe
///       resourceGroupName: myResourceGroup
///       supportedAuthenticationMethods:
///         - Anonymous
///         - Certificate
///         - UsernamePassword
///       tags:
///         site: building-1
///       targetAddress: https://www.example.com/myTargetAddress
///       version: 73766
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
/// $ pulumi import azure-native:deviceregistry:DiscoveredAssetEndpointProfile my-assetendpointprofile /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DeviceRegistry/discoveredAssetEndpointProfiles/{discoveredAssetEndpointProfileName}
/// ```
class DiscoveredAssetEndpointProfile extends pulumi.CustomResource {
  /// Stringified JSON that contains connectivity type specific further configuration (e.g. OPC UA, Modbus, ONVIF).
  late final pulumi.Output<String?> additionalConfiguration;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Identifier used to detect changes in the asset endpoint profile.
  late final pulumi.Output<String> discoveryId;
  /// Defines the configuration for the connector type that is being used with the endpoint profile.
  late final pulumi.Output<String> endpointProfileType;
  /// The extended location.
  late final pulumi.Output<ExtendedLocationResponse> extendedLocation;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// List of supported authentication methods supported by the target server.
  late final pulumi.Output<List<String>?> supportedAuthenticationMethods;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The local valid URI specifying the network address/DNS name of a southbound device. The scheme part of the targetAddress URI specifies the type of the device. The additionalConfiguration field holds further connector type specific configuration.
  late final pulumi.Output<String> targetAddress;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// An integer that is incremented each time the resource is modified.
  late final pulumi.Output<double> version;

  /// Creates a new [DiscoveredAssetEndpointProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DiscoveredAssetEndpointProfile]. {@macro pulumi_deviceregistry_discovered_asset_endpoint_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DiscoveredAssetEndpointProfile(
    String name, {
    DiscoveredAssetEndpointProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:deviceregistry:DiscoveredAssetEndpointProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalConfiguration = registerOutput<String?>('additionalConfiguration');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    discoveryId = registerOutput<String>('discoveryId');
    endpointProfileType = registerOutput<String>('endpointProfileType');
    extendedLocation = registerOutput<ExtendedLocationResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    supportedAuthenticationMethods = registerOutput<List<String>?>('supportedAuthenticationMethods');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    targetAddress = registerOutput<String>('targetAddress');
    type = registerOutput<String>('type');
    version = registerOutput<double>('version');
  }
}
