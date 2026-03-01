// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_v1_get_entry_group_args_doc}
/// Arguments for getEntryGroup.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1_get_entry_group_args_doc}
class GetEntryGroupArgs {
  final pulumi.Input<String> entryGroupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? readMask;

  /// Creates a new [GetEntryGroupArgs].
  /// [entryGroupId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [readMask] Optional.
  GetEntryGroupArgs({
    required String entryGroupId,
    required String location,
    String? project,
    String? readMask,
  }) : entryGroupId = pulumi.Input.asInput<String>(entryGroupId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       readMask = pulumi.Input.asOptionalInput<String>(readMask);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entryGroupId': entryGroupId,
      'location': location,
      'project': ?project,
      'readMask': ?readMask,
    };
  }

  factory GetEntryGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetEntryGroupArgs(
      entryGroupId: map['entryGroupId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      readMask: map['readMask'] == null ? null : map['readMask'] as String,
    );
  }
}
