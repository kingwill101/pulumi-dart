import 'package:pulumi/pulumi.dart' hide Config;
import 'get_target_args.dart';
import 'get_target_result.dart';

/// Gets details of a single Target.
Future<GetTargetResult> getTarget(
  GetTargetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:clouddeploy/v1:getTarget',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTargetResult.fromMap(result);
}
