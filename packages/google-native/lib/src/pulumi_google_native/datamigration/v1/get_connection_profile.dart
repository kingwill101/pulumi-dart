import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_profile_args.dart';
import 'get_connection_profile_result.dart';

/// Gets details of a single connection profile.
Future<GetConnectionProfileResult> getConnectionProfile(
  GetConnectionProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1:getConnectionProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionProfileResult.fromMap(result);
}
