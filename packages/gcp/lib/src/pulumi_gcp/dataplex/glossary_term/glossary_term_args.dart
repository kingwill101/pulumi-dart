// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for GlossaryTerm.
class GlossaryTermArgs {
  /// The user-mutable description of the GlossaryTerm.
  final pulumi.Input<String>? description;

  /// User friendly display name of the GlossaryTerm. This is user-mutable. This will be same as the termId, if not specified.
  final pulumi.Input<String>? displayName;

  /// The glossary id for creation.
  final pulumi.Input<String>? glossaryId;

  /// User-defined labels for the GlossaryTerm.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location where the glossary term should reside.
  final pulumi.Input<String> location;

  /// The immediate parent of the GlossaryTerm in the resource-hierarchy. It can either be a Glossary or a Term. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId} OR projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/terms/{termId}
  final pulumi.Input<String> parent;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The term id for creation.
  final pulumi.Input<String>? termId;

  GlossaryTermArgs({
    this.description,
    this.displayName,
    this.glossaryId,
    this.labels,
    required this.location,
    required this.parent,
    this.project,
    this.termId,
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
    final glossaryIdValue = glossaryId;
    if (glossaryIdValue != null) {
      map['glossaryId'] = glossaryIdValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    map['parent'] = parent;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final termIdValue = termId;
    if (termIdValue != null) {
      map['termId'] = termIdValue;
    }
    return map;
  }

  factory GlossaryTermArgs.fromMap(Map<String, dynamic> map) {
    return GlossaryTermArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      glossaryId: pulumi.Input.asOptionalInput<String>(map['glossaryId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      parent: pulumi.Input.asInput<String>(map['parent']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      termId: pulumi.Input.asOptionalInput<String>(map['termId']),
    );
  }
}
