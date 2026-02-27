import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_path_args.dart';
import 'get_network_insights_path_result.dart';

/// `aws.ec2.NetworkInsightsPath` provides details about a specific Network Insights Path.
Future<GetNetworkInsightsPathResult> getNetworkInsightsPath(
  GetNetworkInsightsPathArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getNetworkInsightsPath:getNetworkInsightsPath',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkInsightsPathResult.fromMap(result);
}
