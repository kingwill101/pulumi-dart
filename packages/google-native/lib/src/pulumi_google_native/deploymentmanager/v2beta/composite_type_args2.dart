// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'composite_type_label_entry2.dart';
import 'template_contents2.dart';

/// The set of arguments for CompositeType.
class CompositeTypeArgs2 {
  /// An optional textual description of the resource; provided by the client when the resource is created.
  final Input<String>? description;
  final Input<String>? id;

  /// Map of labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
  final Input<List<CompositeTypeLabelEntry2>>? labels;

  /// Name of the composite type, must follow the expression: `[a-z]([-a-z0-9_.]{0,61}[a-z0-9])?`.
  final Input<String>? name;
  final Input<String>? project;

  /// Files for the template type.
  final Input<TemplateContents2>? templateContents;

  CompositeTypeArgs2({
    this.description,
    this.id,
    this.labels,
    this.name,
    this.project,
    this.templateContents,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = Input.mapOptionalInputValue<
              List<CompositeTypeLabelEntry2>, List<Map<String, dynamic>>>(
          labelsValue,
          (value) =>
              Input.encodeList<CompositeTypeLabelEntry2, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final templateContentsValue = templateContents;
    if (templateContentsValue != null) {
      map['templateContents'] =
          Input.mapOptionalInputValue<TemplateContents2, Map<String, dynamic>>(
              templateContentsValue, (value) => value.toMap());
    }
    return map;
  }

  factory CompositeTypeArgs2.fromMap(Map<String, dynamic> map) {
    return CompositeTypeArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      id: Input.asOptionalInput<String>(map['id']),
      labels:
          Input.asOptionalInput<List<CompositeTypeLabelEntry2>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      templateContents:
          Input.asOptionalInput<TemplateContents2>(map['templateContents']),
    );
  }
}
