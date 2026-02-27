import 'package:pulumi/pulumi.dart';
import 'get_configuration_args.dart';
import 'get_configuration_result.dart';

/// Get information on an Amazon MSK Configuration.
Future<GetConfigurationResult> getConfiguration(
  GetConfigurationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:msk/getConfiguration:getConfiguration',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConfigurationResult.fromMap(result);
}
