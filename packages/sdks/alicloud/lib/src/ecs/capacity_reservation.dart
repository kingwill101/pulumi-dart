import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_reservation_args.dart';
import 'capacity_reservation_state.dart';

/// Provides a Ecs Capacity Reservation resource.
///
/// For information about Ecs Capacity Reservation and how to use it, see [What is Capacity Reservation](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/createcapacityreservation).
///
/// &gt; **NOTE:** Available since v1.195.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.ecs.getInstanceTypes({
///     instanceTypeFamily: "ecs.g5",
/// });
/// const defaultGetZones = _default.then(_default => alicloud.getZones({
///     availableResourceCreation: "Instance",
///     availableInstanceType: _default.ids?.[0],
/// }));
/// const defaultGetResourceGroups = alicloud.resourcemanager.getResourceGroups({
///     status: "OK",
/// });
/// const defaultCapacityReservation = new alicloud.ecs.CapacityReservation("default", {
///     description: "terraform-example",
///     platform: "linux",
///     capacityReservationName: "terraform-example",
///     endTimeType: "Unlimited",
///     resourceGroupId: defaultGetResourceGroups.then(defaultGetResourceGroups => defaultGetResourceGroups.ids?.[0]),
///     instanceAmount: 1,
///     instanceType: _default.then(_default => _default.ids?.[0]),
///     matchCriteria: "Open",
///     tags: {
///         Created: "terraform-example",
///     },
///     zoneIds: [defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[0]?.id)],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ecs.get_instance_types(instance_type_family="ecs.g5")
/// default_get_zones = alicloud.get_zones(available_resource_creation="Instance",
///     available_instance_type=default.ids[0])
/// default_get_resource_groups = alicloud.resourcemanager.get_resource_groups(status="OK")
/// default_capacity_reservation = alicloud.ecs.CapacityReservation("default",
///     description="terraform-example",
///     platform="linux",
///     capacity_reservation_name="terraform-example",
///     end_time_type="Unlimited",
///     resource_group_id=default_get_resource_groups.ids[0],
///     instance_amount=1,
///     instance_type=default.ids[0],
///     match_criteria="Open",
///     tags={
///         "Created": "terraform-example",
///     },
///     zone_ids=[default_get_zones.zones[0].id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         InstanceTypeFamily = "ecs.g5",
///     });
///
///     var defaultGetZones = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "Instance",
///         AvailableInstanceType = @default.Apply(getInstanceTypesResult => getInstanceTypesResult.Ids[0]),
///     });
///
///     var defaultGetResourceGroups = AliCloud.ResourceManager.GetResourceGroups.Invoke(new()
///     {
///         Status = "OK",
///     });
///
///     var defaultCapacityReservation = new AliCloud.Ecs.CapacityReservation("default", new()
///     {
///         Description = "terraform-example",
///         Platform = "linux",
///         CapacityReservationName = "terraform-example",
///         EndTimeType = "Unlimited",
///         ResourceGroupId = defaultGetResourceGroups.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0]),
///         InstanceAmount = 1,
///         InstanceType = @default.Apply(@default => @default.Apply(getInstanceTypesResult => getInstanceTypesResult.Ids[0])),
///         MatchCriteria = "Open",
///         Tags =
///         {
///             { "Created", "terraform-example" },
///         },
///         ZoneIds = new[]
///         {
///             defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			InstanceTypeFamily: pulumi.StringRef("ecs.g5"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetZones, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("Instance"),
/// 			AvailableInstanceType:     pulumi.StringRef(_default.Ids[0]),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetResourceGroups, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// 			Status: pulumi.StringRef("OK"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewCapacityReservation(ctx, "default", &ecs.CapacityReservationArgs{
/// 			Description:             pulumi.String("terraform-example"),
/// 			Platform:                pulumi.String("linux"),
/// 			CapacityReservationName: pulumi.String("terraform-example"),
/// 			EndTimeType:             pulumi.String("Unlimited"),
/// 			ResourceGroupId:         pulumi.String(defaultGetResourceGroups.Ids[0]),
/// 			InstanceAmount:          pulumi.Int(1),
/// 			InstanceType:            pulumi.String(_default.Ids[0]),
/// 			MatchCriteria:           pulumi.String("Open"),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("terraform-example"),
/// 			},
/// 			ZoneIds: pulumi.StringArray{
/// 				pulumi.String(defaultGetZones.Zones[0].Id),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.ecs.CapacityReservation;
/// import com.pulumi.alicloud.ecs.CapacityReservationArgs;
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
///         final var default = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .instanceTypeFamily("ecs.g5")
///             .build());
///
///         final var defaultGetZones = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("Instance")
///             .availableInstanceType(default_.ids()[0])
///             .build());
///
///         final var defaultGetResourceGroups = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .status("OK")
///             .build());
///
///         var defaultCapacityReservation = new CapacityReservation("defaultCapacityReservation", CapacityReservationArgs.builder()
///             .description("terraform-example")
///             .platform("linux")
///             .capacityReservationName("terraform-example")
///             .endTimeType("Unlimited")
///             .resourceGroupId(defaultGetResourceGroups.ids()[0])
///             .instanceAmount(1)
///             .instanceType(default_.ids()[0])
///             .matchCriteria("Open")
///             .tags(Map.of("Created", "terraform-example"))
///             .zoneIds(defaultGetZones.zones()[0].id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultCapacityReservation:
///     type: alicloud:ecs:CapacityReservation
///     name: default
///     properties:
///       description: terraform-example
///       platform: linux
///       capacityReservationName: terraform-example
///       endTimeType: Unlimited
///       resourceGroupId: ${defaultGetResourceGroups.ids[0]}
///       instanceAmount: 1
///       instanceType: ${default.ids[0]}
///       matchCriteria: Open
///       tags:
///         Created: terraform-example
///       zoneIds:
///         - ${defaultGetZones.zones[0].id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         instanceTypeFamily: ecs.g5
///   defaultGetZones:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: Instance
///         availableInstanceType: ${default.ids[0]}
///   defaultGetResourceGroups:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments:
///         status: OK
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Ecs Capacity Reservation can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/capacityReservation:CapacityReservation example <id>
/// ```
class CapacityReservation extends pulumi.CustomResource {
  /// Capacity reservation service name.
  late final pulumi.Output<String> capacityReservationName;

