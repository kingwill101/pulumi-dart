// ignore_for_file: unused_element, unnecessary_cast


class GetNetworkInsightsAnalysisExplanationLoadBalancerTargetGroup {
  /// ARN of the selected Network Insights Analysis.
  final String arn;
  final String id;
  /// Name of the filter field. Valid values can be found in the EC2 [`DescribeNetworkInsightsAnalyses`](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeNetworkInsightsAnalyses.html) API Reference.
  final String name;

  /// Creates a new [GetNetworkInsightsAnalysisExplanationLoadBalancerTargetGroup].
  /// [arn] ARN of the selected Network Insights Analysis.
  /// [id] Required.
  /// [name] Name of the filter field. Valid values can be found in the EC2 [`DescribeNetworkInsightsAnalyses`](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeNetworkInsightsAnalyses.html) API Reference.
  GetNetworkInsightsAnalysisExplanationLoadBalancerTargetGroup({
    required this.arn,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'id': id,
      'name': name,
    };
  }

  factory GetNetworkInsightsAnalysisExplanationLoadBalancerTargetGroup.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisExplanationLoadBalancerTargetGroup(
      arn: map['arn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}

