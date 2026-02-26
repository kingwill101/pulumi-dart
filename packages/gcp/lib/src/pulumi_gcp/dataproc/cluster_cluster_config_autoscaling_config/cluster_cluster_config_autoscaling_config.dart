// ignore_for_file: unused_element, unnecessary_cast

class ClusterClusterConfigAutoscalingConfig {
  /// The autoscaling policy used by the cluster.
  ///
  /// Only resource names including projectid and location (region) are valid. Examples:
  ///
  /// `https://www.googleapis.com/compute/v1/projects/[projectId]/locations/<span pulumi-lang-nodejs="[dataprocRegion]" pulumi-lang-dotnet="[DataprocRegion]" pulumi-lang-go="[dataprocRegion]" pulumi-lang-python="[dataproc_region]" pulumi-lang-yaml="[dataprocRegion]" pulumi-lang-java="[dataprocRegion]">[dataproc_region]</span>/autoscalingPolicies/<span pulumi-lang-nodejs="[policyId]" pulumi-lang-dotnet="[PolicyId]" pulumi-lang-go="[policyId]" pulumi-lang-python="[policy_id]" pulumi-lang-yaml="[policyId]" pulumi-lang-java="[policyId]">[policy_id]</span>`
  /// `projects/[projectId]/locations/<span pulumi-lang-nodejs="[dataprocRegion]" pulumi-lang-dotnet="[DataprocRegion]" pulumi-lang-go="[dataprocRegion]" pulumi-lang-python="[dataproc_region]" pulumi-lang-yaml="[dataprocRegion]" pulumi-lang-java="[dataprocRegion]">[dataproc_region]</span>/autoscalingPolicies/<span pulumi-lang-nodejs="[policyId]" pulumi-lang-dotnet="[PolicyId]" pulumi-lang-go="[policyId]" pulumi-lang-python="[policy_id]" pulumi-lang-yaml="[policyId]" pulumi-lang-java="[policyId]">[policy_id]</span>`
  /// Note that the policy must be in the same project and Cloud Dataproc region.
  ///
  /// - - -
  final String policyUri;

  ClusterClusterConfigAutoscalingConfig({
    required this.policyUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyUri'] = policyUri;
    return map;
  }

  factory ClusterClusterConfigAutoscalingConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterClusterConfigAutoscalingConfig(
      policyUri: map['policyUri'] as String,
    );
  }
}
