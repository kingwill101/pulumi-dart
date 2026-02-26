// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for EndpointAttachment.
class EndpointAttachmentArgs {
  /// ID of the endpoint attachment.
  final Input<String> endpointAttachmentId;

  /// Location of the endpoint attachment.
  final Input<String> location;

  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  final Input<String> orgId;

  /// Format: projects/*/regions/*/serviceAttachments/*
  final Input<String> serviceAttachment;

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
      endpointAttachmentId: Input.asInput<String>(map['endpointAttachmentId']),
      location: Input.asInput<String>(map['location']),
      orgId: Input.asInput<String>(map['orgId']),
      serviceAttachment: Input.asInput<String>(map['serviceAttachment']),
    );
  }
}
