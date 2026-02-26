// ignore_for_file: unused_element, unnecessary_cast

/// Autoscaling Policy config associated with the cluster.
class AutoscalingConfig2 {
  /// Optional. The autoscaling policy used by the cluster.Only resource names including projectid and location (region) are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/locations/[dataproc_region]/autoscalingPolicies/[policy_id] projects/[project_id]/locations/[dataproc_region]/autoscalingPolicies/[policy_id]Note that the policy must be in the same project and Dataproc region.
  final String? policyUri;

  AutoscalingConfig2({
    this.policyUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final policyUriValue = policyUri;
    if (policyUriValue != null) {
      map['policyUri'] = policyUriValue;
    }
    return map;
  }

  factory AutoscalingConfig2.fromMap(Map<String, dynamic> map) {
    return AutoscalingConfig2(
      policyUri: map['policyUri'] == null ? null : map['policyUri'] as String,
    );
  }
}
