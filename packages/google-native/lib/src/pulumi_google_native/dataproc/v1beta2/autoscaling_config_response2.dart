// ignore_for_file: unused_element, unnecessary_cast

/// Autoscaling Policy config associated with the cluster.
class AutoscalingConfigResponse2 {
  /// Optional. The autoscaling policy used by the cluster.Only resource names including projectid and location (region) are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/locations/[dataproc_region]/autoscalingPolicies/[policy_id] projects/[project_id]/locations/[dataproc_region]/autoscalingPolicies/[policy_id]Note that the policy must be in the same project and Dataproc region.
  final String policyUri;

  AutoscalingConfigResponse2({
    required this.policyUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyUri'] = policyUri;
    return map;
  }

  factory AutoscalingConfigResponse2.fromMap(Map<String, dynamic> map) {
    return AutoscalingConfigResponse2(
      policyUri: map['policyUri'] as String,
    );
  }
}
