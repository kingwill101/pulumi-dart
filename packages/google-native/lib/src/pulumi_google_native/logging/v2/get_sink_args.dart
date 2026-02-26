// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSink.
class GetSinkArgs {
  final Input<String>? project;
  final Input<String> sinkId;

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
      project: Input.asOptionalInput<String>(map['project']),
      sinkId: Input.asInput<String>(map['sinkId']),
    );
  }
}
