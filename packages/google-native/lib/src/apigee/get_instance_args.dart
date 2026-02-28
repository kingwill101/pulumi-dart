// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_instance_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_instance_args_doc}
class GetInstanceArgs {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetInstanceArgs].
  /// [instanceId] Required.
  /// [organizationId] Required.
  GetInstanceArgs({
    required String instanceId,
    required String organizationId,
  }) :
      instanceId = pulumi.Input.asInput<String>(instanceId),
      organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'organizationId': organizationId,
    };
  }

  factory GetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs(
      instanceId: map['instanceId'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}

