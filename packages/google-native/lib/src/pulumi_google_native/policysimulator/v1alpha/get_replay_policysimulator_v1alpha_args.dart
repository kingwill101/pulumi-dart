// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getReplay.
class GetReplayPolicysimulatorV1alphaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> replayId;

  GetReplayPolicysimulatorV1alphaArgs({
    required this.location,
    this.project,
    required this.replayId,
  });

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
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      replayId: pulumi.Input.asInput<String>(map['replayId']),
    );
  }
}
