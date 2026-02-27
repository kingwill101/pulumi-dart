import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_profile_datastream_v1alpha1_args.dart';
import 'get_connection_profile_datastream_v1alpha1_result.dart';

/// Use this method to get details about a connection profile.
Future<GetConnectionProfileDatastreamV1alpha1Result>
    getConnectionProfileDatastreamV1alpha1(
  GetConnectionProfileDatastreamV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datastream/v1alpha1:getConnectionProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionProfileDatastreamV1alpha1Result.fromMap(result);
}
