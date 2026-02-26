// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getProcessor.
class GetProcessorArgs {
  final Input<String> location;
  final Input<String> processorId;
  final Input<String>? project;

  GetProcessorArgs({
    required this.location,
    required this.processorId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['processorId'] = processorId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetProcessorArgs.fromMap(Map<String, dynamic> map) {
    return GetProcessorArgs(
      location: Input.asInput<String>(map['location']),
      processorId: Input.asInput<String>(map['processorId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
