// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for EndpointAttachment.
class EndpointAttachmentArgs2 {
  /// Optional. Description of the resource.
  final Input<String>? description;

  /// Required. Identifier to assign to the EndpointAttachment. Must be unique within scope of the parent resource.
  final Input<String> endpointAttachmentId;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final Input<Map<String, String>>? labels;
  final Input<String>? location;
  final Input<String>? project;

  /// The path of the service attachment
  final Input<String> serviceAttachment;

  EndpointAttachmentArgs2({
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

  factory EndpointAttachmentArgs2.fromMap(Map<String, dynamic> map) {
    return EndpointAttachmentArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      endpointAttachmentId: Input.asInput<String>(map['endpointAttachmentId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceAttachment: Input.asInput<String>(map['serviceAttachment']),
    );
  }
}
