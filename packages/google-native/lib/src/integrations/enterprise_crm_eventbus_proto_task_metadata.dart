// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_task_metadata_admin.dart';
import 'enterprise_crm_eventbus_proto_task_metadata_category.dart';
import 'enterprise_crm_eventbus_proto_task_metadata_default_json_validation_option.dart';
import 'enterprise_crm_eventbus_proto_task_metadata_external_category.dart';
import 'enterprise_crm_eventbus_proto_task_metadata_status.dart';
import 'enterprise_crm_eventbus_proto_task_metadata_system.dart';

/// TaskMetadata are attributes that are associated to every common Task we have.
class EnterpriseCrmEventbusProtoTaskMetadata {
  /// The new task name to replace the current task if it is deprecated. Otherwise, it is the same as the current task name.
  final String? activeTaskName;
  final List<EnterpriseCrmEventbusProtoTaskMetadataAdmin>? admins;
  final EnterpriseCrmEventbusProtoTaskMetadataCategory? category;

  /// The Code Search link to the Task Java file.
  final String? codeSearchLink;

  /// Controls whether JSON workflow parameters are validated against provided schemas before and/or after this task's execution.
  final EnterpriseCrmEventbusProtoTaskMetadataDefaultJsonValidationOption?
  defaultJsonValidationOption;

  /// Contains the initial configuration of the task with default values set. For now, The string should be compatible to an ASCII-proto format.
  final String? defaultSpec;

  /// In a few sentences, describe the purpose and usage of the task.
  final String? description;

  /// The string name to show on the task list on the Workflow editor screen. This should be a very short, one to two words name for the task. (e.g. "Send Mail")
  final String? descriptiveName;

  /// Snippet of markdown documentation to embed in the RHP for this task.
  final String? docMarkdown;
  final EnterpriseCrmEventbusProtoTaskMetadataExternalCategory?
  externalCategory;

  /// Sequence with which the task in specific category to be displayed in task discovery panel for external users.
  final int? externalCategorySequence;

  /// External-facing documention embedded in the RHP for this task.
  final String? externalDocHtml;

  /// Doc link for external-facing documentation (separate from g3doc).
  final String? externalDocLink;

  /// DEPRECATED: Use external_doc_html.
  final String? externalDocMarkdown;

  /// URL to the associated G3 Doc for the task if available
  final String? g3DocLink;

  /// URL to gstatic image icon for this task. This icon shows up on the task list panel along with the task name in the Workflow Editor screen. Use the 24p, 2x, gray color icon image format.
  final String? iconLink;

  /// The deprecation status of the current task. Default value is false;
  final bool? isDeprecated;

  /// The actual class name or the annotated name of the task. Task Author should initialize this field with value from the getName() method of the Task class.
  final String? name;

  /// External-facing documention for standalone IP in pantheon embedded in the RHP for this task. Non null only if different from external_doc_html
  final String? standaloneExternalDocHtml;

  /// Allows author to indicate if the task is ready to use or not. If not set, then it will default to INACTIVE.
  final EnterpriseCrmEventbusProtoTaskMetadataStatus? status;
  final EnterpriseCrmEventbusProtoTaskMetadataSystem? system;

  /// A set of tags that pertain to a particular task. This can be used to improve the searchability of tasks with several names ("REST Caller" vs. "Call REST Endpoint") or to help users find tasks based on related words.
  final List<String>? tags;

