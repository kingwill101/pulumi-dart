import 'package:pulumi/pulumi.dart';
import 'get_origin_request_policy_args.dart';
import 'get_origin_request_policy_result.dart';

/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### AWS-Managed Policies
///
/// AWS managed origin request policy names are prefixed with `Managed-`:
Future<GetOriginRequestPolicyResult> getOriginRequestPolicy(
  GetOriginRequestPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getOriginRequestPolicy:getOriginRequestPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOriginRequestPolicyResult.fromMap(result);
}
