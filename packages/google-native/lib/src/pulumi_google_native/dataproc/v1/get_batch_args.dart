// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getBatch.
class GetBatchArgs {
  final Input<String> batchId;
  final Input<String> location;
  final Input<String>? project;

  GetBatchArgs({
    required this.batchId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['batchId'] = batchId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetBatchArgs.fromMap(Map<String, dynamic> map) {
    return GetBatchArgs(
      batchId: Input.asInput<String>(map['batchId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
