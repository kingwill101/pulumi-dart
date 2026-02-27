// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for MirroringEndpoint.
class MirroringEndpointArgs {
  /// User-provided description of the endpoint.
  /// Used as additional context for the endpoint.
  final pulumi.Input<String>? description;

  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The cloud location of the endpoint, e.g. `us-central1-a` or `asia-south1-b`.
  final pulumi.Input<String> location;

  /// The endpoint group that this endpoint belongs to.
  /// Format is:
  /// `projects/{project}/locations/{location}/mirroringEndpointGroups/{mirroringEndpointGroup}`
  final pulumi.Input<String> mirroringEndpointGroup;

  /// The ID to use for the new endpoint, which will become the final
  /// component of the endpoint's resource name.
  final pulumi.Input<String> mirroringEndpointId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  MirroringEndpointArgs({
    this.description,
    this.labels,
    required this.location,
    required this.mirroringEndpointGroup,
    required this.mirroringEndpointId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    map['mirroringEndpointGroup'] = mirroringEndpointGroup;
    map['mirroringEndpointId'] = mirroringEndpointId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory MirroringEndpointArgs.fromMap(Map<String, dynamic> map) {
    return MirroringEndpointArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      mirroringEndpointGroup:
          pulumi.Input.asInput<String>(map['mirroringEndpointGroup']),
      mirroringEndpointId:
          pulumi.Input.asInput<String>(map['mirroringEndpointId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
