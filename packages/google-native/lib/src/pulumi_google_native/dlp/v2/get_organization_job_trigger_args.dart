// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationJobTrigger.
class GetOrganizationJobTriggerArgs {
  final pulumi.Input<String> jobTriggerId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;

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
      jobTriggerId: pulumi.Input.asInput<String>(map['jobTriggerId']),
      location: pulumi.Input.asInput<String>(map['location']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
