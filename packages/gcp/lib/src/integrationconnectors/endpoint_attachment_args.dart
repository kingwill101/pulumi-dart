// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_integrationconnectors_endpoint_attachment_endpoint_attachment_args_doc}
/// The set of arguments for EndpointAttachment.
/// {@endtemplate}
/// {@macro pulumi_integrationconnectors_endpoint_attachment_endpoint_attachment_args_doc}
class EndpointAttachmentArgs {
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

  /// Creates a new [EndpointAttachmentArgs].
  /// [description] Description of the resource.
  /// [endpointGlobalAccess] Enable global access for endpoint attachment.
  /// [labels] Resource labels to represent user provided metadata.
  /// [location] Location in which Endpoint Attachment needs to be created.
  /// [name] Name of Endpoint Attachment needs to be created.
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceAttachment] The path of the service attachment.
  EndpointAttachmentArgs({
    String? description,
    bool? endpointGlobalAccess,
    Map<String, String>? labels,
    required String location,
    String? name,
    String? project,
    required String serviceAttachment,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        endpointGlobalAccess =
            pulumi.Input.asOptionalInput<bool>(endpointGlobalAccess),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        serviceAttachment = pulumi.Input.asInput<String>(serviceAttachment);

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

  factory EndpointAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return EndpointAttachmentArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      endpointGlobalAccess: map['endpointGlobalAccess'] == null
          ? null
          : map['endpointGlobalAccess'] as bool,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serviceAttachment: map['serviceAttachment'] as String,
    );
  }
}
