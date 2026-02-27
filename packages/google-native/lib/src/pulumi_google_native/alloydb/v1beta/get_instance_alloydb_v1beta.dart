import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_alloydb_v1beta_args.dart';
import 'get_instance_alloydb_v1beta_result.dart';

/// Gets details of a single Instance.
Future<GetInstanceAlloydbV1betaResult> getInstanceAlloydbV1beta(
  GetInstanceAlloydbV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1beta:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceAlloydbV1betaResult.fromMap(result);
}
