import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_alloydb_v1alpha_args.dart';
import 'get_instance_alloydb_v1alpha_result.dart';

/// Gets details of a single Instance.
Future<GetInstanceAlloydbV1alphaResult> getInstanceAlloydbV1alpha(
  GetInstanceAlloydbV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1alpha:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceAlloydbV1alphaResult.fromMap(result);
}
