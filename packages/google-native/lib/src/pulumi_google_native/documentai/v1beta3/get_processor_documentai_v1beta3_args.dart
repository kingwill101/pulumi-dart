// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getProcessor.
class GetProcessorDocumentaiV1beta3Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> processorId;
  final pulumi.Input<String>? project;

  GetProcessorDocumentaiV1beta3Args({
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

  factory GetProcessorDocumentaiV1beta3Args.fromMap(Map<String, dynamic> map) {
    return GetProcessorDocumentaiV1beta3Args(
      location: pulumi.Input.asInput<String>(map['location']),
      processorId: pulumi.Input.asInput<String>(map['processorId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
