import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_private_connection_datastream_v1alpha1_args.dart';
import 'get_private_connection_datastream_v1alpha1_result.dart';

/// Use this method to get details about a private connectivity configuration.
Future<GetPrivateConnectionDatastreamV1alpha1Result>
    getPrivateConnectionDatastreamV1alpha1(
  GetPrivateConnectionDatastreamV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datastream/v1alpha1:getPrivateConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateConnectionDatastreamV1alpha1Result.fromMap(result);
}
