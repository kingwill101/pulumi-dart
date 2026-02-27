// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_resource_status_instance_schedule_policy_status_response_compute_v1.dart';

/// Contains output only fields. Use this sub-message for all output fields set on ResourcePolicy. The internal structure of this "status" field should mimic the structure of ResourcePolicy proto specification.
class ResourcePolicyResourceStatusResponseComputeV1 {
  /// Specifies a set of output values reffering to the instance_schedule_policy system status. This field should have the same name as corresponding policy field.
  final ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponseComputeV1
      instanceSchedulePolicy;

  ResourcePolicyResourceStatusResponseComputeV1({
    required this.instanceSchedulePolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceSchedulePolicy'] = instanceSchedulePolicy.toMap();
    return map;
  }

  factory ResourcePolicyResourceStatusResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicyResourceStatusResponseComputeV1(
      instanceSchedulePolicy:
          ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponseComputeV1
              .fromMap((map['instanceSchedulePolicy'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
