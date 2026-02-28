// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_task_metadata_admin_response.dart';

/// TaskMetadata are attributes that are associated to every common Task we have.
class EnterpriseCrmEventbusProtoTaskMetadataResponse {
  /// The new task name to replace the current task if it is deprecated. Otherwise, it is the same as the current task name.
  final String activeTaskName;
  final List<EnterpriseCrmEventbusProtoTaskMetadataAdminResponse> admins;
  final String category;

  /// The Code Search link to the Task Java file.
  final String codeSearchLink;

  /// Controls whether JSON workflow parameters are validated against provided schemas before and/or after this task's execution.
  final String defaultJsonValidationOption;

  /// Contains the initial configuration of the task with default values set. For now, The string should be compatible to an ASCII-proto format.
  final String defaultSpec;

  /// In a few sentences, describe the purpose and usage of the task.
  final String description;

  /// The string name to show on the task list on the Workflow editor screen. This should be a very short, one to two words name for the task. (e.g. "Send Mail")
  final String descriptiveName;

  /// Snippet of markdown documentation to embed in the RHP for this task.
  final String docMarkdown;
  final String externalCategory;

  /// Sequence with which the task in specific category to be displayed in task discovery panel for external users.
  final int externalCategorySequence;

  /// External-facing documention embedded in the RHP for this task.
  final String externalDocHtml;

  /// Doc link for external-facing documentation (separate from g3doc).
  final String externalDocLink;

  /// DEPRECATED: Use external_doc_html.
  final String externalDocMarkdown;

  /// URL to the associated G3 Doc for the task if available
  final String g3DocLink;

  /// URL to gstatic image icon for this task. This icon shows up on the task list panel along with the task name in the Workflow Editor screen. Use the 24p, 2x, gray color icon image format.
  final String iconLink;

  /// The deprecation status of the current task. Default value is false;
  final bool isDeprecated;

  /// The actual class name or the annotated name of the task. Task Author should initialize this field with value from the getName() method of the Task class.
  final String name;

  /// External-facing documention for standalone IP in pantheon embedded in the RHP for this task. Non null only if different from external_doc_html
  final String standaloneExternalDocHtml;

  /// Allows author to indicate if the task is ready to use or not. If not set, then it will default to INACTIVE.
  final String status;
  final String system;

  /// A set of tags that pertain to a particular task. This can be used to improve the searchability of tasks with several names ("REST Caller" vs. "Call REST Endpoint") or to help users find tasks based on related words.
  final List<String> tags;

