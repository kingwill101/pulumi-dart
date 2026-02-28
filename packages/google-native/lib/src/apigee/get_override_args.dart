// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_override_args_doc}
/// Arguments for getOverride.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_override_args_doc}
class GetOverrideArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> overrideId;

  /// Creates a new [GetOverrideArgs].
  /// [environmentId] Required.
  /// [organizationId] Required.
  /// [overrideId] Required.
  GetOverrideArgs({
    required String environmentId,
    required String organizationId,
    required String overrideId,
  }) :
      environmentId = pulumi.Input.asInput<String>(environmentId),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      overrideId = pulumi.Input.asInput<String>(overrideId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'organizationId': organizationId,
      'overrideId': overrideId,
    };
  }

  factory GetOverrideArgs.fromMap(Map<String, dynamic> map) {
    return GetOverrideArgs(
      environmentId: map['environmentId'] as String,
      organizationId: map['organizationId'] as String,
      overrideId: map['overrideId'] as String,
    );
  }
}

