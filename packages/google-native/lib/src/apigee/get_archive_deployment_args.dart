// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_archive_deployment_args_doc}
/// Arguments for getArchiveDeployment.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_archive_deployment_args_doc}
class GetArchiveDeploymentArgs {
  final pulumi.Input<String> archiveDeploymentId;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetArchiveDeploymentArgs].
  /// [archiveDeploymentId] Required.
  /// [environmentId] Required.
  /// [organizationId] Required.
  GetArchiveDeploymentArgs({
    required String archiveDeploymentId,
    required String environmentId,
    required String organizationId,
  }) : archiveDeploymentId = pulumi.Input.asInput<String>(archiveDeploymentId),
       environmentId = pulumi.Input.asInput<String>(environmentId),
       organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveDeploymentId': archiveDeploymentId,
      'environmentId': environmentId,
      'organizationId': organizationId,
    };
  }

  factory GetArchiveDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetArchiveDeploymentArgs(
      archiveDeploymentId: map['archiveDeploymentId'] as String,
      environmentId: map['environmentId'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
