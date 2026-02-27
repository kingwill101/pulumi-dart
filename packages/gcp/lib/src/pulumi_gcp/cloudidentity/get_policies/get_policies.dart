import 'package:pulumi/pulumi.dart';
import 'get_policies_args.dart';
import 'get_policies_result.dart';

/// Use this data source to list Cloud Identity policies.
Future<GetPoliciesResult> getPolicies(
  GetPoliciesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudidentity/getPolicies:getPolicies',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPoliciesResult.fromMap(result);
}
