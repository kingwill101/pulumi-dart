import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_config_container_v1beta1_args.dart';
import 'get_server_config_container_v1beta1_result.dart';

/// Returns configuration info about the Google Kubernetes Engine service.
Future<GetServerConfigContainerV1beta1Result> getServerConfigContainerV1beta1(
  GetServerConfigContainerV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:container/v1beta1:getServerConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerConfigContainerV1beta1Result.fromMap(result);
}
