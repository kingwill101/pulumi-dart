// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_contentwarehouse_v1_get_synonym_set_args_doc}
/// Arguments for getSynonymSet.
/// {@endtemplate}
/// {@macro pulumi_contentwarehouse_v1_get_synonym_set_args_doc}
class GetSynonymSetArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> synonymSetId;

  /// Creates a new [GetSynonymSetArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [synonymSetId] Required.
  GetSynonymSetArgs({
    required String location,
    String? project,
    required String synonymSetId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        synonymSetId = pulumi.Input.asInput<String>(synonymSetId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['synonymSetId'] = synonymSetId;
    return map;
  }

  factory GetSynonymSetArgs.fromMap(Map<String, dynamic> map) {
    return GetSynonymSetArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      synonymSetId: map['synonymSetId'] as String,
    );
  }
}
