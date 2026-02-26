// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for MirroringEndpoint.
class MirroringEndpointArgs {
  /// User-provided description of the endpoint.
  /// Used as additional context for the endpoint.
  final Input<String>? description;

  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The cloud location of the endpoint, e.g. `us-central1-a` or `asia-south1-b`.
  final Input<String> location;

  /// The endpoint group that this endpoint belongs to.
  /// Format is:
  /// `projects/{project}/locations/{location}/mirroringEndpointGroups/{mirroringEndpointGroup}`
  final Input<String> mirroringEndpointGroup;

  /// The ID to use for the new endpoint, which will become the final
  /// component of the endpoint's resource name.
  final Input<String> mirroringEndpointId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

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
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      mirroringEndpointGroup:
          Input.asInput<String>(map['mirroringEndpointGroup']),
      mirroringEndpointId: Input.asInput<String>(map['mirroringEndpointId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
