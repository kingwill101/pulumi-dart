import 'package:pulumi/pulumi.dart';
import 'get_router_configuration_args.dart';
import 'get_router_configuration_result.dart';

/// Data source for retrieving Router Configuration instructions for a given AWS Direct Connect Virtual Interface and Router Type.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetRouterConfigurationResult> getRouterConfiguration(
  GetRouterConfigurationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:directconnect/getRouterConfiguration:getRouterConfiguration',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRouterConfigurationResult.fromMap(result);
}
