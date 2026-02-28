// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectors_v1_endpoint_attachment_args_doc}
/// The set of arguments for EndpointAttachment.
/// {@endtemplate}
/// {@macro pulumi_connectors_v1_endpoint_attachment_args_doc}
class EndpointAttachmentArgs {
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

  /// Creates a new [EndpointAttachmentArgs].
  /// [description] Optional. Description of the resource.
  /// [endpointAttachmentId] Required. Identifier to assign to the EndpointAttachment. Must be unique within scope of the parent resource.
  /// [labels] Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  /// [location] Optional.
  /// [project] Optional.
  /// [serviceAttachment] The path of the service attachment
  EndpointAttachmentArgs({
    String? description,
    required String endpointAttachmentId,
    Map<String, String>? labels,
    String? location,
    String? project,
    required String serviceAttachment,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      endpointAttachmentId = pulumi.Input.asInput<String>(endpointAttachmentId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceAttachment = pulumi.Input.asInput<String>(serviceAttachment);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'endpointAttachmentId': endpointAttachmentId,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'serviceAttachment': serviceAttachment,
    };
  }

  factory EndpointAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return EndpointAttachmentArgs(
      description: map['description'] == null ? null : map['description'] as String,
      endpointAttachmentId: map['endpointAttachmentId'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serviceAttachment: map['serviceAttachment'] as String,
    );
  }
}

