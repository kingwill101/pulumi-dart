import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_remotebuildexecution_v1alpha_args.dart';
import 'get_instance_remotebuildexecution_v1alpha_result.dart';

/// Returns the specified instance.
Future<GetInstanceRemotebuildexecutionV1alphaResult>
    getInstanceRemotebuildexecutionV1alpha(
  GetInstanceRemotebuildexecutionV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:remotebuildexecution/v1alpha:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceRemotebuildexecutionV1alphaResult.fromMap(result);
}
