// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containeranalysis_v1_get_occurrence_args_doc}
/// Arguments for getOccurrence.
/// {@endtemplate}
/// {@macro pulumi_containeranalysis_v1_get_occurrence_args_doc}
class GetOccurrenceArgs {
  final pulumi.Input<String> occurrenceId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetOccurrenceArgs].
  /// [occurrenceId] Required.
  /// [project] Optional.
  GetOccurrenceArgs({
    required String occurrenceId,
    String? project,
  })  : occurrenceId = pulumi.Input.asInput<String>(occurrenceId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['occurrenceId'] = occurrenceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetOccurrenceArgs.fromMap(Map<String, dynamic> map) {
    return GetOccurrenceArgs(
      occurrenceId: map['occurrenceId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
