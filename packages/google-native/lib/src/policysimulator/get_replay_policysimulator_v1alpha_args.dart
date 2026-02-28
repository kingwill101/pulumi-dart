// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policysimulator_v1alpha_get_replay_policysimulator_v1alpha_args_doc}
/// Arguments for getReplay.
/// {@endtemplate}
/// {@macro pulumi_policysimulator_v1alpha_get_replay_policysimulator_v1alpha_args_doc}
class GetReplayPolicysimulatorV1alphaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> replayId;

  /// Creates a new [GetReplayPolicysimulatorV1alphaArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [replayId] Required.
  GetReplayPolicysimulatorV1alphaArgs({
    required String location,
    String? project,
    required String replayId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        replayId = pulumi.Input.asInput<String>(replayId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['replayId'] = replayId;
    return map;
  }

  factory GetReplayPolicysimulatorV1alphaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetReplayPolicysimulatorV1alphaArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      replayId: map['replayId'] as String,
    );
  }
}
