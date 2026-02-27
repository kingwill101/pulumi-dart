// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getExecution.
class GetExecutionArgs2 {
  final Input<String> executionId;
  final Input<String> location;
  final Input<String> metadataStoreId;
  final Input<String>? project;

  GetExecutionArgs2({
    required this.executionId,
    required this.location,
    required this.metadataStoreId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['executionId'] = executionId;
    map['location'] = location;
    map['metadataStoreId'] = metadataStoreId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetExecutionArgs2.fromMap(Map<String, dynamic> map) {
    return GetExecutionArgs2(
      executionId: Input.asInput<String>(map['executionId']),
      location: Input.asInput<String>(map['location']),
      metadataStoreId: Input.asInput<String>(map['metadataStoreId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
