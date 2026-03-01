// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_get_patch_schedule_args_doc}
/// Arguments for getPatchSchedule.
/// {@endtemplate}
/// {@macro pulumi_redis_get_patch_schedule_args_doc}
class GetPatchScheduleArgs {
  /// The name of the RedisPatchSchedule
  final pulumi.Input<String> default_;
  /// The name of the redis cache.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPatchScheduleArgs].
  /// [default_] The name of the RedisPatchSchedule
  /// [name] The name of the redis cache.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetPatchScheduleArgs({
    required String default_,
    required String name,
    required String resourceGroupName,
  }) :
      default_ = pulumi.Input.asInput<String>(default_),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': default_,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPatchScheduleArgs.fromMap(Map<String, dynamic> map) {
    return GetPatchScheduleArgs(
      default_: map['default'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

