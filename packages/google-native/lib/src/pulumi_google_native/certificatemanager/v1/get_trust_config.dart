import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trust_config_args.dart';
import 'get_trust_config_result.dart';

/// Gets details of a single TrustConfig.
Future<GetTrustConfigResult> getTrustConfig(
  GetTrustConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:certificatemanager/v1:getTrustConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrustConfigResult.fromMap(result);
}
