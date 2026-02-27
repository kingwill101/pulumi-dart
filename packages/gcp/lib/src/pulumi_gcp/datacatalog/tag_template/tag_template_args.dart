// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../tag_template_field/tag_template_field.dart';

/// The set of arguments for TagTemplate.
class TagTemplateArgs {
  /// The display name for this template.
  final Input<String>? displayName;

  /// Set of tag template field IDs and the settings for the field. This set is an exhaustive list of the allowed fields. This set must contain at least one field and at most 500 fields. The change of field_id will be resulting in re-creating of field. The change of primitive_type will be resulting in re-creating of field, however if the field is a required, you cannot update it.
  /// Structure is documented below.
  final Input<List<TagTemplateField>> fields;

  /// This confirms the deletion of any possible tags using this template. Must be set to true in order to delete the tag template.
  final Input<bool>? forceDelete;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Template location region.
  final Input<String>? region;

  /// The id of the tag template to create.
  final Input<String> tagTemplateId;

  TagTemplateArgs({
    this.displayName,
    required this.fields,
    this.forceDelete,
    this.project,
    this.region,
    required this.tagTemplateId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['fields'] =
        Input.mapInputValue<List<TagTemplateField>, List<Map<String, dynamic>>>(
            fields,
            (value) => Input.encodeList<TagTemplateField, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final forceDeleteValue = forceDelete;
    if (forceDeleteValue != null) {
      map['forceDelete'] = forceDeleteValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['tagTemplateId'] = tagTemplateId;
    return map;
  }

  factory TagTemplateArgs.fromMap(Map<String, dynamic> map) {
    return TagTemplateArgs(
      displayName: Input.asOptionalInput<String>(map['displayName']),
      fields: Input.asInput<List<TagTemplateField>>(map['fields']),
      forceDelete: Input.asOptionalInput<bool>(map['forceDelete']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      tagTemplateId: Input.asInput<String>(map['tagTemplateId']),
    );
  }
}
