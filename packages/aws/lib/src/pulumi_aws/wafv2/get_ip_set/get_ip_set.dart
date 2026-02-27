import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ip_set_args.dart';
import 'get_ip_set_result.dart';

/// Retrieves the summary of a WAFv2 IP Set.
Future<GetIpSetResult> getIpSet(
  GetIpSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafv2/getIpSet:getIpSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpSetResult.fromMap(result);
}
