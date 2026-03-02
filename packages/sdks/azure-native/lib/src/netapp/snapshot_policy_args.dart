// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daily_schedule.dart';
import 'hourly_schedule.dart';
import 'monthly_schedule.dart';
import 'weekly_schedule.dart';

/// {@template pulumi_netapp_snapshot_policy_args_doc}
/// The set of arguments for SnapshotPolicy.
/// {@endtemplate}
/// {@macro pulumi_netapp_snapshot_policy_args_doc}
class SnapshotPolicyArgs {
  /// The name of the NetApp account
  final pulumi.Input<String> accountName;
  /// Schedule for daily snapshots
  final pulumi.Input<DailySchedule>? dailySchedule;
  /// The property to decide policy is enabled or not
  final pulumi.Input<bool>? enabled;
  /// Schedule for hourly snapshots
  final pulumi.Input<HourlySchedule>? hourlySchedule;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Schedule for monthly snapshots
  final pulumi.Input<MonthlySchedule>? monthlySchedule;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the snapshot policy
  final pulumi.Input<String>? snapshotPolicyName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Schedule for weekly snapshots
  final pulumi.Input<WeeklySchedule>? weeklySchedule;

  /// Creates a new [SnapshotPolicyArgs].
  /// [accountName] The name of the NetApp account
  /// [dailySchedule] Schedule for daily snapshots
  /// [enabled] The property to decide policy is enabled or not
  /// [hourlySchedule] Schedule for hourly snapshots
  /// [location] The geo-location where the resource lives
  /// [monthlySchedule] Schedule for monthly snapshots
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [snapshotPolicyName] The name of the snapshot policy
  /// [tags] Resource tags.
  /// [weeklySchedule] Schedule for weekly snapshots
  SnapshotPolicyArgs({
    required this.accountName,
    this.dailySchedule,
    this.enabled,
    this.hourlySchedule,
    this.location,
    this.monthlySchedule,
    required this.resourceGroupName,
    this.snapshotPolicyName,
    this.tags,
    this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'dailySchedule': ?pulumi.Input.mapOptionalInputValue<DailySchedule, Map<String, dynamic>>(dailySchedule, (value) => value.toMap()),
      'enabled': ?enabled,
      'hourlySchedule': ?pulumi.Input.mapOptionalInputValue<HourlySchedule, Map<String, dynamic>>(hourlySchedule, (value) => value.toMap()),
      'location': ?location,
      'monthlySchedule': ?pulumi.Input.mapOptionalInputValue<MonthlySchedule, Map<String, dynamic>>(monthlySchedule, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'snapshotPolicyName': ?snapshotPolicyName,
      'tags': ?tags,
      'weeklySchedule': ?pulumi.Input.mapOptionalInputValue<WeeklySchedule, Map<String, dynamic>>(weeklySchedule, (value) => value.toMap()),
    };
  }

  factory SnapshotPolicyArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotPolicyArgs(
      accountName: (map['accountName'] as String).input(),
      dailySchedule: map['dailySchedule'] == null ? null : (DailySchedule.fromMap((map['dailySchedule']! as Map).cast<String, dynamic>())).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      hourlySchedule: map['hourlySchedule'] == null ? null : (HourlySchedule.fromMap((map['hourlySchedule']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      monthlySchedule: map['monthlySchedule'] == null ? null : (MonthlySchedule.fromMap((map['monthlySchedule']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      snapshotPolicyName: map['snapshotPolicyName'] == null ? null : (map['snapshotPolicyName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      weeklySchedule: map['weeklySchedule'] == null ? null : (WeeklySchedule.fromMap((map['weeklySchedule']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

