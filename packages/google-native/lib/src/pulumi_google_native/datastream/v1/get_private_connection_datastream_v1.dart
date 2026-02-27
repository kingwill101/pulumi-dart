import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_private_connection_datastream_v1_args.dart';
import 'get_private_connection_datastream_v1_result.dart';

/// Use this method to get details about a private connectivity configuration.
Future<GetPrivateConnectionDatastreamV1Result> getPrivateConnectionDatastreamV1(
  GetPrivateConnectionDatastreamV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datastream/v1:getPrivateConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateConnectionDatastreamV1Result.fromMap(result);
}
