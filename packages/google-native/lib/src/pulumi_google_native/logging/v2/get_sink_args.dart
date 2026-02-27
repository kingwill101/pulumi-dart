// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSink.
class GetSinkArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sinkId;

  GetSinkArgs({
    this.project,
    required this.sinkId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sinkId'] = sinkId;
    return map;
  }

  factory GetSinkArgs.fromMap(Map<String, dynamic> map) {
    return GetSinkArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sinkId: pulumi.Input.asInput<String>(map['sinkId']),
    );
  }
}
