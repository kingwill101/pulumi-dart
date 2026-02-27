// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for InterceptDeployment.
class InterceptDeploymentArgs {
  /// User-provided description of the deployment.
  /// Used as additional context for the deployment.
  final pulumi.Input<String>? description;

  /// The regional forwarding rule that fronts the interceptors, for example:
  /// `projects/123456789/regions/us-central1/forwardingRules/my-rule`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String> forwardingRule;

  /// The deployment group that this deployment is a part of, for example:
  /// `projects/123456789/locations/global/interceptDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String> interceptDeploymentGroup;

  /// The ID to use for the new deployment, which will become the final
  /// component of the deployment's resource name.
  final pulumi.Input<String> interceptDeploymentId;

  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The cloud location of the deployment, e.g. `us-central1-a` or `asia-south1-b`.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  InterceptDeploymentArgs({
    this.description,
    required this.forwardingRule,
    required this.interceptDeploymentGroup,
    required this.interceptDeploymentId,
    this.labels,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['forwardingRule'] = forwardingRule;
    map['interceptDeploymentGroup'] = interceptDeploymentGroup;
    map['interceptDeploymentId'] = interceptDeploymentId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory InterceptDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return InterceptDeploymentArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      forwardingRule: pulumi.Input.asInput<String>(map['forwardingRule']),
      interceptDeploymentGroup:
          pulumi.Input.asInput<String>(map['interceptDeploymentGroup']),
      interceptDeploymentId:
          pulumi.Input.asInput<String>(map['interceptDeploymentId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
