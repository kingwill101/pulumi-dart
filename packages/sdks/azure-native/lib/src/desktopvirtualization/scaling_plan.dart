import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_model_with_allowed_property_set_response_identity.dart';
import 'resource_model_with_allowed_property_set_response_plan.dart';
import 'resource_model_with_allowed_property_set_response_sku.dart';
import 'scaling_plan_args.dart';
import 'system_data_response.dart';

/// Represents a scaling plan definition.
///
/// Uses Azure REST API version 2024-04-03. In version 2.x of the Azure Native provider, it used API version 2022-09-09.
///
/// Other available API versions: 2022-09-09, 2022-10-14-preview, 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ScalingPlans_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scalingPlan = new AzureNative.DesktopVirtualization.ScalingPlan("scalingPlan", new()
///     {
///         Description = "Description of Scaling Plan",
///         ExclusionTag = "value",
///         FriendlyName = "Scaling Plan 1",
///         HostPoolReferences = new[]
///         {
///             new AzureNative.DesktopVirtualization.Inputs.ScalingHostPoolReferenceArgs
///             {
///                 HostPoolArmPath = "/subscriptions/daefabc0-95b4-48b3-b645-8a753a63c4fa/resourceGroups/resourceGroup1/providers/Microsoft.DesktopVirtualization/hostPools/hostPool1",
///                 ScalingPlanEnabled = true,
///             },
///         },
///         HostPoolType = AzureNative.DesktopVirtualization.ScalingHostPoolType.Pooled,
///         Location = "centralus",
///         ResourceGroupName = "resourceGroup1",
///         ScalingPlanName = "scalingPlan1",
///         Schedules = new[]
///         {
///             new AzureNative.DesktopVirtualization.Inputs.ScalingScheduleArgs
///             {
///                 DaysOfWeek = new[]
///                 {
///                     "Monday",
///                     "Tuesday",
///                     "Wednesday",
///                     "Thursday",
///                     "Friday",
///                 },
///                 Name = "schedule1",
///                 OffPeakLoadBalancingAlgorithm = AzureNative.DesktopVirtualization.SessionHostLoadBalancingAlgorithm.DepthFirst,
///                 OffPeakStartTime = new AzureNative.DesktopVirtualization.Inputs.TimeArgs
///                 {
///                     Hour = 20,
///                     Minute = 0,
///                 },
///                 PeakLoadBalancingAlgorithm = AzureNative.DesktopVirtualization.SessionHostLoadBalancingAlgorithm.BreadthFirst,
///                 PeakStartTime = new AzureNative.DesktopVirtualization.Inputs.TimeArgs
///                 {
///                     Hour = 8,
///                     Minute = 0,
///                 },
///                 RampDownCapacityThresholdPct = 50,
///                 RampDownForceLogoffUsers = true,
///                 RampDownLoadBalancingAlgorithm = AzureNative.DesktopVirtualization.SessionHostLoadBalancingAlgorithm.DepthFirst,
///                 RampDownMinimumHostsPct = 20,
///                 RampDownNotificationMessage = "message",
///                 RampDownStartTime = new AzureNative.DesktopVirtualization.Inputs.TimeArgs
///                 {
///                     Hour = 18,
///                     Minute = 0,
///                 },
///                 RampDownWaitTimeMinutes = 30,
///                 RampUpCapacityThresholdPct = 80,
///                 RampUpLoadBalancingAlgorithm = AzureNative.DesktopVirtualization.SessionHostLoadBalancingAlgorithm.DepthFirst,
///                 RampUpMinimumHostsPct = 20,
///                 RampUpStartTime = new AzureNative.DesktopVirtualization.Inputs.TimeArgs
///                 {
///                     Hour = 6,
///                     Minute = 0,
///                 },
///             },
///         },
///         Tags =
///         {
///             { "tag1", "value1" },
///             { "tag2", "value2" },
///         },
///         TimeZone = "Central Standard Time",
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
/// 	desktopvirtualization "github.com/pulumi/pulumi-azure-native-sdk/desktopvirtualization/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := desktopvirtualization.NewScalingPlan(ctx, "scalingPlan", &desktopvirtualization.ScalingPlanArgs{
/// 			Description:  pulumi.String("Description of Scaling Plan"),
/// 			ExclusionTag: pulumi.String("value"),
/// 			FriendlyName: pulumi.String("Scaling Plan 1"),
/// 			HostPoolReferences: desktopvirtualization.ScalingHostPoolReferenceArray{
/// 				&desktopvirtualization.ScalingHostPoolReferenceArgs{
/// 					HostPoolArmPath:    pulumi.String("/subscriptions/daefabc0-95b4-48b3-b645-8a753a63c4fa/resourceGroups/resourceGroup1/providers/Microsoft.DesktopVirtualization/hostPools/hostPool1"),
/// 					ScalingPlanEnabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			HostPoolType:      pulumi.String(desktopvirtualization.ScalingHostPoolTypePooled),
/// 			Location:          pulumi.String("centralus"),
/// 			ResourceGroupName: pulumi.String("resourceGroup1"),
/// 			ScalingPlanName:   pulumi.String("scalingPlan1"),
/// 			Schedules: desktopvirtualization.ScalingScheduleArray{
/// 				&desktopvirtualization.ScalingScheduleArgs{
/// 					DaysOfWeek: pulumi.StringArray{
/// 						pulumi.String("Monday"),
/// 						pulumi.String("Tuesday"),
/// 						pulumi.String("Wednesday"),
/// 						pulumi.String("Thursday"),
/// 						pulumi.String("Friday"),
/// 					},
/// 					Name:                          pulumi.String("schedule1"),
/// 					OffPeakLoadBalancingAlgorithm: pulumi.String(desktopvirtualization.SessionHostLoadBalancingAlgorithmDepthFirst),
/// 					OffPeakStartTime: &desktopvirtualization.TimeArgs{
/// 						Hour:   pulumi.Int(20),
/// 						Minute: pulumi.Int(0),
/// 					},
/// 					PeakLoadBalancingAlgorithm: pulumi.String(desktopvirtualization.SessionHostLoadBalancingAlgorithmBreadthFirst),
/// 					PeakStartTime: &desktopvirtualization.TimeArgs{
/// 						Hour:   pulumi.Int(8),
/// 						Minute: pulumi.Int(0),
/// 					},
/// 					RampDownCapacityThresholdPct:   pulumi.Int(50),
/// 					RampDownForceLogoffUsers:       pulumi.Bool(true),
/// 					RampDownLoadBalancingAlgorithm: pulumi.String(desktopvirtualization.SessionHostLoadBalancingAlgorithmDepthFirst),
/// 					RampDownMinimumHostsPct:        pulumi.Int(20),
/// 					RampDownNotificationMessage:    pulumi.String("message"),
/// 					RampDownStartTime: &desktopvirtualization.TimeArgs{
/// 						Hour:   pulumi.Int(18),
/// 						Minute: pulumi.Int(0),
/// 					},
/// 					RampDownWaitTimeMinutes:      pulumi.Int(30),
/// 					RampUpCapacityThresholdPct:   pulumi.Int(80),
/// 					RampUpLoadBalancingAlgorithm: pulumi.String(desktopvirtualization.SessionHostLoadBalancingAlgorithmDepthFirst),
/// 					RampUpMinimumHostsPct:        pulumi.Int(20),
/// 					RampUpStartTime: &desktopvirtualization.TimeArgs{
/// 						Hour:   pulumi.Int(6),
/// 						Minute: pulumi.Int(0),
/// 					},
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
/// 				"tag2": pulumi.String("value2"),
/// 			},
/// 			TimeZone: pulumi.String("Central Standard Time"),
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
/// import com.pulumi.azurenative.desktopvirtualization.ScalingPlan;
/// import com.pulumi.azurenative.desktopvirtualization.ScalingPlanArgs;
/// import com.pulumi.azurenative.desktopvirtualization.inputs.ScalingHostPoolReferenceArgs;
/// import com.pulumi.azurenative.desktopvirtualization.inputs.ScalingScheduleArgs;
/// import com.pulumi.azurenative.desktopvirtualization.inputs.TimeArgs;
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
///         var scalingPlan = new ScalingPlan("scalingPlan", ScalingPlanArgs.builder()
///             .description("Description of Scaling Plan")
///             .exclusionTag("value")
///             .friendlyName("Scaling Plan 1")
///             .hostPoolReferences(ScalingHostPoolReferenceArgs.builder()
///                 .hostPoolArmPath("/subscriptions/daefabc0-95b4-48b3-b645-8a753a63c4fa/resourceGroups/resourceGroup1/providers/Microsoft.DesktopVirtualization/hostPools/hostPool1")
///                 .scalingPlanEnabled(true)
///                 .build())
///             .hostPoolType("Pooled")
///             .location("centralus")
///             .resourceGroupName("resourceGroup1")
///             .scalingPlanName("scalingPlan1")
///             .schedules(ScalingScheduleArgs.builder()
///                 .daysOfWeek(
///                     "Monday",
///                     "Tuesday",
///                     "Wednesday",
///                     "Thursday",
///                     "Friday")
///                 .name("schedule1")
///                 .offPeakLoadBalancingAlgorithm("DepthFirst")
///                 .offPeakStartTime(TimeArgs.builder()
///                     .hour(20)
///                     .minute(0)
///                     .build())
///                 .peakLoadBalancingAlgorithm("BreadthFirst")
///                 .peakStartTime(TimeArgs.builder()
///                     .hour(8)
///                     .minute(0)
///                     .build())
///                 .rampDownCapacityThresholdPct(50)
///                 .rampDownForceLogoffUsers(true)
///                 .rampDownLoadBalancingAlgorithm("DepthFirst")
///                 .rampDownMinimumHostsPct(20)
///                 .rampDownNotificationMessage("message")
///                 .rampDownStartTime(TimeArgs.builder()
///                     .hour(18)
///                     .minute(0)
///                     .build())
///                 .rampDownWaitTimeMinutes(30)
///                 .rampUpCapacityThresholdPct(80)
///                 .rampUpLoadBalancingAlgorithm("DepthFirst")
///                 .rampUpMinimumHostsPct(20)
///                 .rampUpStartTime(TimeArgs.builder()
///                     .hour(6)
///                     .minute(0)
///                     .build())
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "value1"),
///                 Map.entry("tag2", "value2")
///             ))
///             .timeZone("Central Standard Time")
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
/// const scalingPlan = new azure_native.desktopvirtualization.ScalingPlan("scalingPlan", {
///     description: "Description of Scaling Plan",
///     exclusionTag: "value",
///     friendlyName: "Scaling Plan 1",
///     hostPoolReferences: [{
///         hostPoolArmPath: "/subscriptions/daefabc0-95b4-48b3-b645-8a753a63c4fa/resourceGroups/resourceGroup1/providers/Microsoft.DesktopVirtualization/hostPools/hostPool1",
///         scalingPlanEnabled: true,
///     }],
///     hostPoolType: azure_native.desktopvirtualization.ScalingHostPoolType.Pooled,
///     location: "centralus",
///     resourceGroupName: "resourceGroup1",
///     scalingPlanName: "scalingPlan1",
///     schedules: [{
///         daysOfWeek: [
///             "Monday",
///             "Tuesday",
///             "Wednesday",
///             "Thursday",
///             "Friday",
///         ],
///         name: "schedule1",
///         offPeakLoadBalancingAlgorithm: azure_native.desktopvirtualization.SessionHostLoadBalancingAlgorithm.DepthFirst,
///         offPeakStartTime: {
///             hour: 20,
///             minute: 0,
///         },
///         peakLoadBalancingAlgorithm: azure_native.desktopvirtualization.SessionHostLoadBalancingAlgorithm.BreadthFirst,
///         peakStartTime: {
///             hour: 8,
///             minute: 0,
///         },
///         rampDownCapacityThresholdPct: 50,
///         rampDownForceLogoffUsers: true,
///         rampDownLoadBalancingAlgorithm: azure_native.desktopvirtualization.SessionHostLoadBalancingAlgorithm.DepthFirst,
///         rampDownMinimumHostsPct: 20,
///         rampDownNotificationMessage: "message",
///         rampDownStartTime: {
///             hour: 18,
///             minute: 0,
///         },
///         rampDownWaitTimeMinutes: 30,
///         rampUpCapacityThresholdPct: 80,
///         rampUpLoadBalancingAlgorithm: azure_native.desktopvirtualization.SessionHostLoadBalancingAlgorithm.DepthFirst,
///         rampUpMinimumHostsPct: 20,
///         rampUpStartTime: {
///             hour: 6,
///             minute: 0,
///         },
///     }],
///     tags: {
///         tag1: "value1",
///         tag2: "value2",
///     },
///     timeZone: "Central Standard Time",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// scaling_plan = azure_native.desktopvirtualization.ScalingPlan("scalingPlan",
///     description="Description of Scaling Plan",
///     exclusion_tag="value",
///     friendly_name="Scaling Plan 1",
///     host_pool_references=[{
///         "host_pool_arm_path": "/subscriptions/daefabc0-95b4-48b3-b645-8a753a63c4fa/resourceGroups/resourceGroup1/providers/Microsoft.DesktopVirtualization/hostPools/hostPool1",
///         "scaling_plan_enabled": True,
///     }],
///     host_pool_type=azure_native.desktopvirtualization.ScalingHostPoolType.POOLED,
///     location="centralus",
///     resource_group_name="resourceGroup1",
///     scaling_plan_name="scalingPlan1",
///     schedules=[{
///         "days_of_week": [
///             "Monday",
///             "Tuesday",
///             "Wednesday",
///             "Thursday",
///             "Friday",
///         ],
///         "name": "schedule1",
///         "off_peak_load_balancing_algorithm": azure_native.desktopvirtualization.SessionHostLoadBalancingAlgorithm.DEPTH_FIRST,
///         "off_peak_start_time": {
///             "hour": 20,
///             "minute": 0,
///         },
///         "peak_load_balancing_algorithm": azure_native.desktopvirtualization.SessionHostLoadBalancingAlgorithm.BREADTH_FIRST,
///         "peak_start_time": {
///             "hour": 8,
///             "minute": 0,
///         },
///         "ramp_down_capacity_threshold_pct": 50,
///         "ramp_down_force_logoff_users": True,
///         "ramp_down_load_balancing_algorithm": azure_native.desktopvirtualization.SessionHostLoadBalancingAlgorithm.DEPTH_FIRST,
///         "ramp_down_minimum_hosts_pct": 20,
///         "ramp_down_notification_message": "message",
///         "ramp_down_start_time": {
///             "hour": 18,
///             "minute": 0,
///         },
///         "ramp_down_wait_time_minutes": 30,
///         "ramp_up_capacity_threshold_pct": 80,
///         "ramp_up_load_balancing_algorithm": azure_native.desktopvirtualization.SessionHostLoadBalancingAlgorithm.DEPTH_FIRST,
///         "ramp_up_minimum_hosts_pct": 20,
///         "ramp_up_start_time": {
///             "hour": 6,
///             "minute": 0,
///         },
///     }],
///     tags={
///         "tag1": "value1",
///         "tag2": "value2",
///     },
///     time_zone="Central Standard Time")
///
/// ```
///
/// ```yaml
/// resources:
///   scalingPlan:
///     type: azure-native:desktopvirtualization:ScalingPlan
///     properties:
///       description: Description of Scaling Plan
///       exclusionTag: value
///       friendlyName: Scaling Plan 1
///       hostPoolReferences:
///         - hostPoolArmPath: /subscriptions/daefabc0-95b4-48b3-b645-8a753a63c4fa/resourceGroups/resourceGroup1/providers/Microsoft.DesktopVirtualization/hostPools/hostPool1
///           scalingPlanEnabled: true
///       hostPoolType: Pooled
///       location: centralus
///       resourceGroupName: resourceGroup1
///       scalingPlanName: scalingPlan1
///       schedules:
///         - daysOfWeek:
///             - Monday
///             - Tuesday
///             - Wednesday
///             - Thursday
///             - Friday
///           name: schedule1
///           offPeakLoadBalancingAlgorithm: DepthFirst
///           offPeakStartTime:
///             hour: 20
///             minute: 0
///           peakLoadBalancingAlgorithm: BreadthFirst
///           peakStartTime:
///             hour: 8
///             minute: 0
///           rampDownCapacityThresholdPct: 50
///           rampDownForceLogoffUsers: true
///           rampDownLoadBalancingAlgorithm: DepthFirst
///           rampDownMinimumHostsPct: 20
///           rampDownNotificationMessage: message
///           rampDownStartTime:
///             hour: 18
///             minute: 0
///           rampDownWaitTimeMinutes: 30
///           rampUpCapacityThresholdPct: 80
///           rampUpLoadBalancingAlgorithm: DepthFirst
///           rampUpMinimumHostsPct: 20
///           rampUpStartTime:
///             hour: 6
///             minute: 0
///       tags:
///         tag1: value1
///         tag2: value2
///       timeZone: Central Standard Time
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
/// $ pulumi import azure-native:desktopvirtualization:ScalingPlan scalingPlan1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DesktopVirtualization/scalingPlans/{scalingPlanName}
/// ```
class ScalingPlan extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Description of scaling plan.
  late final pulumi.Output<String?> description;

  /// The etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> etag;

  /// Exclusion tag for scaling plan.
  late final pulumi.Output<String?> exclusionTag;

  /// User friendly name of scaling plan.
  late final pulumi.Output<String?> friendlyName;

  /// List of ScalingHostPoolReference definitions.
  late final pulumi.Output<List<Map<String, dynamic>>?> hostPoolReferences;

  /// HostPool type for desktop.
  late final pulumi.Output<String?> hostPoolType;
  late final pulumi.Output<ResourceModelWithAllowedPropertySetResponseIdentity?>
  identity;

  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  late final pulumi.Output<String?> kind;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  late final pulumi.Output<String?> managedBy;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// ObjectId of scaling plan. (internal use)
  late final pulumi.Output<String> objectId;
  late final pulumi.Output<ResourceModelWithAllowedPropertySetResponsePlan?>
  plan;

  /// List of ScalingPlanPooledSchedule definitions.
  late final pulumi.Output<List<Map<String, dynamic>>?> schedules;
  late final pulumi.Output<ResourceModelWithAllowedPropertySetResponseSku?> sku;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Timezone of the scaling plan.
  late final pulumi.Output<String> timeZone;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ScalingPlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScalingPlan]. {@macro pulumi_desktopvirtualization_scaling_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScalingPlan(
    String name, {
    ScalingPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:desktopvirtualization:ScalingPlan',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    exclusionTag = registerOutput<String?>('exclusionTag');
    friendlyName = registerOutput<String?>('friendlyName');
    hostPoolReferences = registerOutput<List<Map<String, dynamic>>?>(
      'hostPoolReferences',
    );
    hostPoolType = registerOutput<String?>('hostPoolType');
    identity =
        registerOutput<ResourceModelWithAllowedPropertySetResponseIdentity?>(
          'identity',
        );
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    managedBy = registerOutput<String?>('managedBy');
    this.name = registerOutput<String>('name');
    objectId = registerOutput<String>('objectId');
    plan = registerOutput<ResourceModelWithAllowedPropertySetResponsePlan?>(
      'plan',
    );
    schedules = registerOutput<List<Map<String, dynamic>>?>('schedules');
    sku = registerOutput<ResourceModelWithAllowedPropertySetResponseSku?>(
      'sku',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    timeZone = registerOutput<String>('timeZone');
    type = registerOutput<String>('type');
  }
}
