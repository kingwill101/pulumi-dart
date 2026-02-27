import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_envgroup_args.dart';
import 'get_envgroup_result.dart';

/// Gets an environment group.
Future<GetEnvgroupResult> getEnvgroup(
  GetEnvgroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getEnvgroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvgroupResult.fromMap(result);
}
