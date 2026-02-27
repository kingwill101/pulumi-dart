// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getStream.
class GetStreamArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> streamId;

  GetStreamArgs({
    required this.location,
    this.project,
    required this.streamId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['streamId'] = streamId;
    return map;
  }

  factory GetStreamArgs.fromMap(Map<String, dynamic> map) {
    return GetStreamArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      streamId: Input.asInput<String>(map['streamId']),
    );
  }
}
