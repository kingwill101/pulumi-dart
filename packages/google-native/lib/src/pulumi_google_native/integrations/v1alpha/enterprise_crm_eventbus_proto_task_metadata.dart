// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
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
    final map = <String, dynamic>{};
    final activeTaskNameValue = activeTaskName;
    if (activeTaskNameValue != null) {
      map['activeTaskName'] = activeTaskNameValue;
    }
    final adminsValue = admins;
    if (adminsValue != null) {
      map['admins'] = Input.encodeList<
          EnterpriseCrmEventbusProtoTaskMetadataAdmin,
          Map<String, dynamic>>(adminsValue, (value) => value.toMap());
    }
    final categoryValue = category;
    if (categoryValue != null) {
      map['category'] = categoryValue.value;
    }
    final codeSearchLinkValue = codeSearchLink;
    if (codeSearchLinkValue != null) {
      map['codeSearchLink'] = codeSearchLinkValue;
    }
    final defaultJsonValidationOptionValue = defaultJsonValidationOption;
    if (defaultJsonValidationOptionValue != null) {
      map['defaultJsonValidationOption'] =
          defaultJsonValidationOptionValue.value;
    }
    final defaultSpecValue = defaultSpec;
    if (defaultSpecValue != null) {
      map['defaultSpec'] = defaultSpecValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final descriptiveNameValue = descriptiveName;
    if (descriptiveNameValue != null) {
      map['descriptiveName'] = descriptiveNameValue;
    }
    final docMarkdownValue = docMarkdown;
    if (docMarkdownValue != null) {
      map['docMarkdown'] = docMarkdownValue;
    }
    final externalCategoryValue = externalCategory;
    if (externalCategoryValue != null) {
      map['externalCategory'] = externalCategoryValue.value;
    }
    final externalCategorySequenceValue = externalCategorySequence;
    if (externalCategorySequenceValue != null) {
      map['externalCategorySequence'] = externalCategorySequenceValue;
    }
    final externalDocHtmlValue = externalDocHtml;
    if (externalDocHtmlValue != null) {
      map['externalDocHtml'] = externalDocHtmlValue;
    }
    final externalDocLinkValue = externalDocLink;
    if (externalDocLinkValue != null) {
      map['externalDocLink'] = externalDocLinkValue;
    }
    final externalDocMarkdownValue = externalDocMarkdown;
    if (externalDocMarkdownValue != null) {
      map['externalDocMarkdown'] = externalDocMarkdownValue;
    }
    final g3DocLinkValue = g3DocLink;
    if (g3DocLinkValue != null) {
      map['g3DocLink'] = g3DocLinkValue;
    }
    final iconLinkValue = iconLink;
    if (iconLinkValue != null) {
      map['iconLink'] = iconLinkValue;
    }
    final isDeprecatedValue = isDeprecated;
    if (isDeprecatedValue != null) {
      map['isDeprecated'] = isDeprecatedValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final standaloneExternalDocHtmlValue = standaloneExternalDocHtml;
    if (standaloneExternalDocHtmlValue != null) {
      map['standaloneExternalDocHtml'] = standaloneExternalDocHtmlValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue.value;
    }
    final systemValue = system;
    if (systemValue != null) {
      map['system'] = systemValue.value;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory EnterpriseCrmEventbusProtoTaskMetadata.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoTaskMetadata(
      activeTaskName: map['activeTaskName'] == null
          ? null
          : map['activeTaskName'] as String,
      admins: map['admins'] == null
          ? null
          : Input.decodeList<EnterpriseCrmEventbusProtoTaskMetadataAdmin>(
              map['admins'],
              (value) => EnterpriseCrmEventbusProtoTaskMetadataAdmin.fromMap(
                  (value as Map).cast<String, dynamic>())),
      category: map['category'] == null
          ? null
          : EnterpriseCrmEventbusProtoTaskMetadataCategory.fromValue(
              map['category'] as String),
      codeSearchLink: map['codeSearchLink'] == null
          ? null
          : map['codeSearchLink'] as String,
      defaultJsonValidationOption: map['defaultJsonValidationOption'] == null
          ? null
          : EnterpriseCrmEventbusProtoTaskMetadataDefaultJsonValidationOption
              .fromValue(map['defaultJsonValidationOption'] as String),
      defaultSpec:
          map['defaultSpec'] == null ? null : map['defaultSpec'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      descriptiveName: map['descriptiveName'] == null
          ? null
          : map['descriptiveName'] as String,
      docMarkdown:
          map['docMarkdown'] == null ? null : map['docMarkdown'] as String,
      externalCategory: map['externalCategory'] == null
          ? null
          : EnterpriseCrmEventbusProtoTaskMetadataExternalCategory.fromValue(
              map['externalCategory'] as String),
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
      isDeprecated:
          map['isDeprecated'] == null ? null : map['isDeprecated'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      standaloneExternalDocHtml: map['standaloneExternalDocHtml'] == null
          ? null
          : map['standaloneExternalDocHtml'] as String,
      status: map['status'] == null
          ? null
          : EnterpriseCrmEventbusProtoTaskMetadataStatus.fromValue(
              map['status'] as String),
      system: map['system'] == null
          ? null
          : EnterpriseCrmEventbusProtoTaskMetadataSystem.fromValue(
              map['system'] as String),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
    );
  }
}
