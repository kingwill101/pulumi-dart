import 'package:pulumi/pulumi.dart';
import 'get_server_config_args2.dart';
import 'get_server_config_result2.dart';

/// Returns configuration info about the Google Kubernetes Engine service.
Future<GetServerConfigResult2> getServerConfig2(
  GetServerConfigArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:container/v1beta1:getServerConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServerConfigResult2.fromMap(result);
}
