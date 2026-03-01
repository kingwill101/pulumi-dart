// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_endpoint_attachment_endpoint_attachment_args_doc}
/// The set of arguments for EndpointAttachment.
/// {@endtemplate}
/// {@macro pulumi_apigee_endpoint_attachment_endpoint_attachment_args_doc}
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

  /// Creates a new [EndpointAttachmentArgs].
  /// [endpointAttachmentId] ID of the endpoint attachment.
  /// [location] Location of the endpoint attachment.
  /// [orgId] The Apigee Organization associated with the Apigee instance,
  /// [serviceAttachment] Format: projects/*/regions/*/serviceAttachments/*
  EndpointAttachmentArgs({
    required String endpointAttachmentId,
    required String location,
    required String orgId,
    required String serviceAttachment,
  }) :
      endpointAttachmentId = pulumi.Input.asInput<String>(endpointAttachmentId),
      location = pulumi.Input.asInput<String>(location),
      orgId = pulumi.Input.asInput<String>(orgId),
      serviceAttachment = pulumi.Input.asInput<String>(serviceAttachment);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointAttachmentId': endpointAttachmentId,
      'location': location,
      'orgId': orgId,
      'serviceAttachment': serviceAttachment,
    };
  }

  factory EndpointAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return EndpointAttachmentArgs(
      endpointAttachmentId: map['endpointAttachmentId'] as String,
      location: map['location'] as String,
      orgId: map['orgId'] as String,
      serviceAttachment: map['serviceAttachment'] as String,
    );
  }
}

