// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkInsightsAnalysisExplanationVpnConnection {
  /// ARN of the selected Network Insights Analysis.
  final String arn;
  final String id;

  /// Name of the filter field. Valid values can be found in the EC2 [`DescribeNetworkInsightsAnalyses`](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeNetworkInsightsAnalyses.html) API Reference.
  final String name;

  /// Creates a new [GetNetworkInsightsAnalysisExplanationVpnConnection].
  /// [arn] ARN of the selected Network Insights Analysis.
  /// [id] Required.
  /// [name] Name of the filter field. Valid values can be found in the EC2 [`DescribeNetworkInsightsAnalyses`](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeNetworkInsightsAnalyses.html) API Reference.
  GetNetworkInsightsAnalysisExplanationVpnConnection({
    required this.arn,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['id'] = id;
    map['name'] = name;
    return map;
  }

  factory GetNetworkInsightsAnalysisExplanationVpnConnection.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisExplanationVpnConnection(
      arn: map['arn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}
