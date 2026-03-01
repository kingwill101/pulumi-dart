// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_entry.dart';

/// {@template pulumi_redis_patch_schedule_args_doc}
/// The set of arguments for PatchSchedule.
/// {@endtemplate}
/// {@macro pulumi_redis_patch_schedule_args_doc}
class PatchScheduleArgs {
  /// The name of the RedisPatchSchedule
  final pulumi.Input<String>? default_;
  /// The name of the redis cache.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// List of patch schedules for a Redis cache.
  final pulumi.Input<List<ScheduleEntry>> scheduleEntries;

  /// Creates a new [PatchScheduleArgs].
  /// [default_] The name of the RedisPatchSchedule
  /// [name] The name of the redis cache.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scheduleEntries] List of patch schedules for a Redis cache.
  PatchScheduleArgs({
    String? default_,
    required String name,
    required String resourceGroupName,
    required List<ScheduleEntry> scheduleEntries,
  }) :
      default_ = pulumi.Input.asOptionalInput<String>(default_),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scheduleEntries = pulumi.Input.asInput<List<ScheduleEntry>>(scheduleEntries);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': ?default_,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'scheduleEntries': pulumi.Input.mapInputValue<List<ScheduleEntry>, List<Map<String, dynamic>>>(scheduleEntries, (value) => pulumi.Input.encodeList<ScheduleEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PatchScheduleArgs.fromMap(Map<String, dynamic> map) {
    return PatchScheduleArgs(
      default_: map['default'] == null ? null : map['default'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      scheduleEntries: pulumi.Input.decodeList<ScheduleEntry>(map['scheduleEntries'], (value) => ScheduleEntry.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

