import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cache_policy_args.dart';
import 'get_cache_policy_result.dart';

/// Use this data source to retrieve information about a CloudFront cache policy.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### AWS-Managed Policies
///
/// AWS managed cache policy names are prefixed with `Managed-`, except for `UseOriginCacheControlHeaders` and `UseOriginCacheControlHeaders-QueryStrings`:
Future<GetCachePolicyResult> getCachePolicy(
  GetCachePolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getCachePolicy:getCachePolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCachePolicyResult.fromMap(result);
}
