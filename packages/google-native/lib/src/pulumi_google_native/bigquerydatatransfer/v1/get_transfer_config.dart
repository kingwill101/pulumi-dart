import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transfer_config_args.dart';
import 'get_transfer_config_result.dart';

/// Returns information about a data transfer config.
Future<GetTransferConfigResult> getTransferConfig(
  GetTransferConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigquerydatatransfer/v1:getTransferConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransferConfigResult.fromMap(result);
}
