// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_translate_v3_get_glossary_args_doc}
/// Arguments for getGlossary.
/// {@endtemplate}
/// {@macro pulumi_translate_v3_get_glossary_args_doc}
class GetGlossaryArgs {
  final pulumi.Input<String> glossaryId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGlossaryArgs].
  /// [glossaryId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetGlossaryArgs({
    required String glossaryId,
    required String location,
    String? project,
  })  : glossaryId = pulumi.Input.asInput<String>(glossaryId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['glossaryId'] = glossaryId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetGlossaryArgs.fromMap(Map<String, dynamic> map) {
    return GetGlossaryArgs(
      glossaryId: map['glossaryId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
