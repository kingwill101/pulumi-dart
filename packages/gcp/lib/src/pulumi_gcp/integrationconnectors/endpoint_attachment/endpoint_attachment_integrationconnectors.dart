import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_attachment_integrationconnectors_args.dart';

/// An Integration connectors Endpoint Attachment.
///
///
/// To get more information about EndpointAttachment, see:
///
/// * [API documentation](https://cloud.google.com/integration-connectors/docs/reference/rest/v1/projects.locations.endpointAttachments)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/integration-connectors/docs/create-endpoint-attachment)
///
/// ## Example Usage
///
/// ### Integration Connectors Endpoint Attachment
///
///
///
///
/// ## Import
///
/// EndpointAttachment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/endpointAttachments/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, EndpointAttachment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:integrationconnectors/endpointAttachment:EndpointAttachment default projects/{{project}}/locations/{{location}}/endpointAttachments/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:integrationconnectors/endpointAttachment:EndpointAttachment default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:integrationconnectors/endpointAttachment:EndpointAttachment default {{location}}/{{name}}
/// ```
class EndpointAttachmentIntegrationconnectors extends pulumi.CustomResource {
  /// Time the Namespace was created in UTC.
  late final pulumi.Output<String> createTime;

  /// Description of the resource.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Enable global access for endpoint attachment.
  late final pulumi.Output<bool?> endpointGlobalAccess;

  /// The Private Service Connect connection endpoint ip.
  late final pulumi.Output<String> endpointIp;

  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Location in which Endpoint Attachment needs to be created.
  late final pulumi.Output<String> location;

  /// Name of Endpoint Attachment needs to be created.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The path of the service attachment.
  late final pulumi.Output<String> serviceAttachment;

  /// Time the Namespace was updated in UTC.
  late final pulumi.Output<String> updateTime;

  EndpointAttachmentIntegrationconnectors(
    String name, {
    EndpointAttachmentIntegrationconnectorsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:integrationconnectors/endpointAttachment:EndpointAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.endpointGlobalAccess = registerOutput<bool?>('endpointGlobalAccess');
    this.endpointIp = registerOutput<String>('endpointIp');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.serviceAttachment = registerOutput<String>('serviceAttachment');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
