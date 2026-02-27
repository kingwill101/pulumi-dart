import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_runtime_args.dart';
import 'get_runtime_result.dart';

/// Gets details of a single Runtime. The location must be a regional endpoint rather than zonal.
Future<GetRuntimeResult> getRuntime(
  GetRuntimeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:notebooks/v1:getRuntime',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRuntimeResult.fromMap(result);
}
