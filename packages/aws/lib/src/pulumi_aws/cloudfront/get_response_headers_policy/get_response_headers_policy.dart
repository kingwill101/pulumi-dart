import 'package:pulumi/pulumi.dart';
import 'get_response_headers_policy_args.dart';
import 'get_response_headers_policy_result.dart';

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
/// AWS managed response header policy names are prefixed with `Managed-`:
Future<GetResponseHeadersPolicyResult> getResponseHeadersPolicy(
  GetResponseHeadersPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getResponseHeadersPolicy:getResponseHeadersPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResponseHeadersPolicyResult.fromMap(result);
}
