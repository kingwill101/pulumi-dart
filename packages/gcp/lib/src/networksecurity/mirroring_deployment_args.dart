// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_mirroring_deployment_mirroring_deployment_args_doc}
/// The set of arguments for MirroringDeployment.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_mirroring_deployment_mirroring_deployment_args_doc}
class MirroringDeploymentArgs {
  /// User-provided description of the deployment.
  /// Used as additional context for the deployment.
  final pulumi.Input<String>? description;

  /// The regional forwarding rule that fronts the mirroring collectors, for
  /// example: `projects/123456789/regions/us-central1/forwardingRules/my-rule`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String> forwardingRule;

  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The cloud location of the deployment, e.g. `us-central1-a` or `asia-south1-b`.
  final pulumi.Input<String> location;

  /// The deployment group that this deployment is a part of, for example:
  /// `projects/123456789/locations/global/mirroringDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String> mirroringDeploymentGroup;

  /// The ID to use for the new deployment, which will become the final
  /// component of the deployment's resource name.
  final pulumi.Input<String> mirroringDeploymentId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [MirroringDeploymentArgs].
  /// [description] User-provided description of the deployment.
  /// [forwardingRule] The regional forwarding rule that fronts the mirroring collectors, for
  /// [labels] Labels are key/value pairs that help to organize and filter resources.
  /// [location] The cloud location of the deployment, e.g. `us-central1-a` or `asia-south1-b`.
  /// [mirroringDeploymentGroup] The deployment group that this deployment is a part of, for example:
  /// [mirroringDeploymentId] The ID to use for the new deployment, which will become the final
  /// [project] The ID of the project in which the resource belongs.
  MirroringDeploymentArgs({
    String? description,
    required String forwardingRule,
    Map<String, String>? labels,
    required String location,
    required String mirroringDeploymentGroup,
    required String mirroringDeploymentId,
    String? project,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       forwardingRule = pulumi.Input.asInput<String>(forwardingRule),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asInput<String>(location),
       mirroringDeploymentGroup = pulumi.Input.asInput<String>(
         mirroringDeploymentGroup,
       ),
       mirroringDeploymentId = pulumi.Input.asInput<String>(
         mirroringDeploymentId,
       ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'forwardingRule': forwardingRule,
      'labels': ?labels,
      'location': location,
      'mirroringDeploymentGroup': mirroringDeploymentGroup,
      'mirroringDeploymentId': mirroringDeploymentId,
      'project': ?project,
    };
  }

  factory MirroringDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return MirroringDeploymentArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      forwardingRule: map['forwardingRule'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      mirroringDeploymentGroup: map['mirroringDeploymentGroup'] as String,
      mirroringDeploymentId: map['mirroringDeploymentId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
