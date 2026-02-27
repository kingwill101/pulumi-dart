// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getStream.
class GetStreamArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> streamId;

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
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      streamId: pulumi.Input.asInput<String>(map['streamId']),
    );
  }
}
