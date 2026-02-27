// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getOrganizationJobTrigger.
class GetOrganizationJobTriggerArgs {
  final Input<String> jobTriggerId;
  final Input<String> location;
  final Input<String> organizationId;

  GetOrganizationJobTriggerArgs({
    required this.jobTriggerId,
    required this.location,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jobTriggerId'] = jobTriggerId;
    map['location'] = location;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetOrganizationJobTriggerArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationJobTriggerArgs(
      jobTriggerId: Input.asInput<String>(map['jobTriggerId']),
      location: Input.asInput<String>(map['location']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
