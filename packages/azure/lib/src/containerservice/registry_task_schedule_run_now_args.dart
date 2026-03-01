// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_registry_task_schedule_run_now_registry_task_schedule_run_now_args_doc}
/// The set of arguments for RegistryTaskScheduleRunNow.
/// {@endtemplate}
/// {@macro pulumi_containerservice_registry_task_schedule_run_now_registry_task_schedule_run_now_args_doc}
class RegistryTaskScheduleRunNowArgs {
  /// The ID of the Container Registry Task that to be scheduled. Changing this forces a new Container Registry Task Schedule to be created.
  final pulumi.Input<String> containerRegistryTaskId;

  /// Creates a new [RegistryTaskScheduleRunNowArgs].
  /// [containerRegistryTaskId] The ID of the Container Registry Task that to be scheduled. Changing this forces a new Container Registry Task Schedule to be created.
  RegistryTaskScheduleRunNowArgs({
    required String containerRegistryTaskId,
  }) :
      containerRegistryTaskId = pulumi.Input.asInput<String>(containerRegistryTaskId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistryTaskId': containerRegistryTaskId,
    };
  }

  factory RegistryTaskScheduleRunNowArgs.fromMap(Map<String, dynamic> map) {
    return RegistryTaskScheduleRunNowArgs(
      containerRegistryTaskId: map['containerRegistryTaskId'] as String,
    );
  }
}

