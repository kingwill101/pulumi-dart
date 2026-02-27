// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getProcessor.
class GetProcessorArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> processorId;
  final pulumi.Input<String>? project;

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
      location: pulumi.Input.asInput<String>(map['location']),
      processorId: pulumi.Input.asInput<String>(map['processorId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
