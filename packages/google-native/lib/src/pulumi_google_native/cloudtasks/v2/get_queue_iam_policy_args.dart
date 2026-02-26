// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getQueueIamPolicy.
class GetQueueIamPolicyArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> queueId;

  GetQueueIamPolicyArgs({
    required this.location,
    this.project,
    required this.queueId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['queueId'] = queueId;
    return map;
  }

  factory GetQueueIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetQueueIamPolicyArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      queueId: Input.asInput<String>(map['queueId']),
    );
  }
}
