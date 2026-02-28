// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_environment_args_doc}
/// Arguments for getEnvironment.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_environment_args_doc}
class GetEnvironmentArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetEnvironmentArgs].
  /// [environmentId] Required.
  /// [organizationId] Required.
  GetEnvironmentArgs({
    required String environmentId,
    required String organizationId,
  }) :
      environmentId = pulumi.Input.asInput<String>(environmentId),
      organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'organizationId': organizationId,
    };
  }

  factory GetEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentArgs(
      environmentId: map['environmentId'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}

