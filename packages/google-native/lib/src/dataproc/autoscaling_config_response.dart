// ignore_for_file: unused_element, unnecessary_cast

/// Autoscaling Policy config associated with the cluster.
class AutoscalingConfigResponse {
  /// Optional. The autoscaling policy used by the cluster.Only resource names including projectid and location (region) are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/locations/[dataproc_region]/autoscalingPolicies/[policy_id] projects/[project_id]/locations/[dataproc_region]/autoscalingPolicies/[policy_id]Note that the policy must be in the same project and Dataproc region.
  final String policyUri;

  /// Creates a new [AutoscalingConfigResponse].
  /// [policyUri] Optional. The autoscaling policy used by the cluster.Only resource names including projectid and location (region) are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/locations/[dataproc_region]/autoscalingPolicies/[policy_id] projects/[project_id]/locations/[dataproc_region]/autoscalingPolicies/[policy_id]Note that the policy must be in the same project and Dataproc region.
  AutoscalingConfigResponse({required this.policyUri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'policyUri': policyUri};
  }

  factory AutoscalingConfigResponse.fromMap(Map<String, dynamic> map) {
    return AutoscalingConfigResponse(policyUri: map['policyUri'] as String);
  }
}
