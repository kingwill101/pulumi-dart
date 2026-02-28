// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_target_server_args_doc}
/// Arguments for getTargetServer.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_target_server_args_doc}
class GetTargetServerArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> targetserverId;

  /// Creates a new [GetTargetServerArgs].
  /// [environmentId] Required.
  /// [organizationId] Required.
  /// [targetserverId] Required.
  GetTargetServerArgs({
    required String environmentId,
    required String organizationId,
    required String targetserverId,
  }) :
      environmentId = pulumi.Input.asInput<String>(environmentId),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      targetserverId = pulumi.Input.asInput<String>(targetserverId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'organizationId': organizationId,
      'targetserverId': targetserverId,
    };
  }

  factory GetTargetServerArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetServerArgs(
      environmentId: map['environmentId'] as String,
      organizationId: map['organizationId'] as String,
      targetserverId: map['targetserverId'] as String,
    );
  }
}

