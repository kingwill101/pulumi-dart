import 'package:pulumi/pulumi.dart';
import 'get_external_access_rule_args.dart';
import 'get_external_access_rule_result.dart';

/// Use this data source to get details about a external access rule resource.
///
/// To get more information about external address, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.networkPolicies.externalAccessRules)
Future<GetExternalAccessRuleResult> getExternalAccessRule(
  GetExternalAccessRuleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getExternalAccessRule:getExternalAccessRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetExternalAccessRuleResult.fromMap(result);
}
