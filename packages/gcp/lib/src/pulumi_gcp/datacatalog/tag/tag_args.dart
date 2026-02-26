// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../tag_field/tag_field.dart';

/// The set of arguments for Tag.
class TagArgs {
  /// Resources like Entry can have schemas associated with them. This scope allows users to attach tags to an
  /// individual column based on that schema.
  /// For attaching a tag to a nested column, use `.` to separate the column names. Example:
  /// `outer_column.inner_column`
  final Input<String>? column;

  /// This maps the ID of a tag field to the value of and additional information about that field.
  /// Valid field IDs are defined by the tag's template. A tag must have at least 1 field and at most 500 fields.
  /// Structure is documented below.
  final Input<List<TagField>> fields;

  /// The name of the parent this tag is attached to. This can be the name of an entry or an entry group. If an entry group, the tag will be attached to
  /// all entries in that group.
  final Input<String>? parent;

  /// The resource name of the tag template that this tag uses. Example:
  /// projects/{project_id}/locations/{location}/tagTemplates/{tagTemplateId}
  /// This field cannot be modified after creation.
  final Input<String> template;

  TagArgs({
    this.column,
    required this.fields,
    this.parent,
    required this.template,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final columnValue = column;
    if (columnValue != null) {
      map['column'] = columnValue;
    }
    map['fields'] =
        Input.mapInputValue<List<TagField>, List<Map<String, dynamic>>>(
            fields,
            (value) => Input.encodeList<TagField, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    map['template'] = template;
    return map;
  }

  factory TagArgs.fromMap(Map<String, dynamic> map) {
    return TagArgs(
      column: Input.asOptionalInput<String>(map['column']),
      fields: Input.asInput<List<TagField>>(map['fields']),
      parent: Input.asOptionalInput<String>(map['parent']),
      template: Input.asInput<String>(map['template']),
    );
  }
}
