import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_target_server_args.dart';
import 'get_target_server_result.dart';

/// Gets a TargetServer resource.
Future<GetTargetServerResult> getTargetServer(
  GetTargetServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getTargetServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetServerResult.fromMap(result);
}
