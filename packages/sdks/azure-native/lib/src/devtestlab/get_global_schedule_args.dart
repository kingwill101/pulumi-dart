// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devtestlab_get_global_schedule_args_doc}
/// Arguments for getGlobalSchedule.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_get_global_schedule_args_doc}
class GetGlobalScheduleArgs {
  /// Specify the $expand query. Example: 'properties($select=status)'
  final pulumi.Input<String>? expand;
  /// The name of the Schedule
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGlobalScheduleArgs].
  /// [expand] Specify the $expand query. Example: 'properties($select=status)'
  /// [name] The name of the Schedule
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetGlobalScheduleArgs({
    this.expand,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGlobalScheduleArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalScheduleArgs(
      expand: map['expand'] == null ? null : (map['expand'] as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

