import 'package:pulumi/pulumi.dart';
import 'endpoint_attachment_args.dart';

/// Apigee Endpoint Attachment.
///
///
/// To get more information about EndpointAttachment, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.endpointAttachments/create)
/// * How-to Guides
/// * [Creating an environment](https://cloud.google.com/apigee/docs/api-platform/get-started/create-environment)
///
/// ## Import
///
/// EndpointAttachment can be imported using any of these accepted formats:
///
/// * `{{org_id}}/endpointAttachments/{{endpoint_attachment_id}}`
///
/// * `{{org_id}}/{{endpoint_attachment_id}}`
///
/// When using the `pulumi import` command, EndpointAttachment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/endpointAttachment:EndpointAttachment default {{org_id}}/endpointAttachments/{{endpoint_attachment_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/endpointAttachment:EndpointAttachment default {{org_id}}/{{endpoint_attachment_id}}
/// ```
class EndpointAttachment extends CustomResource {
  /// State of the endpoint attachment connection to the service attachment.
  late final Output<String> connectionState;

  /// ID of the endpoint attachment.
  late final Output<String> endpointAttachmentId;

  /// Host that can be used in either HTTP Target Endpoint directly, or as the host in Target Server.
  late final Output<String> host;

  /// Location of the endpoint attachment.
  late final Output<String> location;

  /// Name of the Endpoint Attachment in the following format:
  /// organizations/{organization}/endpointAttachments/{endpointAttachment}.
  late final Output<String> name;

  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  late final Output<String> orgId;

  /// Format: projects/*/regions/*/serviceAttachments/*
  late final Output<String> serviceAttachment;

  EndpointAttachment(
    String name, {
    EndpointAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/endpointAttachment:EndpointAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.connectionState = Output.createUnknown<String>();
    this.endpointAttachmentId = Output.createUnknown<String>();
    this.host = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.orgId = Output.createUnknown<String>();
    this.serviceAttachment = Output.createUnknown<String>();
  }
}
