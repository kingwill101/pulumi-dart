// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scaling_plan_host_pool.dart';
import 'scaling_plan_schedule.dart';

/// {@template pulumi_desktopvirtualization_scaling_plan_scaling_plan_args_doc}
/// The set of arguments for ScalingPlan.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_scaling_plan_scaling_plan_args_doc}
class ScalingPlanArgs {
  /// A description of the Scaling Plan.
  final pulumi.Input<String>? description;
  /// The name of the tag associated with the VMs you want to exclude from autoscaling.
  final pulumi.Input<String>? exclusionTag;
  /// Friendly name of the Scaling Plan.
  final pulumi.Input<String>? friendlyName;
  /// One or more `host_pool` blocks as defined below.
  final pulumi.Input<List<ScalingPlanHostPool>>? hostPools;
  /// The Azure Region where the Virtual Desktop Scaling Plan should exist. Changing this forces a new Virtual Desktop Scaling Plan to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Virtual Desktop Scaling Plan . Changing this forces a new Virtual Desktop Scaling Plan to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Virtual Desktop Scaling Plan should exist. Changing this forces a new Virtual Desktop Scaling Plan to be created.
  final pulumi.Input<String> resourceGroupName;
  /// One or more `schedule` blocks as defined below.
  final pulumi.Input<List<ScalingPlanSchedule>> schedules;
  /// A mapping of tags which should be assigned to the Virtual Desktop Scaling Plan .
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the Time Zone which should be used by the Scaling Plan for time based events, [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/).
  final pulumi.Input<String> timeZone;

  /// Creates a new [ScalingPlanArgs].
  /// [description] A description of the Scaling Plan.
  /// [exclusionTag] The name of the tag associated with the VMs you want to exclude from autoscaling.
  /// [friendlyName] Friendly name of the Scaling Plan.
  /// [hostPools] One or more `host_pool` blocks as defined below.
  /// [location] The Azure Region where the Virtual Desktop Scaling Plan should exist. Changing this forces a new Virtual Desktop Scaling Plan to be created.
  /// [name] The name which should be used for this Virtual Desktop Scaling Plan . Changing this forces a new Virtual Desktop Scaling Plan to be created.
  /// [resourceGroupName] The name of the Resource Group where the Virtual Desktop Scaling Plan should exist. Changing this forces a new Virtual Desktop Scaling Plan to be created.
  /// [schedules] One or more `schedule` blocks as defined below.
  /// [tags] A mapping of tags which should be assigned to the Virtual Desktop Scaling Plan .
  /// [timeZone] Specifies the Time Zone which should be used by the Scaling Plan for time based events, [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/).
  ScalingPlanArgs({
    String? description,
    String? exclusionTag,
    String? friendlyName,
    List<ScalingPlanHostPool>? hostPools,
    String? location,
    String? name,
    required String resourceGroupName,
    required List<ScalingPlanSchedule> schedules,
    Map<String, String>? tags,
    required String timeZone,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      exclusionTag = pulumi.Input.asOptionalInput<String>(exclusionTag),
      friendlyName = pulumi.Input.asOptionalInput<String>(friendlyName),
      hostPools = pulumi.Input.asOptionalInput<List<ScalingPlanHostPool>>(hostPools),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schedules = pulumi.Input.asInput<List<ScalingPlanSchedule>>(schedules),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeZone = pulumi.Input.asInput<String>(timeZone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'exclusionTag': ?exclusionTag,
      'friendlyName': ?friendlyName,
      'hostPools': ?pulumi.Input.mapOptionalInputValue<List<ScalingPlanHostPool>, List<Map<String, dynamic>>>(hostPools, (value) => pulumi.Input.encodeList<ScalingPlanHostPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'schedules': pulumi.Input.mapInputValue<List<ScalingPlanSchedule>, List<Map<String, dynamic>>>(schedules, (value) => pulumi.Input.encodeList<ScalingPlanSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'timeZone': timeZone,
    };
  }

  factory ScalingPlanArgs.fromMap(Map<String, dynamic> map) {
    return ScalingPlanArgs(
      description: map['description'] == null ? null : map['description'] as String,
      exclusionTag: map['exclusionTag'] == null ? null : map['exclusionTag'] as String,
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName'] as String,
      hostPools: map['hostPools'] == null ? null : pulumi.Input.decodeList<ScalingPlanHostPool>(map['hostPools'], (value) => ScalingPlanHostPool.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      schedules: pulumi.Input.decodeList<ScalingPlanSchedule>(map['schedules'], (value) => ScalingPlanSchedule.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      timeZone: map['timeZone'] as String,
    );
  }
}

