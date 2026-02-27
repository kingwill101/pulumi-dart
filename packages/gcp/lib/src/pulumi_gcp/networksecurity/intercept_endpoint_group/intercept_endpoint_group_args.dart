// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for InterceptEndpointGroup.
class InterceptEndpointGroupArgs {
  /// User-provided description of the endpoint group.
  /// Used as additional context for the endpoint group.
  final pulumi.Input<String>? description;

  /// The deployment group that this endpoint group is connected to, for example:
  /// `projects/123456789/locations/global/interceptDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String> interceptDeploymentGroup;

  /// The ID to use for the endpoint group, which will become the final component
  /// of the endpoint group's resource name.
  final pulumi.Input<String> interceptEndpointGroupId;

  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The cloud location of the endpoint group, currently restricted to `global`.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  InterceptEndpointGroupArgs({
    this.description,
    required this.interceptDeploymentGroup,
    required this.interceptEndpointGroupId,
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
    map['interceptDeploymentGroup'] = interceptDeploymentGroup;
    map['interceptEndpointGroupId'] = interceptEndpointGroupId;
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

  factory InterceptEndpointGroupArgs.fromMap(Map<String, dynamic> map) {
    return InterceptEndpointGroupArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      interceptDeploymentGroup:
          pulumi.Input.asInput<String>(map['interceptDeploymentGroup']),
      interceptEndpointGroupId:
          pulumi.Input.asInput<String>(map['interceptEndpointGroupId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
