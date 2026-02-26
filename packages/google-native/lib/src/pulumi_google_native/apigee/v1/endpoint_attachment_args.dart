// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for EndpointAttachment.
class EndpointAttachmentArgs {
  /// ID to use for the endpoint attachment. ID must start with a lowercase letter followed by up to 31 lowercase letters, numbers, or hyphens, and cannot end with a hyphen. The minimum length is 2.
  final Input<String>? endpointAttachmentId;

  /// Location of the endpoint attachment.
  final Input<String>? location;

  /// Name of the endpoint attachment. Use the following structure in your request: `organizations/{org}/endpointAttachments/{endpoint_attachment}`
  final Input<String>? name;
  final Input<String> organizationId;

  /// Format: projects/*/regions/*/serviceAttachments/*
  final Input<String>? serviceAttachment;

  EndpointAttachmentArgs({
    this.endpointAttachmentId,
    this.location,
    this.name,
    required this.organizationId,
    this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endpointAttachmentIdValue = endpointAttachmentId;
    if (endpointAttachmentIdValue != null) {
      map['endpointAttachmentId'] = endpointAttachmentIdValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    final serviceAttachmentValue = serviceAttachment;
    if (serviceAttachmentValue != null) {
      map['serviceAttachment'] = serviceAttachmentValue;
    }
    return map;
  }

  factory EndpointAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return EndpointAttachmentArgs(
      endpointAttachmentId:
          Input.asOptionalInput<String>(map['endpointAttachmentId']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      organizationId: Input.asInput<String>(map['organizationId']),
      serviceAttachment:
          Input.asOptionalInput<String>(map['serviceAttachment']),
    );
  }
}
