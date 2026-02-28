// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_clouddeploy_v1_get_target_args_doc}
/// Arguments for getTarget.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_v1_get_target_args_doc}
class GetTargetArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetId;

  /// Creates a new [GetTargetArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [targetId] Required.
  GetTargetArgs({
    required String location,
    String? project,
    required String targetId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      targetId = pulumi.Input.asInput<String>(targetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'targetId': targetId,
    };
  }

  factory GetTargetArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      targetId: map['targetId'] as String,
    );
  }
}

