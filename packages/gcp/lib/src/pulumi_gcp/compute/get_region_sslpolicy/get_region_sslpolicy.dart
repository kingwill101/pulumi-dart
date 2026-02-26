import 'package:pulumi/pulumi.dart';
import 'get_region_sslpolicy_args.dart';
import 'get_region_sslpolicy_result.dart';

Future<GetRegionSSLPolicyResult> getRegionSSLPolicy(
  GetRegionSSLPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionSSLPolicy:getRegionSSLPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionSSLPolicyResult.fromMap(result);
}
