// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_v1_get_taxonomy_args_doc}
/// Arguments for getTaxonomy.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1_get_taxonomy_args_doc}
class GetTaxonomyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> taxonomyId;

  /// Creates a new [GetTaxonomyArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [taxonomyId] Required.
  GetTaxonomyArgs({
    required String location,
    String? project,
    required String taxonomyId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        taxonomyId = pulumi.Input.asInput<String>(taxonomyId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['taxonomyId'] = taxonomyId;
    return map;
  }

  factory GetTaxonomyArgs.fromMap(Map<String, dynamic> map) {
    return GetTaxonomyArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      taxonomyId: map['taxonomyId'] as String,
    );
  }
}
