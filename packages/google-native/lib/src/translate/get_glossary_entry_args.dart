// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_translate_v3_get_glossary_entry_args_doc}
/// Arguments for getGlossaryEntry.
/// {@endtemplate}
/// {@macro pulumi_translate_v3_get_glossary_entry_args_doc}
class GetGlossaryEntryArgs {
  final pulumi.Input<String> glossaryEntryId;
  final pulumi.Input<String> glossaryId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGlossaryEntryArgs].
  /// [glossaryEntryId] Required.
  /// [glossaryId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetGlossaryEntryArgs({
    required String glossaryEntryId,
    required String glossaryId,
    required String location,
    String? project,
  })  : glossaryEntryId = pulumi.Input.asInput<String>(glossaryEntryId),
        glossaryId = pulumi.Input.asInput<String>(glossaryId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['glossaryEntryId'] = glossaryEntryId;
    map['glossaryId'] = glossaryId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetGlossaryEntryArgs.fromMap(Map<String, dynamic> map) {
    return GetGlossaryEntryArgs(
      glossaryEntryId: map['glossaryEntryId'] as String,
      glossaryId: map['glossaryId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
