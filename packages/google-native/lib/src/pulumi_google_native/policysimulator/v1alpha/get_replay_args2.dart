// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getReplay.
class GetReplayArgs2 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> replayId;

  GetReplayArgs2({
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

  factory GetReplayArgs2.fromMap(Map<String, dynamic> map) {
    return GetReplayArgs2(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      replayId: Input.asInput<String>(map['replayId']),
    );
  }
}
