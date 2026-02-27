import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_plugin_args.dart';
import 'get_custom_plugin_result.dart';

/// Get information on an Amazon MSK Connect custom plugin.
Future<GetCustomPluginResult> getCustomPlugin(
  GetCustomPluginArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:mskconnect/getCustomPlugin:getCustomPlugin',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomPluginResult.fromMap(result);
}
