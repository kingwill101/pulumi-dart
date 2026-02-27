import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_profile_datastream_v1_args.dart';
import 'get_connection_profile_datastream_v1_result.dart';

/// Use this method to get details about a connection profile.
Future<GetConnectionProfileDatastreamV1Result> getConnectionProfileDatastreamV1(
  GetConnectionProfileDatastreamV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datastream/v1:getConnectionProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionProfileDatastreamV1Result.fromMap(result);
}
