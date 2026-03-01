// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_ecs_session_manager_status_ecs_session_manager_status_args_doc}
/// The set of arguments for EcsSessionManagerStatus.
/// {@endtemplate}
/// {@macro pulumi_ecs_ecs_session_manager_status_ecs_session_manager_status_args_doc}
class EcsSessionManagerStatusArgs {
  /// The name of the Session Manager Status. Valid values: `sessionManagerStatus`.
  final pulumi.Input<String> sessionManagerStatusName;
  /// The status of the Session Manager Status. Valid values: `Enabled`, `Disabled`.
  final pulumi.Input<String> status;

  /// Creates a new [EcsSessionManagerStatusArgs].
  /// [sessionManagerStatusName] The name of the Session Manager Status. Valid values: `sessionManagerStatus`.
  /// [status] The status of the Session Manager Status. Valid values: `Enabled`, `Disabled`.
  EcsSessionManagerStatusArgs({
    required String sessionManagerStatusName,
    required String status,
  }) :
      sessionManagerStatusName = pulumi.Input.asInput<String>(sessionManagerStatusName),
      status = pulumi.Input.asInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sessionManagerStatusName': sessionManagerStatusName,
      'status': status,
    };
  }

  factory EcsSessionManagerStatusArgs.fromMap(Map<String, dynamic> map) {
    return EcsSessionManagerStatusArgs(
      sessionManagerStatusName: map['sessionManagerStatusName'] as String,
      status: map['status'] as String,
    );
  }
}