  /// Creates a new [EnterpriseCrmEventbusProtoTaskMetadata].
  /// [activeTaskName] The new task name to replace the current task if it is deprecated. Otherwise, it is the same as the current task name.
  /// [admins] Optional.
  /// [category] Optional.
  /// [codeSearchLink] The Code Search link to the Task Java file.
  /// [defaultJsonValidationOption] Controls whether JSON workflow parameters are validated against provided schemas before and/or after this task's execution.
  /// [defaultSpec] Contains the initial configuration of the task with default values set. For now, The string should be compatible to an ASCII-proto format.
  /// [description] In a few sentences, describe the purpose and usage of the task.
  /// [descriptiveName] The string name to show on the task list on the Workflow editor screen. This should be a very short, one to two words name for the task. (e.g. "Send Mail")
  /// [docMarkdown] Snippet of markdown documentation to embed in the RHP for this task.
  /// [externalCategory] Optional.
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
  /// [system] Optional.
  /// [tags] A set of tags that pertain to a particular task. This can be used to improve the searchability of tasks with several names ("REST Caller" vs. "Call REST Endpoint") or to help users find tasks based on related words.
  EnterpriseCrmEventbusProtoTaskMetadata({
    this.activeTaskName,
    this.admins,
    this.category,
    this.codeSearchLink,
    this.defaultJsonValidationOption,
    this.defaultSpec,
    this.description,
    this.descriptiveName,
    this.docMarkdown,
    this.externalCategory,
    this.externalCategorySequence,
    this.externalDocHtml,
    this.externalDocLink,
    this.externalDocMarkdown,
    this.g3DocLink,
    this.iconLink,
    this.isDeprecated,
    this.name,
    this.standaloneExternalDocHtml,
    this.status,
    this.system,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeTaskName': ?activeTaskName,
      'admins': ?admins == null
          ? null
          : pulumi.Input.encodeList<
              EnterpriseCrmEventbusProtoTaskMetadataAdmin,
              Map<String, dynamic>
            >(admins!, (value) => value.toMap()),
      'category': ?category == null ? null : category!.value,
      'codeSearchLink': ?codeSearchLink,
      'defaultJsonValidationOption': ?defaultJsonValidationOption == null
          ? null
          : defaultJsonValidationOption!.value,
      'defaultSpec': ?defaultSpec,
      'description': ?description,
      'descriptiveName': ?descriptiveName,
      'docMarkdown': ?docMarkdown,
      'externalCategory': ?externalCategory == null
          ? null
          : externalCategory!.value,
      'externalCategorySequence': ?externalCategorySequence,
      'externalDocHtml': ?externalDocHtml,
      'externalDocLink': ?externalDocLink,
      'externalDocMarkdown': ?externalDocMarkdown,
      'g3DocLink': ?g3DocLink,
      'iconLink': ?iconLink,
      'isDeprecated': ?isDeprecated,
      'name': ?name,
      'standaloneExternalDocHtml': ?standaloneExternalDocHtml,
      'status': ?status == null ? null : status!.value,
      'system': ?system == null ? null : system!.value,
      'tags': ?tags,
    };
  }

  factory EnterpriseCrmEventbusProtoTaskMetadata.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoTaskMetadata(
      activeTaskName: map['activeTaskName'] == null
          ? null
          : map['activeTaskName'] as String,
      admins: map['admins'] == null
          ? null
          : pulumi
                .Input.decodeList<EnterpriseCrmEventbusProtoTaskMetadataAdmin>(
              map['admins'],
              (value) => EnterpriseCrmEventbusProtoTaskMetadataAdmin.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      category: map['category'] == null
          ? null
          : EnterpriseCrmEventbusProtoTaskMetadataCategory.fromValue(
              map['category'] as String,
            ),
      codeSearchLink: map['codeSearchLink'] == null
          ? null
          : map['codeSearchLink'] as String,
      defaultJsonValidationOption: map['defaultJsonValidationOption'] == null
          ? null
          : EnterpriseCrmEventbusProtoTaskMetadataDefaultJsonValidationOption.fromValue(
              map['defaultJsonValidationOption'] as String,
            ),
      defaultSpec: map['defaultSpec'] == null
          ? null
          : map['defaultSpec'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      descriptiveName: map['descriptiveName'] == null
          ? null
          : map['descriptiveName'] as String,
      docMarkdown: map['docMarkdown'] == null
          ? null
          : map['docMarkdown'] as String,
      externalCategory: map['externalCategory'] == null
          ? null
          : EnterpriseCrmEventbusProtoTaskMetadataExternalCategory.fromValue(
              map['externalCategory'] as String,
            ),
      externalCategorySequence: map['externalCategorySequence'] == null
          ? null
          : map['externalCategorySequence'] as int,
      externalDocHtml: map['externalDocHtml'] == null
          ? null
          : map['externalDocHtml'] as String,
      externalDocLink: map['externalDocLink'] == null
          ? null
          : map['externalDocLink'] as String,
      externalDocMarkdown: map['externalDocMarkdown'] == null
          ? null
          : map['externalDocMarkdown'] as String,
      g3DocLink: map['g3DocLink'] == null ? null : map['g3DocLink'] as String,
      iconLink: map['iconLink'] == null ? null : map['iconLink'] as String,
      isDeprecated: map['isDeprecated'] == null
          ? null
          : map['isDeprecated'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      standaloneExternalDocHtml: map['standaloneExternalDocHtml'] == null
          ? null
          : map['standaloneExternalDocHtml'] as String,
      status: map['status'] == null
          ? null
          : EnterpriseCrmEventbusProtoTaskMetadataStatus.fromValue(
              map['status'] as String,
            ),
      system: map['system'] == null
          ? null
          : EnterpriseCrmEventbusProtoTaskMetadataSystem.fromValue(
              map['system'] as String,
            ),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
    );
  }
}
