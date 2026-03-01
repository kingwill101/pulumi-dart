// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicemanagement_v1_get_rollout_args_doc}
/// Arguments for getRollout.
/// {@endtemplate}
/// {@macro pulumi_servicemanagement_v1_get_rollout_args_doc}
class GetRolloutArgs {
  final pulumi.Input<String> rolloutId;
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetRolloutArgs].
  /// [rolloutId] Required.
  /// [serviceName] Required.
  GetRolloutArgs({required String rolloutId, required String serviceName})
    : rolloutId = pulumi.Input.asInput<String>(rolloutId),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rolloutId': rolloutId,
      'serviceName': serviceName,
    };
  }

  factory GetRolloutArgs.fromMap(Map<String, dynamic> map) {
    return GetRolloutArgs(
      rolloutId: map['rolloutId'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}
