import 'package:pulumi/pulumi.dart' hide Config;
import 'get_target_instance_args2.dart';
import 'get_target_instance_result2.dart';

/// Returns the specified TargetInstance resource.
Future<GetTargetInstanceResult2> getTargetInstance2(
  GetTargetInstanceArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getTargetInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTargetInstanceResult2.fromMap(result);
}
