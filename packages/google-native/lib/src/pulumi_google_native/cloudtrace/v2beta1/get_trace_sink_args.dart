// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTraceSink.
class GetTraceSinkArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> traceSinkId;

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
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      traceSinkId: pulumi.Input.asInput<String>(map['traceSinkId']),
    );
  }
}
