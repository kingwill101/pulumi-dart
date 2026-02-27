// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getStream.
class GetStreamArgs2 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> streamId;

  GetStreamArgs2({
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

  factory GetStreamArgs2.fromMap(Map<String, dynamic> map) {
    return GetStreamArgs2(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      streamId: Input.asInput<String>(map['streamId']),
    );
  }
}
