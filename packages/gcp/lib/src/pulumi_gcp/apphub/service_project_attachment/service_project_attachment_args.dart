// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ServiceProjectAttachment.
class ServiceProjectAttachmentArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// "Immutable. Service project name in the format: \"projects/abc\"
  /// or \"projects/123\". As input, project name with either project id or number
  /// are accepted. As output, this field will contain project number."
  final Input<String>? serviceProject;

  /// Required. The service project attachment identifier must contain the<span pulumi-lang-nodejs=" projectId " pulumi-lang-dotnet=" ProjectId " pulumi-lang-go=" projectId " pulumi-lang-python=" project_id " pulumi-lang-yaml=" projectId " pulumi-lang-java=" projectId "> project_id </span>of the service project specified in the service_project_attachment.service_project field. Hint: "projects/{project_id}"
  final Input<String> serviceProjectAttachmentId;

  ServiceProjectAttachmentArgs({
    this.project,
    this.serviceProject,
    required this.serviceProjectAttachmentId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final serviceProjectValue = serviceProject;
    if (serviceProjectValue != null) {
      map['serviceProject'] = serviceProjectValue;
    }
    map['serviceProjectAttachmentId'] = serviceProjectAttachmentId;
    return map;
  }

  factory ServiceProjectAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return ServiceProjectAttachmentArgs(
      project: Input.asOptionalInput<String>(map['project']),
      serviceProject: Input.asOptionalInput<String>(map['serviceProject']),
      serviceProjectAttachmentId:
          Input.asInput<String>(map['serviceProjectAttachmentId']),
    );
  }
}
