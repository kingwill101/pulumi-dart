import 'package:pulumi/pulumi.dart';
import 'endpoint_attachment_args2.dart';

/// Creates a new EndpointAttachment in a given project and location.
/// Auto-naming is currently not supported for this resource.
class EndpointAttachment2 extends CustomResource {
  /// Created time.
  late final Output<String> createTime;

  /// Optional. Description of the resource.
  late final Output<String> description;

  /// Required. Identifier to assign to the EndpointAttachment. Must be unique within scope of the parent resource.
  late final Output<String> endpointAttachmentId;

  /// The Private Service Connect connection endpoint ip
  late final Output<String> endpointIp;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Resource name of the Endpoint Attachment. Format: projects/{project}/locations/{location}/endpointAttachments/{endpoint_attachment}
  late final Output<String> name;
  late final Output<String> project;

  /// The path of the service attachment
  late final Output<String> serviceAttachment;

  /// Updated time.
  late final Output<String> updateTime;

  EndpointAttachment2(
    String name, {
    EndpointAttachmentArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:connectors/v1:EndpointAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.endpointAttachmentId = Output.createUnknown<String>();
    this.endpointIp = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.serviceAttachment = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
