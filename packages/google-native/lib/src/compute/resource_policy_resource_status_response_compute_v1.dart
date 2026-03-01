// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_resource_status_instance_schedule_policy_status_response_compute_v1.dart';

/// Contains output only fields. Use this sub-message for all output fields set on ResourcePolicy. The internal structure of this "status" field should mimic the structure of ResourcePolicy proto specification.
class ResourcePolicyResourceStatusResponseComputeV1 {
  /// Specifies a set of output values reffering to the instance_schedule_policy system status. This field should have the same name as corresponding policy field.
  final ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponseComputeV1
  instanceSchedulePolicy;

  /// Creates a new [ResourcePolicyResourceStatusResponseComputeV1].
  /// [instanceSchedulePolicy] Specifies a set of output values reffering to the instance_schedule_policy system status. This field should have the same name as corresponding policy field.
  ResourcePolicyResourceStatusResponseComputeV1({
    required this.instanceSchedulePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceSchedulePolicy': instanceSchedulePolicy.toMap(),
    };
  }

  factory ResourcePolicyResourceStatusResponseComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourcePolicyResourceStatusResponseComputeV1(
      instanceSchedulePolicy:
          ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponseComputeV1.fromMap(
            (map['instanceSchedulePolicy'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
