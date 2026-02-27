import 'package:pulumi/pulumi.dart' hide Config;
import 'get_connection_profile_args4.dart';
import 'get_connection_profile_result4.dart';

/// Use this method to get details about a connection profile.
Future<GetConnectionProfileResult4> getConnectionProfile4(
  GetConnectionProfileArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datastream/v1alpha1:getConnectionProfile',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectionProfileResult4.fromMap(result);
}
