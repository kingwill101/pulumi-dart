import 'package:pulumi/pulumi.dart' hide Config;
import 'get_connection_profile_args3.dart';
import 'get_connection_profile_result3.dart';

/// Use this method to get details about a connection profile.
Future<GetConnectionProfileResult3> getConnectionProfile3(
  GetConnectionProfileArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datastream/v1:getConnectionProfile',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectionProfileResult3.fromMap(result);
}
