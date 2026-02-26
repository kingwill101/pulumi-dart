import 'package:pulumi/pulumi.dart';
import 'endpoint_attachment_args.dart';

/// Creates an endpoint attachment. **Note:** Not supported for Apigee hybrid.
/// Auto-naming is currently not supported for this resource.
class EndpointAttachment extends CustomResource {
  /// State of the endpoint attachment connection to the service attachment.
  late final Output<String> connectionState;

  /// ID to use for the endpoint attachment. ID must start with a lowercase letter followed by up to 31 lowercase letters, numbers, or hyphens, and cannot end with a hyphen. The minimum length is 2.
  late final Output<String?> endpointAttachmentId;

  /// Host that can be used in either the HTTP target endpoint directly or as the host in target server.
  late final Output<String> host;

  /// Location of the endpoint attachment.
  late final Output<String> location;

  /// Name of the endpoint attachment. Use the following structure in your request: `organizations/{org}/endpointAttachments/{endpoint_attachment}`
  late final Output<String> name;
  late final Output<String> organizationId;

  /// Format: projects/*/regions/*/serviceAttachments/*
  late final Output<String> serviceAttachment;

  /// State of the endpoint attachment. Values other than `ACTIVE` mean the resource is not ready to use.
  late final Output<String> state;

  EndpointAttachment(
    String name, {
    EndpointAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:EndpointAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.connectionState = Output.createUnknown<String>();
    this.endpointAttachmentId = Output.createUnknown<String?>();
    this.host = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.organizationId = Output.createUnknown<String>();
    this.serviceAttachment = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
  }
}
