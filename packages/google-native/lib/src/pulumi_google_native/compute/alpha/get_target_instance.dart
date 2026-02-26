import 'package:pulumi/pulumi.dart';
import 'get_target_instance_args.dart';
import 'get_target_instance_result.dart';

/// Returns the specified TargetInstance resource.
Future<GetTargetInstanceResult> getTargetInstance(
  GetTargetInstanceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getTargetInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTargetInstanceResult.fromMap(result);
}
