// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_security_action_args_doc}
/// Arguments for getSecurityAction.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_security_action_args_doc}
class GetSecurityActionArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> securityActionId;

  /// Creates a new [GetSecurityActionArgs].
  /// [environmentId] Required.
  /// [organizationId] Required.
  /// [securityActionId] Required.
  GetSecurityActionArgs({
    required String environmentId,
    required String organizationId,
    required String securityActionId,
  })  : environmentId = pulumi.Input.asInput<String>(environmentId),
        organizationId = pulumi.Input.asInput<String>(organizationId),
        securityActionId = pulumi.Input.asInput<String>(securityActionId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environmentId'] = environmentId;
    map['organizationId'] = organizationId;
    map['securityActionId'] = securityActionId;
    return map;
  }

  factory GetSecurityActionArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityActionArgs(
      environmentId: map['environmentId'] as String,
      organizationId: map['organizationId'] as String,
      securityActionId: map['securityActionId'] as String,
    );
  }
}
