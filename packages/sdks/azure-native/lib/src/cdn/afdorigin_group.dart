import 'package:pulumi/pulumi.dart' as pulumi;
import 'afdorigin_group_args.dart';
import 'health_probe_parameters_response.dart';
import 'load_balancing_settings_parameters_response.dart';
import 'origin_authentication_properties_response.dart';
import 'system_data_response.dart';

/// AFDOrigin group comprising of origins is used for load balancing to origins when the content cannot be served from Azure Front Door.
///
/// Uses Azure REST API version 2025-06-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AFDOriginGroups_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var afdOriginGroup = new AzureNative.Cdn.AFDOriginGroup("afdOriginGroup", new()
///     {
///         Authentication = new AzureNative.Cdn.Inputs.OriginAuthenticationPropertiesArgs
///         {
///             Scope = "https://www.contoso.com/.default",
///             Type = AzureNative.Cdn.OriginAuthenticationType.UserAssignedIdentity,
///             UserAssignedIdentity = new AzureNative.Cdn.Inputs.ResourceReferenceArgs
///             {
///                 Id = "/subscriptions/subid/resourcegroups/RG/providers/Microsoft.ManagedIdentity/userAssignedIdentities/user-assigned-id-1",
///             },
///         },
///         HealthProbeSettings = new AzureNative.Cdn.Inputs.HealthProbeParametersArgs
///         {
///             ProbeIntervalInSeconds = 10,
///             ProbePath = "/path2",
///             ProbeProtocol = AzureNative.Cdn.ProbeProtocol.NotSet,
///             ProbeRequestType = AzureNative.Cdn.HealthProbeRequestType.NotSet,
///         },
///         LoadBalancingSettings = new AzureNative.Cdn.Inputs.LoadBalancingSettingsParametersArgs
///         {
///             AdditionalLatencyInMilliseconds = 1000,
///             SampleSize = 3,
///             SuccessfulSamplesRequired = 3,
///         },
///         OriginGroupName = "origingroup1",
///         ProfileName = "profile1",
///         ResourceGroupName = "RG",
///         TrafficRestorationTimeToHealedOrNewEndpointsInMinutes = 5,
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
/// 		_, err := cdn.NewAFDOriginGroup(ctx, "afdOriginGroup", &cdn.AFDOriginGroupArgs{
/// 			Authentication: &cdn.OriginAuthenticationPropertiesArgs{
/// 				Scope: pulumi.String("https://www.contoso.com/.default"),
/// 				Type:  pulumi.String(cdn.OriginAuthenticationTypeUserAssignedIdentity),
/// 				UserAssignedIdentity: &cdn.ResourceReferenceArgs{
/// 					Id: pulumi.String("/subscriptions/subid/resourcegroups/RG/providers/Microsoft.ManagedIdentity/userAssignedIdentities/user-assigned-id-1"),
/// 				},
/// 			},
/// 			HealthProbeSettings: &cdn.HealthProbeParametersArgs{
/// 				ProbeIntervalInSeconds: pulumi.Int(10),
/// 				ProbePath:              pulumi.String("/path2"),
/// 				ProbeProtocol:          cdn.ProbeProtocolNotSet,
/// 				ProbeRequestType:       cdn.HealthProbeRequestTypeNotSet,
/// 			},
/// 			LoadBalancingSettings: &cdn.LoadBalancingSettingsParametersArgs{
/// 				AdditionalLatencyInMilliseconds: pulumi.Int(1000),
/// 				SampleSize:                      pulumi.Int(3),
/// 				SuccessfulSamplesRequired:       pulumi.Int(3),
/// 			},
/// 			OriginGroupName:   pulumi.String("origingroup1"),
/// 			ProfileName:       pulumi.String("profile1"),
/// 			ResourceGroupName: pulumi.String("RG"),
/// 			TrafficRestorationTimeToHealedOrNewEndpointsInMinutes: pulumi.Int(5),
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
/// import com.pulumi.azurenative.cdn.AFDOriginGroup;
/// import com.pulumi.azurenative.cdn.AFDOriginGroupArgs;
/// import com.pulumi.azurenative.cdn.inputs.OriginAuthenticationPropertiesArgs;
/// import com.pulumi.azurenative.cdn.inputs.ResourceReferenceArgs;
/// import com.pulumi.azurenative.cdn.inputs.HealthProbeParametersArgs;
/// import com.pulumi.azurenative.cdn.inputs.LoadBalancingSettingsParametersArgs;
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
///         var afdOriginGroup = new AFDOriginGroup("afdOriginGroup", AFDOriginGroupArgs.builder()
///             .authentication(OriginAuthenticationPropertiesArgs.builder()
///                 .scope("https://www.contoso.com/.default")
///                 .type("UserAssignedIdentity")
///                 .userAssignedIdentity(ResourceReferenceArgs.builder()
///                     .id("/subscriptions/subid/resourcegroups/RG/providers/Microsoft.ManagedIdentity/userAssignedIdentities/user-assigned-id-1")
///                     .build())
///                 .build())
///             .healthProbeSettings(HealthProbeParametersArgs.builder()
///                 .probeIntervalInSeconds(10)
///                 .probePath("/path2")
///                 .probeProtocol("NotSet")
///                 .probeRequestType("NotSet")
///                 .build())
///             .loadBalancingSettings(LoadBalancingSettingsParametersArgs.builder()
///                 .additionalLatencyInMilliseconds(1000)
///                 .sampleSize(3)
///                 .successfulSamplesRequired(3)
///                 .build())
///             .originGroupName("origingroup1")
///             .profileName("profile1")
///             .resourceGroupName("RG")
///             .trafficRestorationTimeToHealedOrNewEndpointsInMinutes(5)
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
/// const afdOriginGroup = new azure_native.cdn.AFDOriginGroup("afdOriginGroup", {
///     authentication: {
///         scope: "https://www.contoso.com/.default",
///         type: azure_native.cdn.OriginAuthenticationType.UserAssignedIdentity,
///         userAssignedIdentity: {
///             id: "/subscriptions/subid/resourcegroups/RG/providers/Microsoft.ManagedIdentity/userAssignedIdentities/user-assigned-id-1",
///         },
///     },
///     healthProbeSettings: {
///         probeIntervalInSeconds: 10,
///         probePath: "/path2",
///         probeProtocol: azure_native.cdn.ProbeProtocol.NotSet,
///         probeRequestType: azure_native.cdn.HealthProbeRequestType.NotSet,
///     },
///     loadBalancingSettings: {
///         additionalLatencyInMilliseconds: 1000,
///         sampleSize: 3,
///         successfulSamplesRequired: 3,
///     },
///     originGroupName: "origingroup1",
///     profileName: "profile1",
///     resourceGroupName: "RG",
///     trafficRestorationTimeToHealedOrNewEndpointsInMinutes: 5,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// afd_origin_group = azure_native.cdn.AFDOriginGroup("afdOriginGroup",
///     authentication={
///         "scope": "https://www.contoso.com/.default",
///         "type": azure_native.cdn.OriginAuthenticationType.USER_ASSIGNED_IDENTITY,
///         "user_assigned_identity": {
///             "id": "/subscriptions/subid/resourcegroups/RG/providers/Microsoft.ManagedIdentity/userAssignedIdentities/user-assigned-id-1",
///         },
///     },
///     health_probe_settings={
///         "probe_interval_in_seconds": 10,
///         "probe_path": "/path2",
///         "probe_protocol": azure_native.cdn.ProbeProtocol.NOT_SET,
///         "probe_request_type": azure_native.cdn.HealthProbeRequestType.NOT_SET,
///     },
///     load_balancing_settings={
///         "additional_latency_in_milliseconds": 1000,
///         "sample_size": 3,
///         "successful_samples_required": 3,
///     },
///     origin_group_name="origingroup1",
///     profile_name="profile1",
///     resource_group_name="RG",
///     traffic_restoration_time_to_healed_or_new_endpoints_in_minutes=5)
///
/// ```
///
/// ```yaml
/// resources:
///   afdOriginGroup:
///     type: azure-native:cdn:AFDOriginGroup
///     properties:
///       authentication:
///         scope: https://www.contoso.com/.default
///         type: UserAssignedIdentity
///         userAssignedIdentity:
///           id: /subscriptions/subid/resourcegroups/RG/providers/Microsoft.ManagedIdentity/userAssignedIdentities/user-assigned-id-1
///       healthProbeSettings:
///         probeIntervalInSeconds: 10
///         probePath: /path2
///         probeProtocol: NotSet
///         probeRequestType: NotSet
///       loadBalancingSettings:
///         additionalLatencyInMilliseconds: 1000
///         sampleSize: 3
///         successfulSamplesRequired: 3
///       originGroupName: origingroup1
///       profileName: profile1
///       resourceGroupName: RG
///       trafficRestorationTimeToHealedOrNewEndpointsInMinutes: 5
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
/// $ pulumi import azure-native:cdn:AFDOriginGroup origingroup1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/originGroups/{originGroupName}
/// ```
class AFDOriginGroup extends pulumi.CustomResource {
  /// Authentication settings for origin in origin group.
  late final pulumi.Output<OriginAuthenticationPropertiesResponse?> authentication;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  late final pulumi.Output<String> deploymentStatus;
  /// Health probe settings to the origin that is used to determine the health of the origin.
  late final pulumi.Output<HealthProbeParametersResponse?> healthProbeSettings;
  /// Load balancing settings for a backend pool
  late final pulumi.Output<LoadBalancingSettingsParametersResponse?> loadBalancingSettings;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The name of the profile which holds the origin group.
  late final pulumi.Output<String> profileName;
  /// Provisioning status
  late final pulumi.Output<String> provisioningState;
  /// Whether to allow session affinity on this host. Valid options are 'Enabled' or 'Disabled'
  late final pulumi.Output<String?> sessionAffinityState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Time in minutes to shift the traffic to the endpoint gradually when an unhealthy endpoint comes healthy or a new endpoint is added. Default is 10 mins. This property is currently not supported.
  late final pulumi.Output<int?> trafficRestorationTimeToHealedOrNewEndpointsInMinutes;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AFDOriginGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AFDOriginGroup]. {@macro pulumi_cdn_afdorigin_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AFDOriginGroup(
    String name, {
    AFDOriginGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cdn:AFDOriginGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authentication = registerOutput<OriginAuthenticationPropertiesResponse?>('authentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OriginAuthenticationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    deploymentStatus = registerOutput<String>('deploymentStatus');
    healthProbeSettings = registerOutput<HealthProbeParametersResponse?>('healthProbeSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HealthProbeParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    loadBalancingSettings = registerOutput<LoadBalancingSettingsParametersResponse?>('loadBalancingSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancingSettingsParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    profileName = registerOutput<String>('profileName');
    provisioningState = registerOutput<String>('provisioningState');
    sessionAffinityState = registerOutput<String?>('sessionAffinityState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    trafficRestorationTimeToHealedOrNewEndpointsInMinutes = registerOutput<int?>('trafficRestorationTimeToHealedOrNewEndpointsInMinutes');
    type = registerOutput<String>('type');
  }
}
