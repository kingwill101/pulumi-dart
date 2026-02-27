// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for InterceptDeploymentGroup.
class InterceptDeploymentGroupArgs {
  /// User-provided description of the deployment group.
  /// Used as additional context for the deployment group.
  final pulumi.Input<String>? description;

  /// The ID to use for the new deployment group, which will become the final
  /// component of the deployment group's resource name.
  final pulumi.Input<String> interceptDeploymentGroupId;

  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The cloud location of the deployment group, currently restricted to `global`.
  final pulumi.Input<String> location;

  /// The network that will be used for all child deployments, for example:
  /// `projects/{project}/global/networks/{network}`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  InterceptDeploymentGroupArgs({
    this.description,
    required this.interceptDeploymentGroupId,
    this.labels,
    required this.location,
    required this.network,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['interceptDeploymentGroupId'] = interceptDeploymentGroupId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    map['network'] = network;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory InterceptDeploymentGroupArgs.fromMap(Map<String, dynamic> map) {
    return InterceptDeploymentGroupArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      interceptDeploymentGroupId:
          pulumi.Input.asInput<String>(map['interceptDeploymentGroupId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      network: pulumi.Input.asInput<String>(map['network']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