  /// Creates a new [EnterpriseCrmEventbusProtoTaskMetadataResponse].
  /// [activeTaskName] The new task name to replace the current task if it is deprecated. Otherwise, it is the same as the current task name.
  /// [admins] Required.
  /// [category] Required.
  /// [codeSearchLink] The Code Search link to the Task Java file.
  /// [defaultJsonValidationOption] Controls whether JSON workflow parameters are validated against provided schemas before and/or after this task's execution.
  /// [defaultSpec] Contains the initial configuration of the task with default values set. For now, The string should be compatible to an ASCII-proto format.
  /// [description] In a few sentences, describe the purpose and usage of the task.
  /// [descriptiveName] The string name to show on the task list on the Workflow editor screen. This should be a very short, one to two words name for the task. (e.g. "Send Mail")
  /// [docMarkdown] Snippet of markdown documentation to embed in the RHP for this task.
  /// [externalCategory] Required.
  /// [externalCategorySequence] Sequence with which the task in specific category to be displayed in task discovery panel for external users.
  /// [externalDocHtml] External-facing documention embedded in the RHP for this task.
  /// [externalDocLink] Doc link for external-facing documentation (separate from g3doc).
  /// [externalDocMarkdown] DEPRECATED: Use external_doc_html.
  /// [g3DocLink] URL to the associated G3 Doc for the task if available
  /// [iconLink] URL to gstatic image icon for this task. This icon shows up on the task list panel along with the task name in the Workflow Editor screen. Use the 24p, 2x, gray color icon image format.
  /// [isDeprecated] The deprecation status of the current task. Default value is false;
  /// [name] The actual class name or the annotated name of the task. Task Author should initialize this field with value from the getName() method of the Task class.
  /// [standaloneExternalDocHtml] External-facing documention for standalone IP in pantheon embedded in the RHP for this task. Non null only if different from external_doc_html
  /// [status] Allows author to indicate if the task is ready to use or not. If not set, then it will default to INACTIVE.
  /// [system] Required.
  /// [tags] A set of tags that pertain to a particular task. This can be used to improve the searchability of tasks with several names ("REST Caller" vs. "Call REST Endpoint") or to help users find tasks based on related words.
  EnterpriseCrmEventbusProtoTaskMetadataResponse({
    required this.activeTaskName,
    required this.admins,
    required this.category,
    required this.codeSearchLink,
    required this.defaultJsonValidationOption,
    required this.defaultSpec,
    required this.description,
    required this.descriptiveName,
    required this.docMarkdown,
    required this.externalCategory,
    required this.externalCategorySequence,
    required this.externalDocHtml,
    required this.externalDocLink,
    required this.externalDocMarkdown,
    required this.g3DocLink,
    required this.iconLink,
    required this.isDeprecated,
    required this.name,
    required this.standaloneExternalDocHtml,
    required this.status,
    required this.system,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['activeTaskName'] = activeTaskName;
    map['admins'] = pulumi.Input.encodeList<
        EnterpriseCrmEventbusProtoTaskMetadataAdminResponse,
        Map<String, dynamic>>(admins, (value) => value.toMap());
    map['category'] = category;
    map['codeSearchLink'] = codeSearchLink;
    map['defaultJsonValidationOption'] = defaultJsonValidationOption;
    map['defaultSpec'] = defaultSpec;
    map['description'] = description;
    map['descriptiveName'] = descriptiveName;
    map['docMarkdown'] = docMarkdown;
    map['externalCategory'] = externalCategory;
    map['externalCategorySequence'] = externalCategorySequence;
    map['externalDocHtml'] = externalDocHtml;
    map['externalDocLink'] = externalDocLink;
    map['externalDocMarkdown'] = externalDocMarkdown;
    map['g3DocLink'] = g3DocLink;
    map['iconLink'] = iconLink;
    map['isDeprecated'] = isDeprecated;
    map['name'] = name;
    map['standaloneExternalDocHtml'] = standaloneExternalDocHtml;
    map['status'] = status;
    map['system'] = system;
    map['tags'] = tags;
    return map;
  }

  factory EnterpriseCrmEventbusProtoTaskMetadataResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoTaskMetadataResponse(
      activeTaskName: map['activeTaskName'] as String,
      admins: pulumi.Input.decodeList<
              EnterpriseCrmEventbusProtoTaskMetadataAdminResponse>(
          map['admins'],
          (value) =>
              EnterpriseCrmEventbusProtoTaskMetadataAdminResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      category: map['category'] as String,
      codeSearchLink: map['codeSearchLink'] as String,
      defaultJsonValidationOption: map['defaultJsonValidationOption'] as String,
      defaultSpec: map['defaultSpec'] as String,
      description: map['description'] as String,
      descriptiveName: map['descriptiveName'] as String,
      docMarkdown: map['docMarkdown'] as String,
      externalCategory: map['externalCategory'] as String,
      externalCategorySequence: map['externalCategorySequence'] as int,
      externalDocHtml: map['externalDocHtml'] as String,
      externalDocLink: map['externalDocLink'] as String,
      externalDocMarkdown: map['externalDocMarkdown'] as String,
      g3DocLink: map['g3DocLink'] as String,
      iconLink: map['iconLink'] as String,
      isDeprecated: map['isDeprecated'] as bool,
      name: map['name'] as String,
      standaloneExternalDocHtml: map['standaloneExternalDocHtml'] as String,
      status: map['status'] as String,
      system: map['system'] as String,
      tags: (map['tags'] as List).cast<String>(),
    );
  }
}
