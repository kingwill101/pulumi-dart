import 'package:pulumi/pulumi.dart' hide Config;
import 'get_target_instance_args3.dart';
import 'get_target_instance_result3.dart';

/// Returns the specified TargetInstance resource.
Future<GetTargetInstanceResult3> getTargetInstance3(
  GetTargetInstanceArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getTargetInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTargetInstanceResult3.fromMap(result);
}
