// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EndpointAttachment.
class EndpointAttachmentConnectorsV1Args {
  /// Optional. Description of the resource.
  final pulumi.Input<String>? description;

  /// Required. Identifier to assign to the EndpointAttachment. Must be unique within scope of the parent resource.
  final pulumi.Input<String> endpointAttachmentId;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// The path of the service attachment
  final pulumi.Input<String> serviceAttachment;

  EndpointAttachmentConnectorsV1Args({
    this.description,
    required this.endpointAttachmentId,
    this.labels,
    this.location,
    this.project,
    required this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['endpointAttachmentId'] = endpointAttachmentId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceAttachment'] = serviceAttachment;
    return map;
  }

  factory EndpointAttachmentConnectorsV1Args.fromMap(Map<String, dynamic> map) {
    return EndpointAttachmentConnectorsV1Args(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      endpointAttachmentId:
          pulumi.Input.asInput<String>(map['endpointAttachmentId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceAttachment: pulumi.Input.asInput<String>(map['serviceAttachment']),
    );
  }
}
