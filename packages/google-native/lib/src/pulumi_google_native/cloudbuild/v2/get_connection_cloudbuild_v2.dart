import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_cloudbuild_v2_args.dart';
import 'get_connection_cloudbuild_v2_result.dart';

/// Gets details of a single connection.
Future<GetConnectionCloudbuildV2Result> getConnectionCloudbuildV2(
  GetConnectionCloudbuildV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v2:getConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionCloudbuildV2Result.fromMap(result);
}
