// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EndpointAttachment.
class EndpointAttachmentArgs {
  /// ID of the endpoint attachment.
  final pulumi.Input<String> endpointAttachmentId;

  /// Location of the endpoint attachment.
  final pulumi.Input<String> location;

  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String> orgId;

  /// Format: projects/*/regions/*/serviceAttachments/*
  final pulumi.Input<String> serviceAttachment;

  EndpointAttachmentArgs({
    required this.endpointAttachmentId,
    required this.location,
    required this.orgId,
    required this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointAttachmentId'] = endpointAttachmentId;
    map['location'] = location;
    map['orgId'] = orgId;
    map['serviceAttachment'] = serviceAttachment;
    return map;
  }

  factory EndpointAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return EndpointAttachmentArgs(
      endpointAttachmentId:
          pulumi.Input.asInput<String>(map['endpointAttachmentId']),
      location: pulumi.Input.asInput<String>(map['location']),
      orgId: pulumi.Input.asInput<String>(map['orgId']),
      serviceAttachment: pulumi.Input.asInput<String>(map['serviceAttachment']),
    );
  }
}
