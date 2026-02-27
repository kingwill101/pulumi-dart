import 'package:pulumi/pulumi.dart' hide Config;
import 'get_app_profile_args.dart';
import 'get_app_profile_result.dart';

/// Gets information about an app profile.
Future<GetAppProfileResult> getAppProfile(
  GetAppProfileArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigtableadmin/v2:getAppProfile',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAppProfileResult.fromMap(result);
}
