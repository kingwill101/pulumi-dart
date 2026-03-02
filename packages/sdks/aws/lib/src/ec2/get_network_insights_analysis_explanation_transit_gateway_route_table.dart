// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTable {
  /// ARN of the selected Network Insights Analysis.
  final pulumi.Input<String> arn;
  final pulumi.Input<String> id;
  /// Name of the filter field. Valid values can be found in the EC2 [`DescribeNetworkInsightsAnalyses`](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeNetworkInsightsAnalyses.html) API Reference.
  final pulumi.Input<String> name;

  /// Creates a new [GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTable].
  /// [arn] ARN of the selected Network Insights Analysis.
  /// [id] Required.
  /// [name] Name of the filter field. Valid values can be found in the EC2 [`DescribeNetworkInsightsAnalyses`](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeNetworkInsightsAnalyses.html) API Reference.
  GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTable({
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

  factory GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTable.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTable(
      arn: (map['arn'] as String).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