  /// description of the capacity reservation instance.
  late final pulumi.Output<String?> description;

  /// Specifies whether to pre-check the API request. Valid values: `true` and `false`.
  late final pulumi.Output<bool?> dryRun;

  /// end time of the capacity reservation. the capacity reservation will be  released at the end time automatically if set. otherwise it will last until manually released
  late final pulumi.Output<String> endTime;

  /// Release mode of capacity reservation service. Value range:Limited: release at specified time. The EndTime parameter must be specified at the same time.Unlimited: manual release. No time limit.
  late final pulumi.Output<String> endTimeType;

  /// The total number of instances that need to be reserved within the capacity reservation.
  late final pulumi.Output<int> instanceAmount;

  /// Instance type. Currently, you can only set the capacity reservation service for one instance type.
  late final pulumi.Output<String> instanceType;

  /// The type of private resource pool generated after the capacity reservation service takes effect. Value range:Open: Open mode.Target: dedicated mode.Default value: Open
  late final pulumi.Output<String> matchCriteria;

  /// The payment type of the resource
  late final pulumi.Output<String> paymentType;

  /// platform of the capacity reservation, value range `windows`, `linux`.
  late final pulumi.Output<String> platform;

  /// The resource group id.
  late final pulumi.Output<String?> resourceGroupId;

  /// time of the capacity reservation which become active.
  late final pulumi.Output<String> startTime;

  /// The capacity is scheduled to take effect. Possible values:-Now: Effective immediately.-Later: the specified time takes effect.
  late final pulumi.Output<String> startTimeType;

  /// The status of the capacity reservation.
  late final pulumi.Output<String> status;

  /// The tag of the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// This parameter is under test and is not yet open for use.
  late final pulumi.Output<String> timeSlot;

  /// The ID of the zone in the region to which the capacity reservation service belongs. Currently, it is only supported to create a capacity reservation service in one zone.
  late final pulumi.Output<List<String>> zoneIds;

  /// Creates a new [CapacityReservation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CapacityReservation]. {@macro pulumi_ecs_capacity_reservation_capacity_reservation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CapacityReservation(
    String name, {
    CapacityReservationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ecs/capacityReservation:CapacityReservation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    capacityReservationName = registerOutput<String>('capacityReservationName');
    description = registerOutput<String?>('description');
    dryRun = registerOutput<bool?>('dryRun');
    endTime = registerOutput<String>('endTime');
    endTimeType = registerOutput<String>('endTimeType');
    instanceAmount = registerOutput<int>('instanceAmount');
    instanceType = registerOutput<String>('instanceType');
    matchCriteria = registerOutput<String>('matchCriteria');
    paymentType = registerOutput<String>('paymentType');
    platform = registerOutput<String>('platform');
    resourceGroupId = registerOutput<String?>('resourceGroupId');
    startTime = registerOutput<String>('startTime');
    startTimeType = registerOutput<String>('startTimeType');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    timeSlot = registerOutput<String>('timeSlot');
    zoneIds = registerOutput<List<String>>('zoneIds');
  }

  /// Gets an existing [CapacityReservation] resource's state with the given [name] and [id].
  static CapacityReservation get(
    String name,
    pulumi.Input<String> id, {
    CapacityReservationState? state,
  }) {
    return CapacityReservation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CapacityReservation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ecs/capacityReservation:CapacityReservation',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    capacityReservationName = registerOutput<String>('capacityReservationName');
    description = registerOutput<String?>('description');
    dryRun = registerOutput<bool?>('dryRun');
    endTime = registerOutput<String>('endTime');
    endTimeType = registerOutput<String>('endTimeType');
    instanceAmount = registerOutput<int>('instanceAmount');
    instanceType = registerOutput<String>('instanceType');
    matchCriteria = registerOutput<String>('matchCriteria');
    paymentType = registerOutput<String>('paymentType');
    platform = registerOutput<String>('platform');
    resourceGroupId = registerOutput<String?>('resourceGroupId');
    startTime = registerOutput<String>('startTime');
    startTimeType = registerOutput<String>('startTimeType');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    timeSlot = registerOutput<String>('timeSlot');
    zoneIds = registerOutput<List<String>>('zoneIds');
  }
}
