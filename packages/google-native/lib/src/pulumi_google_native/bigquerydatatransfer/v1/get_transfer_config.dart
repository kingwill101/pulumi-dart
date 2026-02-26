import 'package:pulumi/pulumi.dart';
import 'get_transfer_config_args.dart';
import 'get_transfer_config_result.dart';

/// Returns information about a data transfer config.
Future<GetTransferConfigResult> getTransferConfig(
  GetTransferConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigquerydatatransfer/v1:getTransferConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTransferConfigResult.fromMap(result);
}
