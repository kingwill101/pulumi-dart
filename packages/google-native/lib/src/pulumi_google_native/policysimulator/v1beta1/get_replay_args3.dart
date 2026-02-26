// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getReplay.
class GetReplayArgs3 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> replayId;

  GetReplayArgs3({
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

  factory GetReplayArgs3.fromMap(Map<String, dynamic> map) {
    return GetReplayArgs3(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      replayId: Input.asInput<String>(map['replayId']),
    );
  }
}
