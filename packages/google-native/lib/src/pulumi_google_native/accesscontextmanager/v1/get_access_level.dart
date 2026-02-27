import 'package:pulumi/pulumi.dart' hide Config;
import 'get_access_level_args.dart';
import 'get_access_level_result.dart';

/// Gets an access level based on the resource name.
Future<GetAccessLevelResult> getAccessLevel(
  GetAccessLevelArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:accesscontextmanager/v1:getAccessLevel',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAccessLevelResult.fromMap(result);
}
