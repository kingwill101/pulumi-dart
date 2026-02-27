import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_target_instance_args.dart';
import 'get_target_instance_result.dart';

/// Returns the specified TargetInstance resource.
Future<GetTargetInstanceResult> getTargetInstance(
  GetTargetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getTargetInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetInstanceResult.fromMap(result);
}
