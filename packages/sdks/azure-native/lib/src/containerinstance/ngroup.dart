import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_profile_stub_response.dart';
import 'elastic_profile_response.dart';
import 'ngroup_args.dart';
import 'ngroup_identity_response.dart';
import 'placement_profile_response.dart';
import 'system_data_response.dart';
import 'update_profile_response.dart';

/// Describes the NGroups resource.
///
/// Uses Azure REST API version 2025-09-01. In version 2.x of the Azure Native provider, it used API version 2024-09-01-preview.
///
/// Other available API versions: 2024-09-01-preview, 2024-11-01-preview, 2026-06-01-preview, 2026-07-01, 2026-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerinstance [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NGroupsCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var nGroup = new AzureNative.ContainerInstance.NGroup("nGroup", new()
///     {
///         ContainerGroupProfiles = new[] {},
///         ElasticProfile = new AzureNative.ContainerInstance.Inputs.ElasticProfileArgs
///         {
///             DesiredCount = 1,
///             MaintainDesiredCount = true,
///         },
///         Location = "eastus",
///         NgroupsName = "demo-ngroup",
///         ResourceGroupName = "demo",
///         UpdateProfile = new AzureNative.ContainerInstance.Inputs.UpdateProfileArgs
///         {
///             UpdateMode = AzureNative.ContainerInstance.NGroupUpdateMode.Manual,
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
/// 	containerinstance "github.com/pulumi/pulumi-azure-native-sdk/containerinstance/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerinstance.NewNGroup(ctx, "nGroup", &containerinstance.NGroupArgs{
/// 			ContainerGroupProfiles: containerinstance.ContainerGroupProfileStubArray{},
/// 			ElasticProfile: &containerinstance.ElasticProfileArgs{
/// 				DesiredCount:         pulumi.Int(1),
/// 				MaintainDesiredCount: pulumi.Bool(true),
/// 			},
/// 			Location:          pulumi.String("eastus"),
/// 			NgroupsName:       pulumi.String("demo-ngroup"),
/// 			ResourceGroupName: pulumi.String("demo"),
/// 			UpdateProfile: &containerinstance.UpdateProfileArgs{
/// 				UpdateMode: pulumi.String(containerinstance.NGroupUpdateModeManual),
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
/// resource "azure-native_containerinstance_ngroup" "nGroup" {
///   elastic_profile = {
///     desired_count          = 1
///     maintain_desired_count = true
///   }
///   location            = "eastus"
///   ngroups_name        = "demo-ngroup"
///   resource_group_name = "demo"
///   update_profile = {
///     update_mode = "Manual"
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
/// import com.pulumi.azurenative.containerinstance.NGroup;
/// import com.pulumi.azurenative.containerinstance.NGroupArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ElasticProfileArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.UpdateProfileArgs;
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
///         var nGroup = new NGroup("nGroup", NGroupArgs.builder()
///             .containerGroupProfiles()
///             .elasticProfile(ElasticProfileArgs.builder()
///                 .desiredCount(1)
///                 .maintainDesiredCount(true)
///                 .build())
///             .location("eastus")
///             .ngroupsName("demo-ngroup")
///             .resourceGroupName("demo")
///             .updateProfile(UpdateProfileArgs.builder()
///                 .updateMode("Manual")
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
/// const nGroup = new azure_native.containerinstance.NGroup("nGroup", {
///     containerGroupProfiles: [],
///     elasticProfile: {
///         desiredCount: 1,
///         maintainDesiredCount: true,
///     },
///     location: "eastus",
///     ngroupsName: "demo-ngroup",
///     resourceGroupName: "demo",
///     updateProfile: {
///         updateMode: azure_native.containerinstance.NGroupUpdateMode.Manual,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// n_group = azure_native.containerinstance.NGroup("nGroup",
///     container_group_profiles=[],
///     elastic_profile={
///         "desired_count": 1,
///         "maintain_desired_count": True,
///     },
///     location="eastus",
///     ngroups_name="demo-ngroup",
///     resource_group_name="demo",
///     update_profile={
///         "update_mode": azure_native.containerinstance.NGroupUpdateMode.MANUAL,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   nGroup:
///     type: azure-native:containerinstance:NGroup
///     properties:
///       containerGroupProfiles: []
///       elasticProfile:
///         desiredCount: 1
///         maintainDesiredCount: true
///       location: eastus
///       ngroupsName: demo-ngroup
///       resourceGroupName: demo
///       updateProfile:
///         updateMode: Manual
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
/// $ pulumi import azure-native:containerinstance:NGroup demo-ngroup /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerInstance/ngroups/{ngroupsName}
/// ```
class NGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The Container Group Profiles that could be used in the NGroups resource.
  late final pulumi.Output<List<ContainerGroupProfileStubResponse>?> containerGroupProfiles;
  /// The elastic profile.
  late final pulumi.Output<ElasticProfileResponse?> elasticProfile;
  /// The identity of the NGroup, if configured.
  late final pulumi.Output<NGroupIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String?> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provides options w.r.t allocation and management w.r.t certain placement policies. These utilize capabilities provided by the underlying Azure infrastructure. They are typically used for high availability scenarios. E.g., distributing CGs across fault domains.
  late final pulumi.Output<PlacementProfileResponse?> placementProfile;
  /// The provisioning state, which only appears in the response.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Used by the customer to specify the way to update the Container Groups in NGroup.
  late final pulumi.Output<UpdateProfileResponse?> updateProfile;
  /// The availability zones.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [NGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NGroup]. {@macro pulumi_containerinstance_ngroup_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NGroup(
    String name, {
    NGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:containerinstance:NGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    containerGroupProfiles = registerOutput<List<ContainerGroupProfileStubResponse>?>('containerGroupProfiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerGroupProfileStubResponse>(guardedValue, (value) => ContainerGroupProfileStubResponse.fromMap((value as Map).cast<String, dynamic>())); });
    elasticProfile = registerOutput<ElasticProfileResponse?>('elasticProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ElasticProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<NGroupIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NGroupIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    placementProfile = registerOutput<PlacementProfileResponse?>('placementProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PlacementProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    updateProfile = registerOutput<UpdateProfileResponse?>('updateProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UpdateProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [NGroup] resource.
  NGroup.reference(String urn)
    : super(
        'azure-native:containerinstance:NGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    containerGroupProfiles = registerOutput<List<ContainerGroupProfileStubResponse>?>('containerGroupProfiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerGroupProfileStubResponse>(guardedValue, (value) => ContainerGroupProfileStubResponse.fromMap((value as Map).cast<String, dynamic>())); });
    elasticProfile = registerOutput<ElasticProfileResponse?>('elasticProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ElasticProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<NGroupIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NGroupIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    placementProfile = registerOutput<PlacementProfileResponse?>('placementProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PlacementProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    updateProfile = registerOutput<UpdateProfileResponse?>('updateProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UpdateProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
