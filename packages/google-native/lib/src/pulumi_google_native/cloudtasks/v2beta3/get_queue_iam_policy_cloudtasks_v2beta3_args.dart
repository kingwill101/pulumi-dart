// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getQueueIamPolicy.
class GetQueueIamPolicyCloudtasksV2beta3Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> queueId;

  GetQueueIamPolicyCloudtasksV2beta3Args({
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

  factory GetQueueIamPolicyCloudtasksV2beta3Args.fromMap(
      Map<String, dynamic> map) {
    return GetQueueIamPolicyCloudtasksV2beta3Args(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      queueId: pulumi.Input.asInput<String>(map['queueId']),
    );
  }
}
