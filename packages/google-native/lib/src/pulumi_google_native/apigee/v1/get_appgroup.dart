import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_appgroup_args.dart';
import 'get_appgroup_result.dart';

/// Returns the AppGroup details for the provided AppGroup name in the request URI.
Future<GetAppgroupResult> getAppgroup(
  GetAppgroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getAppgroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppgroupResult.fromMap(result);
}
