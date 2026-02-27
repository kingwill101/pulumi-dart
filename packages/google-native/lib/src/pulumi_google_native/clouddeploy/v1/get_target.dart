import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_target_args.dart';
import 'get_target_result.dart';

/// Gets details of a single Target.
Future<GetTargetResult> getTarget(
  GetTargetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:clouddeploy/v1:getTarget',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetResult.fromMap(result);
}
