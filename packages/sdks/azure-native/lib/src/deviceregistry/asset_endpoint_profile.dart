import 'package:pulumi/pulumi.dart' as pulumi;
import 'asset_endpoint_profile_args.dart';
import 'asset_endpoint_profile_status_response.dart';
import 'authentication_response.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Asset Endpoint Profile definition.
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2023-11-01-preview.
///
/// Other available API versions: 2023-11-01-preview, 2024-09-01-preview, 2025-07-01-preview, 2025-10-01, 2025-11-01-preview, 2026-03-01-preview, 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create_AssetEndpointProfile
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assetEndpointProfile = new AzureNative.DeviceRegistry.AssetEndpointProfile("assetEndpointProfile", new()
///     {
///         AssetEndpointProfileName = "my-assetendpointprofile",
///         Authentication = new AzureNative.DeviceRegistry.Inputs.AuthenticationArgs
///         {
///             Method = AzureNative.DeviceRegistry.AuthenticationMethod.Anonymous,
///         },
///         EndpointProfileType = "myEndpointProfileType",
///         ExtendedLocation = new AzureNative.DeviceRegistry.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///             Type = "CustomLocation",
///         },
///         Location = "West Europe",
///         ResourceGroupName = "myResourceGroup",
///         Tags =
///         {
///             { "site", "building-1" },
///         },
///         TargetAddress = "https://www.example.com/myTargetAddress",
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
/// 		_, err := deviceregistry.NewAssetEndpointProfile(ctx, "assetEndpointProfile", &deviceregistry.AssetEndpointProfileArgs{
/// 			AssetEndpointProfileName: pulumi.String("my-assetendpointprofile"),
/// 			Authentication: &deviceregistry.AuthenticationArgs{
/// 				Method: pulumi.String(deviceregistry.AuthenticationMethodAnonymous),
/// 			},
/// 			EndpointProfileType: pulumi.String("myEndpointProfileType"),
/// 			ExtendedLocation: &deviceregistry.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1"),
/// 				Type: pulumi.String("CustomLocation"),
/// 			},
/// 			Location:          pulumi.String("West Europe"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"site": pulumi.String("building-1"),
/// 			},
/// 			TargetAddress: pulumi.String("https://www.example.com/myTargetAddress"),
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
/// resource "azure-native_deviceregistry_assetendpointprofile" "assetEndpointProfile" {
///   asset_endpoint_profile_name = "my-assetendpointprofile"
///   authentication = {
///     method = "Anonymous"
///   }
///   endpoint_profile_type = "myEndpointProfileType"
///   extended_location = {
///     name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1"
///     type = "CustomLocation"
///   }
///   location            = "West Europe"
///   resource_group_name = "myResourceGroup"
///   tags = {
///     "site" = "building-1"
///   }
///   target_address = "https://www.example.com/myTargetAddress"
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
/// import com.pulumi.azurenative.deviceregistry.AssetEndpointProfile;
/// import com.pulumi.azurenative.deviceregistry.AssetEndpointProfileArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.AuthenticationArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.ExtendedLocationArgs;
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
///         var assetEndpointProfile = new AssetEndpointProfile("assetEndpointProfile", AssetEndpointProfileArgs.builder()
///             .assetEndpointProfileName("my-assetendpointprofile")
///             .authentication(AuthenticationArgs.builder()
///                 .method("Anonymous")
///                 .build())
///             .endpointProfileType("myEndpointProfileType")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1")
///                 .type("CustomLocation")
///                 .build())
///             .location("West Europe")
///             .resourceGroupName("myResourceGroup")
///             .tags(Map.of("site", "building-1"))
///             .targetAddress("https://www.example.com/myTargetAddress")
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
/// const assetEndpointProfile = new azure_native.deviceregistry.AssetEndpointProfile("assetEndpointProfile", {
///     assetEndpointProfileName: "my-assetendpointprofile",
///     authentication: {
///         method: azure_native.deviceregistry.AuthenticationMethod.Anonymous,
///     },
///     endpointProfileType: "myEndpointProfileType",
///     extendedLocation: {
///         name: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///         type: "CustomLocation",
///     },
///     location: "West Europe",
///     resourceGroupName: "myResourceGroup",
///     tags: {
///         site: "building-1",
///     },
///     targetAddress: "https://www.example.com/myTargetAddress",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// asset_endpoint_profile = azure_native.deviceregistry.AssetEndpointProfile("assetEndpointProfile",
///     asset_endpoint_profile_name="my-assetendpointprofile",
///     authentication={
///         "method": azure_native.deviceregistry.AuthenticationMethod.ANONYMOUS,
///     },
///     endpoint_profile_type="myEndpointProfileType",
///     extended_location={
///         "name": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///         "type": "CustomLocation",
///     },
///     location="West Europe",
///     resource_group_name="myResourceGroup",
///     tags={
///         "site": "building-1",
///     },
///     target_address="https://www.example.com/myTargetAddress")
///
/// ```
///
/// ```yaml
/// resources:
///   assetEndpointProfile:
///     type: azure-native:deviceregistry:AssetEndpointProfile
///     properties:
///       assetEndpointProfileName: my-assetendpointprofile
///       authentication:
///         method: Anonymous
///       endpointProfileType: myEndpointProfileType
///       extendedLocation:
///         name: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1
///         type: CustomLocation
///       location: West Europe
///       resourceGroupName: myResourceGroup
///       tags:
///         site: building-1
///       targetAddress: https://www.example.com/myTargetAddress
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create_AssetEndpointProfile_With_DiscoveredAepRef
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assetEndpointProfile = new AzureNative.DeviceRegistry.AssetEndpointProfile("assetEndpointProfile", new()
///     {
///         AssetEndpointProfileName = "my-assetendpointprofile",
///         Authentication = new AzureNative.DeviceRegistry.Inputs.AuthenticationArgs
///         {
///             Method = AzureNative.DeviceRegistry.AuthenticationMethod.Anonymous,
///         },
///         DiscoveredAssetEndpointProfileRef = "discoveredAssetEndpointProfile1",
///         EndpointProfileType = "myEndpointProfileType",
///         ExtendedLocation = new AzureNative.DeviceRegistry.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///             Type = "CustomLocation",
///         },
///         Location = "West Europe",
///         ResourceGroupName = "myResourceGroup",
///         Tags =
///         {
///             { "site", "building-1" },
///         },
///         TargetAddress = "https://www.example.com/myTargetAddress",
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
/// 		_, err := deviceregistry.NewAssetEndpointProfile(ctx, "assetEndpointProfile", &deviceregistry.AssetEndpointProfileArgs{
/// 			AssetEndpointProfileName: pulumi.String("my-assetendpointprofile"),
/// 			Authentication: &deviceregistry.AuthenticationArgs{
/// 				Method: pulumi.String(deviceregistry.AuthenticationMethodAnonymous),
/// 			},
/// 			DiscoveredAssetEndpointProfileRef: pulumi.String("discoveredAssetEndpointProfile1"),
/// 			EndpointProfileType:               pulumi.String("myEndpointProfileType"),
/// 			ExtendedLocation: &deviceregistry.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1"),
/// 				Type: pulumi.String("CustomLocation"),
/// 			},
/// 			Location:          pulumi.String("West Europe"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"site": pulumi.String("building-1"),
/// 			},
/// 			TargetAddress: pulumi.String("https://www.example.com/myTargetAddress"),
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
/// resource "azure-native_deviceregistry_assetendpointprofile" "assetEndpointProfile" {
///   asset_endpoint_profile_name = "my-assetendpointprofile"
///   authentication = {
///     method = "Anonymous"
///   }
///   discovered_asset_endpoint_profile_ref = "discoveredAssetEndpointProfile1"
///   endpoint_profile_type                 = "myEndpointProfileType"
///   extended_location = {
///     name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1"
///     type = "CustomLocation"
///   }
///   location            = "West Europe"
///   resource_group_name = "myResourceGroup"
///   tags = {
///     "site" = "building-1"
///   }
///   target_address = "https://www.example.com/myTargetAddress"
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
/// import com.pulumi.azurenative.deviceregistry.AssetEndpointProfile;
/// import com.pulumi.azurenative.deviceregistry.AssetEndpointProfileArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.AuthenticationArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.ExtendedLocationArgs;
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
///         var assetEndpointProfile = new AssetEndpointProfile("assetEndpointProfile", AssetEndpointProfileArgs.builder()
///             .assetEndpointProfileName("my-assetendpointprofile")
///             .authentication(AuthenticationArgs.builder()
///                 .method("Anonymous")
///                 .build())
///             .discoveredAssetEndpointProfileRef("discoveredAssetEndpointProfile1")
///             .endpointProfileType("myEndpointProfileType")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1")
///                 .type("CustomLocation")
///                 .build())
///             .location("West Europe")
///             .resourceGroupName("myResourceGroup")
///             .tags(Map.of("site", "building-1"))
///             .targetAddress("https://www.example.com/myTargetAddress")
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
/// const assetEndpointProfile = new azure_native.deviceregistry.AssetEndpointProfile("assetEndpointProfile", {
///     assetEndpointProfileName: "my-assetendpointprofile",
///     authentication: {
///         method: azure_native.deviceregistry.AuthenticationMethod.Anonymous,
///     },
///     discoveredAssetEndpointProfileRef: "discoveredAssetEndpointProfile1",
///     endpointProfileType: "myEndpointProfileType",
///     extendedLocation: {
///         name: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///         type: "CustomLocation",
///     },
///     location: "West Europe",
///     resourceGroupName: "myResourceGroup",
///     tags: {
///         site: "building-1",
///     },
///     targetAddress: "https://www.example.com/myTargetAddress",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// asset_endpoint_profile = azure_native.deviceregistry.AssetEndpointProfile("assetEndpointProfile",
///     asset_endpoint_profile_name="my-assetendpointprofile",
///     authentication={
///         "method": azure_native.deviceregistry.AuthenticationMethod.ANONYMOUS,
///     },
///     discovered_asset_endpoint_profile_ref="discoveredAssetEndpointProfile1",
///     endpoint_profile_type="myEndpointProfileType",
///     extended_location={
///         "name": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///         "type": "CustomLocation",
///     },
///     location="West Europe",
///     resource_group_name="myResourceGroup",
///     tags={
///         "site": "building-1",
///     },
///     target_address="https://www.example.com/myTargetAddress")
///
/// ```
///
/// ```yaml
/// resources:
///   assetEndpointProfile:
///     type: azure-native:deviceregistry:AssetEndpointProfile
///     properties:
///       assetEndpointProfileName: my-assetendpointprofile
///       authentication:
///         method: Anonymous
///       discoveredAssetEndpointProfileRef: discoveredAssetEndpointProfile1
///       endpointProfileType: myEndpointProfileType
///       extendedLocation:
///         name: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1
///         type: CustomLocation
///       location: West Europe
///       resourceGroupName: myResourceGroup
///       tags:
///         site: building-1
///       targetAddress: https://www.example.com/myTargetAddress
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
/// $ pulumi import azure-native:deviceregistry:AssetEndpointProfile my-assetendpointprofile /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DeviceRegistry/assetEndpointProfiles/{assetEndpointProfileName}
/// ```
class AssetEndpointProfile extends pulumi.CustomResource {
  /// Stringified JSON that contains connectivity type specific further configuration (e.g. OPC UA, Modbus, ONVIF).
  late final pulumi.Output<String?> additionalConfiguration;
  /// Defines the client authentication mechanism to the server.
  late final pulumi.Output<AuthenticationResponse?> authentication;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Reference to a discovered asset endpoint profile. Populated only if the asset endpoint profile has been created from discovery flow. Discovered asset endpoint profile name must be provided.
  late final pulumi.Output<String?> discoveredAssetEndpointProfileRef;
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
  /// Read only object to reflect changes that have occurred on the Edge. Similar to Kubernetes status property for custom resources.
  late final pulumi.Output<AssetEndpointProfileStatusResponse> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The local valid URI specifying the network address/DNS name of a southbound device. The scheme part of the targetAddress URI specifies the type of the device. The additionalConfiguration field holds further connector type specific configuration.
  late final pulumi.Output<String> targetAddress;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Globally unique, immutable, non-reusable id.
  late final pulumi.Output<String> uuid;

  /// Creates a new [AssetEndpointProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AssetEndpointProfile]. {@macro pulumi_deviceregistry_asset_endpoint_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AssetEndpointProfile(
    String name, {
    AssetEndpointProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:deviceregistry:AssetEndpointProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalConfiguration = registerOutput<String?>('additionalConfiguration');
    authentication = registerOutput<AuthenticationResponse?>('authentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthenticationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    discoveredAssetEndpointProfileRef = registerOutput<String?>('discoveredAssetEndpointProfileRef');
    endpointProfileType = registerOutput<String>('endpointProfileType');
    extendedLocation = registerOutput<ExtendedLocationResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<AssetEndpointProfileStatusResponse>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssetEndpointProfileStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    targetAddress = registerOutput<String>('targetAddress');
    type = registerOutput<String>('type');
    uuid = registerOutput<String>('uuid');
  }
}
