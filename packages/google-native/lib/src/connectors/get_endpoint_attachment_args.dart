// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectors_v1_get_endpoint_attachment_args_doc}
/// Arguments for getEndpointAttachment.
/// {@endtemplate}
/// {@macro pulumi_connectors_v1_get_endpoint_attachment_args_doc}
class GetEndpointAttachmentArgs {
  final pulumi.Input<String> endpointAttachmentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEndpointAttachmentArgs].
  /// [endpointAttachmentId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetEndpointAttachmentArgs({
    required String endpointAttachmentId,
    required String location,
    String? project,
  })  : endpointAttachmentId =
            pulumi.Input.asInput<String>(endpointAttachmentId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointAttachmentId'] = endpointAttachmentId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEndpointAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetEndpointAttachmentArgs(
      endpointAttachmentId: map['endpointAttachmentId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
