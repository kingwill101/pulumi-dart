import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_attachment_args.dart';

/// Creates a new EndpointAttachment in a given project and location.
/// Auto-naming is currently not supported for this resource.
class EndpointAttachment extends pulumi.CustomResource {
  /// Created time.
  late final pulumi.Output<String> createTime;

  /// Optional. Description of the resource.
  late final pulumi.Output<String> description;

  /// Required. Identifier to assign to the EndpointAttachment. Must be unique within scope of the parent resource.
  late final pulumi.Output<String> endpointAttachmentId;

  /// The Private Service Connect connection endpoint ip
  late final pulumi.Output<String> endpointIp;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Resource name of the Endpoint Attachment. Format: projects/{project}/locations/{location}/endpointAttachments/{endpoint_attachment}
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The path of the service attachment
  late final pulumi.Output<String> serviceAttachment;

  /// Updated time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [EndpointAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointAttachment]. {@macro pulumi_connectors_v1_endpoint_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointAttachment(
    String name, {
    EndpointAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:connectors/v1:EndpointAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.endpointAttachmentId = registerOutput<String>('endpointAttachmentId');
    this.endpointIp = registerOutput<String>('endpointIp');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.serviceAttachment = registerOutput<String>('serviceAttachment');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
