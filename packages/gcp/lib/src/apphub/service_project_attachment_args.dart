// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apphub_service_project_attachment_service_project_attachment_args_doc}
/// The set of arguments for ServiceProjectAttachment.
/// {@endtemplate}
/// {@macro pulumi_apphub_service_project_attachment_service_project_attachment_args_doc}
class ServiceProjectAttachmentArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// "Immutable. Service project name in the format: \"projects/abc\"
  /// or \"projects/123\". As input, project name with either project id or number
  /// are accepted. As output, this field will contain project number."
  final pulumi.Input<String>? serviceProject;
  /// Required. The service project attachment identifier must contain the project_id of the service project specified in the service_project_attachment.service_project field. Hint: "projects/{project_id}"
  final pulumi.Input<String> serviceProjectAttachmentId;

  /// Creates a new [ServiceProjectAttachmentArgs].
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceProject] "Immutable. Service project name in the format: \"projects/abc\"
  /// [serviceProjectAttachmentId] Required. The service project attachment identifier must contain the project_id of the service project specified in the service_project_attachment.service_project field. Hint: "projects/{project_id}"
  ServiceProjectAttachmentArgs({
    String? project,
    String? serviceProject,
    required String serviceProjectAttachmentId,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceProject = pulumi.Input.asOptionalInput<String>(serviceProject),
      serviceProjectAttachmentId = pulumi.Input.asInput<String>(serviceProjectAttachmentId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'serviceProject': ?serviceProject,
      'serviceProjectAttachmentId': serviceProjectAttachmentId,
    };
  }

  factory ServiceProjectAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return ServiceProjectAttachmentArgs(
      project: map['project'] == null ? null : map['project'] as String,
      serviceProject: map['serviceProject'] == null ? null : map['serviceProject'] as String,
      serviceProjectAttachmentId: map['serviceProjectAttachmentId'] as String,
    );
  }
}

