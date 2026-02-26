import 'package:pulumi/pulumi.dart';
import 'get_connection_profile_args2.dart';
import 'get_connection_profile_result2.dart';

/// Gets details of a single connection profile.
Future<GetConnectionProfileResult2> getConnectionProfile2(
  GetConnectionProfileArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1beta1:getConnectionProfile',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectionProfileResult2.fromMap(result);
}
