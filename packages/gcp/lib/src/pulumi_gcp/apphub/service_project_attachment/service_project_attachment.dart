import 'package:pulumi/pulumi.dart';
import 'service_project_attachment_args.dart';

/// Represents a Service project attachment to the Host Project.
///
///
///
/// ## Example Usage
///
/// ### Service Project Attachment Basic
///
///
///
/// ### Service Project Attachment Full
///
///
///
///
/// ## Import
///
/// ServiceProjectAttachment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/serviceProjectAttachments/{{service_project_attachment_id}}`
///
/// * `{{project}}/{{service_project_attachment_id}}`
///
/// * `{{service_project_attachment_id}}`
///
/// When using the `pulumi import` command, ServiceProjectAttachment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apphub/serviceProjectAttachment:ServiceProjectAttachment default projects/{{project}}/locations/global/serviceProjectAttachments/{{service_project_attachment_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apphub/serviceProjectAttachment:ServiceProjectAttachment default {{project}}/{{service_project_attachment_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apphub/serviceProjectAttachment:ServiceProjectAttachment default {{service_project_attachment_id}}
/// ```
class ServiceProjectAttachment extends CustomResource {
  /// Output only. Create time.
  late final Output<String> createTime;

  /// "Identifier. The resource name of a ServiceProjectAttachment. Format:\"projects/{host-project-id}/locations/global/serviceProjectAttachments/{service-project-id}.\""
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// "Immutable. Service project name in the format: \"projects/abc\"
  /// or \"projects/123\". As input, project name with either project id or number
  /// are accepted. As output, this field will contain project number."
  late final Output<String?> serviceProject;

  /// Required. The service project attachment identifier must contain the project_id of the service project specified in the service_project_attachment.service_project field. Hint: "projects/{project_id}"
  late final Output<String> serviceProjectAttachmentId;

  /// ServiceProjectAttachment state.
  late final Output<String> state;

  /// Output only. A globally unique identifier (in UUID4 format) for the `ServiceProjectAttachment`.
  late final Output<String> uid;

  ServiceProjectAttachment(
    String name, {
    ServiceProjectAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apphub/serviceProjectAttachment:ServiceProjectAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.serviceProject = registerOutput<String?>('serviceProject');
    this.serviceProjectAttachmentId =
        registerOutput<String>('serviceProjectAttachmentId');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
  }
}
