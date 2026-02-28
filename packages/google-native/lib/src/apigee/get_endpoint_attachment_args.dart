// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_endpoint_attachment_args_doc}
/// Arguments for getEndpointAttachment.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_endpoint_attachment_args_doc}
class GetEndpointAttachmentArgs {
  final pulumi.Input<String> endpointAttachmentId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetEndpointAttachmentArgs].
  /// [endpointAttachmentId] Required.
  /// [organizationId] Required.
  GetEndpointAttachmentArgs({
    required String endpointAttachmentId,
    required String organizationId,
  })  : endpointAttachmentId =
            pulumi.Input.asInput<String>(endpointAttachmentId),
        organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointAttachmentId'] = endpointAttachmentId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetEndpointAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetEndpointAttachmentArgs(
      endpointAttachmentId: map['endpointAttachmentId'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
