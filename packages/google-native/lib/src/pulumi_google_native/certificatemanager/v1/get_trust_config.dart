import 'package:pulumi/pulumi.dart';
import 'get_trust_config_args.dart';
import 'get_trust_config_result.dart';

/// Gets details of a single TrustConfig.
Future<GetTrustConfigResult> getTrustConfig(
  GetTrustConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:certificatemanager/v1:getTrustConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTrustConfigResult.fromMap(result);
}
