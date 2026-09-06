import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity_response.dart';
import 'profile_args.dart';
import 'profile_log_scrubbing_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// A profile is a logical grouping of endpoints that share the same settings.
///
/// Uses Azure REST API version 2025-06-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview, 2025-12-01, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Profiles_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var profile = new AzureNative.Cdn.Profile("profile", new()
///     {
///         Location = "global",
///         ProfileName = "profile1",
///         ResourceGroupName = "RG",
///         Sku = new AzureNative.Cdn.Inputs.SkuArgs
///         {
///             Name = AzureNative.Cdn.SkuName.Premium_AzureFrontDoor,
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
/// 	cdn "github.com/pulumi/pulumi-azure-native-sdk/cdn/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.NewProfile(ctx, "profile", &cdn.ProfileArgs{
/// 			Location:          pulumi.String("global"),
/// 			ProfileName:       pulumi.String("profile1"),
/// 			ResourceGroupName: pulumi.String("RG"),
/// 			Sku: &cdn.SkuArgs{
/// 				Name: pulumi.String(cdn.SkuName_Premium_AzureFrontDoor),
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
/// resource "azure-native_cdn_profile" "profile" {
///   location            = "global"
///   profile_name        = "profile1"
///   resource_group_name = "RG"
///   sku = {
///     name = "Premium_AzureFrontDoor"
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
/// import com.pulumi.azurenative.cdn.Profile;
/// import com.pulumi.azurenative.cdn.ProfileArgs;
/// import com.pulumi.azurenative.cdn.inputs.SkuArgs;
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
///         var profile = new Profile("profile", ProfileArgs.builder()
///             .location("global")
///             .profileName("profile1")
///             .resourceGroupName("RG")
///             .sku(SkuArgs.builder()
///                 .name("Premium_AzureFrontDoor")
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
/// const profile = new azure_native.cdn.Profile("profile", {
///     location: "global",
///     profileName: "profile1",
///     resourceGroupName: "RG",
///     sku: {
///         name: azure_native.cdn.SkuName.Premium_AzureFrontDoor,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// profile = azure_native.cdn.Profile("profile",
///     location="global",
///     profile_name="profile1",
///     resource_group_name="RG",
///     sku={
///         "name": azure_native.cdn.SkuName.PREMIUM_AZURE_FRONT_DOOR,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   profile:
///     type: azure-native:cdn:Profile
///     properties:
///       location: global
///       profileName: profile1
///       resourceGroupName: RG
///       sku:
///         name: Premium_AzureFrontDoor
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
/// $ pulumi import azure-native:cdn:Profile profile1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}
/// ```
class Profile extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Key-Value pair representing additional properties for profiles.
  late final pulumi.Output<Map<String, String>> extendedProperties;
  /// The Id of the frontdoor.
  late final pulumi.Output<String> frontDoorId;
  /// The managed service identities assigned to this resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// Kind of the profile. Used by portal to differentiate traditional CDN profile and new AFD profile.
  late final pulumi.Output<String> kind;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Defines rules that scrub sensitive fields in the Azure Front Door profile logs.
  late final pulumi.Output<ProfileLogScrubbingResponse?> logScrubbing;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Send and receive timeout on forwarding request to the origin. When timeout is reached, the request fails and returns.
  late final pulumi.Output<int?> originResponseTimeoutSeconds;
  /// Provisioning status of the profile.
  late final pulumi.Output<String> provisioningState;
  /// Resource status of the profile.
  late final pulumi.Output<String> resourceState;
  /// The pricing tier (defines Azure Front Door Standard or Premium or a CDN provider, feature list and rate) of the profile.
  late final pulumi.Output<SkuResponse> sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Profile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Profile]. {@macro pulumi_cdn_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Profile(
    String name, {
    ProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cdn:Profile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedProperties = registerOutput<Map<String, String>>('extendedProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    frontDoorId = registerOutput<String>('frontDoorId');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    logScrubbing = registerOutput<ProfileLogScrubbingResponse?>('logScrubbing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProfileLogScrubbingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    originResponseTimeoutSeconds = registerOutput<int?>('originResponseTimeoutSeconds');
    provisioningState = registerOutput<String>('provisioningState');
    resourceState = registerOutput<String>('resourceState');
    sku = registerOutput<SkuResponse>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Profile] resource.
  Profile.reference(String urn)
    : super(
        'azure-native:cdn:Profile',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedProperties = registerOutput<Map<String, String>>('extendedProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    frontDoorId = registerOutput<String>('frontDoorId');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    logScrubbing = registerOutput<ProfileLogScrubbingResponse?>('logScrubbing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProfileLogScrubbingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    originResponseTimeoutSeconds = registerOutput<int?>('originResponseTimeoutSeconds');
    provisioningState = registerOutput<String>('provisioningState');
    resourceState = registerOutput<String>('resourceState');
    sku = registerOutput<SkuResponse>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
