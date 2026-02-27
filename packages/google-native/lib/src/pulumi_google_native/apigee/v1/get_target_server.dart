import 'package:pulumi/pulumi.dart' hide Config;
import 'get_target_server_args.dart';
import 'get_target_server_result.dart';

/// Gets a TargetServer resource.
Future<GetTargetServerResult> getTargetServer(
  GetTargetServerArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getTargetServer',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTargetServerResult.fromMap(result);
}
