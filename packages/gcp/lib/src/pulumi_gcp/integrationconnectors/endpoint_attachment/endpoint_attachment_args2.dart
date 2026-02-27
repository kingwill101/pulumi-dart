// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for EndpointAttachment.
class EndpointAttachmentArgs2 {
  /// Description of the resource.
  final Input<String>? description;

  /// Enable global access for endpoint attachment.
  final Input<bool>? endpointGlobalAccess;

  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Location in which Endpoint Attachment needs to be created.
  final Input<String> location;

  /// Name of Endpoint Attachment needs to be created.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The path of the service attachment.
  final Input<String> serviceAttachment;

  EndpointAttachmentArgs2({
    this.description,
    this.endpointGlobalAccess,
    this.labels,
    required this.location,
    this.name,
    this.project,
    required this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final endpointGlobalAccessValue = endpointGlobalAccess;
    if (endpointGlobalAccessValue != null) {
      map['endpointGlobalAccess'] = endpointGlobalAccessValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
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
      endpointGlobalAccess:
          Input.asOptionalInput<bool>(map['endpointGlobalAccess']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceAttachment: Input.asInput<String>(map['serviceAttachment']),
    );
  }
}
