import 'package:pulumi/pulumi.dart';
import 'get_distribution_args.dart';
import 'get_distribution_result.dart';

/// Use this data source to retrieve information about a CloudFront distribution.
Future<GetDistributionResult> getDistribution(
  GetDistributionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getDistribution:getDistribution',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDistributionResult.fromMap(result);
}
