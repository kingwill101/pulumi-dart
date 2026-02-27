import 'package:pulumi/pulumi.dart';
import 'get_custom_plugin_args.dart';
import 'get_custom_plugin_result.dart';

/// Get information on an Amazon MSK Connect custom plugin.
Future<GetCustomPluginResult> getCustomPlugin(
  GetCustomPluginArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:mskconnect/getCustomPlugin:getCustomPlugin',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCustomPluginResult.fromMap(result);
}
