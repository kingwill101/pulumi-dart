import 'package:pulumi/pulumi.dart';
import 'get_network_insights_analysis_args.dart';
import 'get_network_insights_analysis_result.dart';

/// `aws.ec2.NetworkInsightsAnalysis` provides details about a specific Network Insights Analysis.
Future<GetNetworkInsightsAnalysisResult> getNetworkInsightsAnalysis(
  GetNetworkInsightsAnalysisArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getNetworkInsightsAnalysis:getNetworkInsightsAnalysis',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkInsightsAnalysisResult.fromMap(result);
}
