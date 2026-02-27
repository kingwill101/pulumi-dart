// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for MirroringDeployment.
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

  MirroringDeploymentArgs({
    this.description,
    required this.forwardingRule,
    this.labels,
    required this.location,
    required this.mirroringDeploymentGroup,
    required this.mirroringDeploymentId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['forwardingRule'] = forwardingRule;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    map['mirroringDeploymentGroup'] = mirroringDeploymentGroup;
    map['mirroringDeploymentId'] = mirroringDeploymentId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory MirroringDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return MirroringDeploymentArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      forwardingRule: pulumi.Input.asInput<String>(map['forwardingRule']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      mirroringDeploymentGroup:
          pulumi.Input.asInput<String>(map['mirroringDeploymentGroup']),
      mirroringDeploymentId:
          pulumi.Input.asInput<String>(map['mirroringDeploymentId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
