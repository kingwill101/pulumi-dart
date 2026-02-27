import 'package:pulumi/pulumi.dart' hide Config;
import 'get_custom_connector_version_args.dart';
import 'get_custom_connector_version_result.dart';

/// Gets details of a single CustomConnectorVersion.
Future<GetCustomConnectorVersionResult> getCustomConnectorVersion(
  GetCustomConnectorVersionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:connectors/v1:getCustomConnectorVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCustomConnectorVersionResult.fromMap(result);
}
