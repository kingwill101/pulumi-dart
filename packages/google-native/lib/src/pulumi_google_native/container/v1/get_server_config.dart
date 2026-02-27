import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_config_args.dart';
import 'get_server_config_result.dart';

/// Returns configuration info about the Google Kubernetes Engine service.
Future<GetServerConfigResult> getServerConfig(
  GetServerConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:container/v1:getServerConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerConfigResult.fromMap(result);
}
