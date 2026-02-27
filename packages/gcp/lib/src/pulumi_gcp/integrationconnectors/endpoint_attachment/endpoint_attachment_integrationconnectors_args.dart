// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EndpointAttachment.
class EndpointAttachmentIntegrationconnectorsArgs {
  /// Description of the resource.
  final pulumi.Input<String>? description;

  /// Enable global access for endpoint attachment.
  final pulumi.Input<bool>? endpointGlobalAccess;

  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Location in which Endpoint Attachment needs to be created.
  final pulumi.Input<String> location;

  /// Name of Endpoint Attachment needs to be created.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The path of the service attachment.
  final pulumi.Input<String> serviceAttachment;

  EndpointAttachmentIntegrationconnectorsArgs({
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

  factory EndpointAttachmentIntegrationconnectorsArgs.fromMap(
      Map<String, dynamic> map) {
    return EndpointAttachmentIntegrationconnectorsArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      endpointGlobalAccess:
          pulumi.Input.asOptionalInput<bool>(map['endpointGlobalAccess']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceAttachment: pulumi.Input.asInput<String>(map['serviceAttachment']),
    );
  }
}
