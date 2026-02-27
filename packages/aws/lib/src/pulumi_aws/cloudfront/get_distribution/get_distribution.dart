import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_distribution_args.dart';
import 'get_distribution_result.dart';

/// Use this data source to retrieve information about a CloudFront distribution.
Future<GetDistributionResult> getDistribution(
  GetDistributionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getDistribution:getDistribution',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDistributionResult.fromMap(result);
}
