// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for MirroringDeployment.
class MirroringDeploymentArgs {
  /// User-provided description of the deployment.
  /// Used as additional context for the deployment.
  final Input<String>? description;

  /// The regional forwarding rule that fronts the mirroring collectors, for
  /// example: `projects/123456789/regions/us-central1/forwardingRules/my-rule`.
  /// See https://google.aip.dev/124.
  final Input<String> forwardingRule;

  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The cloud location of the deployment, e.g. `us-central1-a` or `asia-south1-b`.
  final Input<String> location;

  /// The deployment group that this deployment is a part of, for example:
  /// `projects/123456789/locations/global/mirroringDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  final Input<String> mirroringDeploymentGroup;

  /// The ID to use for the new deployment, which will become the final
  /// component of the deployment's resource name.
  final Input<String> mirroringDeploymentId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

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
      description: Input.asOptionalInput<String>(map['description']),
      forwardingRule: Input.asInput<String>(map['forwardingRule']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      mirroringDeploymentGroup:
          Input.asInput<String>(map['mirroringDeploymentGroup']),
      mirroringDeploymentId:
          Input.asInput<String>(map['mirroringDeploymentId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
