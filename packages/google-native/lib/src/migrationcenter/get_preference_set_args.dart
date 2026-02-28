// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrationcenter_v1_get_preference_set_args_doc}
/// Arguments for getPreferenceSet.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_v1_get_preference_set_args_doc}
class GetPreferenceSetArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> preferenceSetId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPreferenceSetArgs].
  /// [location] Required.
  /// [preferenceSetId] Required.
  /// [project] Optional.
  GetPreferenceSetArgs({
    required String location,
    required String preferenceSetId,
    String? project,
  })  : location = pulumi.Input.asInput<String>(location),
        preferenceSetId = pulumi.Input.asInput<String>(preferenceSetId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['preferenceSetId'] = preferenceSetId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetPreferenceSetArgs.fromMap(Map<String, dynamic> map) {
    return GetPreferenceSetArgs(
      location: map['location'] as String,
      preferenceSetId: map['preferenceSetId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
