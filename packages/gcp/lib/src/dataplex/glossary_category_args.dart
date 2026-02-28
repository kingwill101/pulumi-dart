// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_glossary_category_glossary_category_args_doc}
/// The set of arguments for GlossaryCategory.
/// {@endtemplate}
/// {@macro pulumi_dataplex_glossary_category_glossary_category_args_doc}
class GlossaryCategoryArgs {
  /// The category id for creation.
  final pulumi.Input<String>? categoryId;

  /// The user-mutable description of the GlossaryCategory.
  final pulumi.Input<String>? description;

  /// User friendly display name of the GlossaryCategory. This is user-mutable. This will be same as the categoryId, if not specified.
  final pulumi.Input<String>? displayName;

  /// The glossary id for creation.
  final pulumi.Input<String>? glossaryId;

  /// User-defined labels for the GlossaryCategory.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location where the glossary category should reside.
  final pulumi.Input<String> location;

  /// The immediate parent of the GlossaryCategory in the resource-hierarchy. It can either be a Glossary or a Category. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId} OR projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/categories/{categoryId}
  final pulumi.Input<String> parent;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GlossaryCategoryArgs].
  /// [categoryId] The category id for creation.
  /// [description] The user-mutable description of the GlossaryCategory.
  /// [displayName] User friendly display name of the GlossaryCategory. This is user-mutable. This will be same as the categoryId, if not specified.
  /// [glossaryId] The glossary id for creation.
  /// [labels] User-defined labels for the GlossaryCategory.
  /// [location] The location where the glossary category should reside.
  /// [parent] The immediate parent of the GlossaryCategory in the resource-hierarchy. It can either be a Glossary or a Category. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId} OR projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/categories/{categoryId}
  /// [project] The ID of the project in which the resource belongs.
  GlossaryCategoryArgs({
    String? categoryId,
    String? description,
    String? displayName,
    String? glossaryId,
    Map<String, String>? labels,
    required String location,
    required String parent,
    String? project,
  })  : categoryId = pulumi.Input.asOptionalInput<String>(categoryId),
        description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        glossaryId = pulumi.Input.asOptionalInput<String>(glossaryId),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asInput<String>(location),
        parent = pulumi.Input.asInput<String>(parent),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final categoryIdValue = categoryId;
    if (categoryIdValue != null) {
      map['categoryId'] = categoryIdValue;
    }
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
    return map;
  }

  factory GlossaryCategoryArgs.fromMap(Map<String, dynamic> map) {
    return GlossaryCategoryArgs(
      categoryId:
          map['categoryId'] == null ? null : map['categoryId'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      glossaryId:
          map['glossaryId'] == null ? null : map['glossaryId'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      parent: map['parent'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
