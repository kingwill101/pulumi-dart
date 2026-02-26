import 'package:pulumi/pulumi.dart';
import 'get_access_level_args2.dart';
import 'get_access_level_result2.dart';

/// Get an Access Level by resource name.
Future<GetAccessLevelResult2> getAccessLevel2(
  GetAccessLevelArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:accesscontextmanager/v1beta:getAccessLevel',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAccessLevelResult2.fromMap(result);
}
