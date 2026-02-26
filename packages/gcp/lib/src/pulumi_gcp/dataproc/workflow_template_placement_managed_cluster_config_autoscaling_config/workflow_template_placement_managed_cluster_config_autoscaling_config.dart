// ignore_for_file: unused_element, unnecessary_cast

class WorkflowTemplatePlacementManagedClusterConfigAutoscalingConfig {
  /// The autoscaling policy used by the cluster. Only resource names including projectid and location (region) are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/` Note that the policy must be in the same project and Dataproc region.
  final String? policy;

  WorkflowTemplatePlacementManagedClusterConfigAutoscalingConfig({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final policyValue = policy;
    if (policyValue != null) {
      map['policy'] = policyValue;
    }
    return map;
  }

  factory WorkflowTemplatePlacementManagedClusterConfigAutoscalingConfig.fromMap(
      Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigAutoscalingConfig(
      policy: map['policy'] == null ? null : map['policy'] as String,
    );
  }
}
