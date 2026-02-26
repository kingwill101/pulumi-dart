// ignore_for_file: unused_element, unnecessary_cast

import '../tag_template_field_type/tag_template_field_type.dart';

class TagTemplateField {
  /// A description for this field.
  final String? description;

  /// The display name for this field.
  final String? displayName;

  /// The identifier for this object. Format specified above.
  final String fieldId;

  /// Whether this is a required field. Defaults to false.
  final bool? isRequired;

  /// (Output)
  /// The resource name of the tag template field in URL format. Example: projects/{project_id}/locations/{location}/tagTemplates/{tagTemplateId}/fields/{field}
  final String? name;

  /// The order of this field with respect to other fields in this tag template.
  /// A higher value indicates a more important field. The value can be negative.
  /// Multiple fields can have the same order, and field orders within a tag do not have to be sequential.
  final int? order;

  /// The type of value this tag field can contain.
  /// Structure is documented below.
  final TagTemplateFieldType type;

  TagTemplateField({
    this.description,
    this.displayName,
    required this.fieldId,
    this.isRequired,
    this.name,
    this.order,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['fieldId'] = fieldId;
    final isRequiredValue = isRequired;
    if (isRequiredValue != null) {
      map['isRequired'] = isRequiredValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final orderValue = order;
    if (orderValue != null) {
      map['order'] = orderValue;
    }
    map['type'] = type.toMap();
    return map;
  }

  factory TagTemplateField.fromMap(Map<String, dynamic> map) {
    return TagTemplateField(
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      fieldId: map['fieldId'] as String,
      isRequired: map['isRequired'] == null ? null : map['isRequired'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      order: map['order'] == null ? null : map['order'] as int,
      type: TagTemplateFieldType.fromMap(
          (map['type'] as Map).cast<String, dynamic>()),
    );
  }
}
