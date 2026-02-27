import 'package:pulumi/pulumi.dart';
import 'get_ip_set_args.dart';
import 'get_ip_set_result.dart';

/// Retrieves the summary of a WAFv2 IP Set.
Future<GetIpSetResult> getIpSet(
  GetIpSetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafv2/getIpSet:getIpSet',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIpSetResult.fromMap(result);
}
