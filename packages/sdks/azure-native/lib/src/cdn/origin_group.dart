import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_probe_parameters_response.dart';
import 'origin_group_args.dart';
import 'resource_reference_response.dart';
import 'response_based_origin_error_detection_parameters_response.dart';
import 'system_data_response.dart';

/// Origin group comprising of origins is used for load balancing to origins when the content cannot be served from CDN.
///
/// Uses Azure REST API version 2025-06-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview, 2025-12-01, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### OriginGroups_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var originGroup = new AzureNative.Cdn.OriginGroup("originGroup", new()
///     {
///         EndpointName = "endpoint1",
///         HealthProbeSettings = new AzureNative.Cdn.Inputs.HealthProbeParametersArgs
///         {
///             ProbeIntervalInSeconds = 120,
///             ProbePath = "/health.aspx",
///             ProbeProtocol = AzureNative.Cdn.ProbeProtocol.Http,
///             ProbeRequestType = AzureNative.Cdn.HealthProbeRequestType.GET,
///         },
///         OriginGroupName = "origingroup1",
///         Origins = new[]
///         {
///             new AzureNative.Cdn.Inputs.ResourceReferenceArgs
///             {
///                 Id = "/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/endpoints/endpoint1/origins/origin1",
///             },
///         },
///         ProfileName = "profile1",
///         ResourceGroupName = "RG",
///         ResponseBasedOriginErrorDetectionSettings = new AzureNative.Cdn.Inputs.ResponseBasedOriginErrorDetectionParametersArgs
///         {
///             ResponseBasedDetectedErrorTypes = AzureNative.Cdn.ResponseBasedDetectedErrorTypes.TcpErrorsOnly,
///             ResponseBasedFailoverThresholdPercentage = 10,
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
/// 		_, err := cdn.NewOriginGroup(ctx, "originGroup", &cdn.OriginGroupArgs{
/// 			EndpointName: pulumi.String("endpoint1"),
/// 			HealthProbeSettings: &cdn.HealthProbeParametersArgs{
/// 				ProbeIntervalInSeconds: pulumi.Int(120),
/// 				ProbePath:              pulumi.String("/health.aspx"),
/// 				ProbeProtocol:          cdn.ProbeProtocolHttp,
/// 				ProbeRequestType:       cdn.HealthProbeRequestTypeGET,
/// 			},
/// 			OriginGroupName: pulumi.String("origingroup1"),
/// 			Origins: cdn.ResourceReferenceArray{
/// 				&cdn.ResourceReferenceArgs{
/// 					Id: pulumi.String("/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/endpoints/endpoint1/origins/origin1"),
/// 				},
/// 			},
/// 			ProfileName:       pulumi.String("profile1"),
/// 			ResourceGroupName: pulumi.String("RG"),
/// 			ResponseBasedOriginErrorDetectionSettings: &cdn.ResponseBasedOriginErrorDetectionParametersArgs{
/// 				ResponseBasedDetectedErrorTypes:          cdn.ResponseBasedDetectedErrorTypesTcpErrorsOnly,
/// 				ResponseBasedFailoverThresholdPercentage: pulumi.Int(10),
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
/// resource "azure-native_cdn_origingroup" "originGroup" {
///   endpoint_name = "endpoint1"
///   health_probe_settings = {
///     probe_interval_in_seconds = 120
///     probe_path                = "/health.aspx"
///     probe_protocol            = "Http"
///     probe_request_type        = "GET"
///   }
///   origin_group_name = "origingroup1"
///   origins {
///     id = "/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/endpoints/endpoint1/origins/origin1"
///   }
///   profile_name        = "profile1"
///   resource_group_name = "RG"
///   response_based_origin_error_detection_settings = {
///     response_based_detected_error_types          = "TcpErrorsOnly"
///     response_based_failover_threshold_percentage = 10
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
/// import com.pulumi.azurenative.cdn.OriginGroup;
/// import com.pulumi.azurenative.cdn.OriginGroupArgs;
/// import com.pulumi.azurenative.cdn.inputs.HealthProbeParametersArgs;
/// import com.pulumi.azurenative.cdn.inputs.ResourceReferenceArgs;
/// import com.pulumi.azurenative.cdn.inputs.ResponseBasedOriginErrorDetectionParametersArgs;
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
///         var originGroup = new OriginGroup("originGroup", OriginGroupArgs.builder()
///             .endpointName("endpoint1")
///             .healthProbeSettings(HealthProbeParametersArgs.builder()
///                 .probeIntervalInSeconds(120)
///                 .probePath("/health.aspx")
///                 .probeProtocol("Http")
///                 .probeRequestType("GET")
///                 .build())
///             .originGroupName("origingroup1")
///             .origins(ResourceReferenceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/endpoints/endpoint1/origins/origin1")
///                 .build())
///             .profileName("profile1")
///             .resourceGroupName("RG")
///             .responseBasedOriginErrorDetectionSettings(ResponseBasedOriginErrorDetectionParametersArgs.builder()
///                 .responseBasedDetectedErrorTypes("TcpErrorsOnly")
///                 .responseBasedFailoverThresholdPercentage(10)
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
/// const originGroup = new azure_native.cdn.OriginGroup("originGroup", {
///     endpointName: "endpoint1",
///     healthProbeSettings: {
///         probeIntervalInSeconds: 120,
///         probePath: "/health.aspx",
///         probeProtocol: azure_native.cdn.ProbeProtocol.Http,
///         probeRequestType: azure_native.cdn.HealthProbeRequestType.GET,
///     },
///     originGroupName: "origingroup1",
///     origins: [{
///         id: "/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/endpoints/endpoint1/origins/origin1",
///     }],
///     profileName: "profile1",
///     resourceGroupName: "RG",
///     responseBasedOriginErrorDetectionSettings: {
///         responseBasedDetectedErrorTypes: azure_native.cdn.ResponseBasedDetectedErrorTypes.TcpErrorsOnly,
///         responseBasedFailoverThresholdPercentage: 10,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// origin_group = azure_native.cdn.OriginGroup("originGroup",
///     endpoint_name="endpoint1",
///     health_probe_settings={
///         "probe_interval_in_seconds": 120,
///         "probe_path": "/health.aspx",
///         "probe_protocol": azure_native.cdn.ProbeProtocol.HTTP,
///         "probe_request_type": azure_native.cdn.HealthProbeRequestType.GET,
///     },
///     origin_group_name="origingroup1",
///     origins=[{
///         "id": "/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/endpoints/endpoint1/origins/origin1",
///     }],
///     profile_name="profile1",
///     resource_group_name="RG",
///     response_based_origin_error_detection_settings={
///         "response_based_detected_error_types": azure_native.cdn.ResponseBasedDetectedErrorTypes.TCP_ERRORS_ONLY,
///         "response_based_failover_threshold_percentage": 10,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   originGroup:
///     type: azure-native:cdn:OriginGroup
///     properties:
///       endpointName: endpoint1
///       healthProbeSettings:
///         probeIntervalInSeconds: 120
///         probePath: /health.aspx
///         probeProtocol: Http
///         probeRequestType: GET
///       originGroupName: origingroup1
///       origins:
///         - id: /subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/endpoints/endpoint1/origins/origin1
///       profileName: profile1
///       resourceGroupName: RG
///       responseBasedOriginErrorDetectionSettings:
///         responseBasedDetectedErrorTypes: TcpErrorsOnly
///         responseBasedFailoverThresholdPercentage: 10
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
/// $ pulumi import azure-native:cdn:OriginGroup origingroup1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/endpoints/{endpointName}/originGroups/{originGroupName}
/// ```
class OriginGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Health probe settings to the origin that is used to determine the health of the origin.
  late final pulumi.Output<HealthProbeParametersResponse?> healthProbeSettings;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The source of the content being delivered via CDN within given origin group.
  late final pulumi.Output<List<ResourceReferenceResponse>?> origins;
  /// Provisioning status of the origin group.
  late final pulumi.Output<String> provisioningState;
  /// Resource status of the origin group.
  late final pulumi.Output<String> resourceState;
  /// The JSON object that contains the properties to determine origin health using real requests/responses. This property is currently not supported.
  late final pulumi.Output<ResponseBasedOriginErrorDetectionParametersResponse?> responseBasedOriginErrorDetectionSettings;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Time in minutes to shift the traffic to the endpoint gradually when an unhealthy endpoint comes healthy or a new endpoint is added. Default is 10 mins. This property is currently not supported.
  late final pulumi.Output<int?> trafficRestorationTimeToHealedOrNewEndpointsInMinutes;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [OriginGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OriginGroup]. {@macro pulumi_cdn_origin_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OriginGroup(
    String name, {
    OriginGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cdn:OriginGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    healthProbeSettings = registerOutput<HealthProbeParametersResponse?>('healthProbeSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HealthProbeParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    origins = registerOutput<List<ResourceReferenceResponse>?>('origins', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceReferenceResponse>(guardedValue, (value) => ResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    resourceState = registerOutput<String>('resourceState');
    responseBasedOriginErrorDetectionSettings = registerOutput<ResponseBasedOriginErrorDetectionParametersResponse?>('responseBasedOriginErrorDetectionSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResponseBasedOriginErrorDetectionParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    trafficRestorationTimeToHealedOrNewEndpointsInMinutes = registerOutput<int?>('trafficRestorationTimeToHealedOrNewEndpointsInMinutes');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [OriginGroup] resource.
  OriginGroup.reference(String urn)
    : super(
        'azure-native:cdn:OriginGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    healthProbeSettings = registerOutput<HealthProbeParametersResponse?>('healthProbeSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HealthProbeParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    origins = registerOutput<List<ResourceReferenceResponse>?>('origins', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceReferenceResponse>(guardedValue, (value) => ResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    resourceState = registerOutput<String>('resourceState');
    responseBasedOriginErrorDetectionSettings = registerOutput<ResponseBasedOriginErrorDetectionParametersResponse?>('responseBasedOriginErrorDetectionSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResponseBasedOriginErrorDetectionParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    trafficRestorationTimeToHealedOrNewEndpointsInMinutes = registerOutput<int?>('trafficRestorationTimeToHealedOrNewEndpointsInMinutes');
    type = registerOutput<String>('type');
  }
}
