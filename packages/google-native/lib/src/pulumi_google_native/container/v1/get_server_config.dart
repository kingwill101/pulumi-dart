import 'package:pulumi/pulumi.dart';
import 'get_server_config_args.dart';
import 'get_server_config_result.dart';

/// Returns configuration info about the Google Kubernetes Engine service.
Future<GetServerConfigResult> getServerConfig(
  GetServerConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:container/v1:getServerConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServerConfigResult.fromMap(result);
}
