import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_sslpolicy_args.dart';
import 'get_region_sslpolicy_result.dart';

Future<GetRegionSSLPolicyResult> getRegionSSLPolicy(
  GetRegionSSLPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionSSLPolicy:getRegionSSLPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionSSLPolicyResult.fromMap(result);
}
