// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTraceSink.
class GetTraceSinkArgs {
  final Input<String>? project;
  final Input<String> traceSinkId;

  GetTraceSinkArgs({
    this.project,
    required this.traceSinkId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['traceSinkId'] = traceSinkId;
    return map;
  }

  factory GetTraceSinkArgs.fromMap(Map<String, dynamic> map) {
    return GetTraceSinkArgs(
      project: Input.asOptionalInput<String>(map['project']),
      traceSinkId: Input.asInput<String>(map['traceSinkId']),
    );
  }
}
