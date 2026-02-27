import 'package:pulumi/pulumi.dart' hide Config;
import 'get_hcx_activation_key_args.dart';
import 'get_hcx_activation_key_result.dart';

/// Retrieves a `HcxActivationKey` resource by its resource name.
Future<GetHcxActivationKeyResult> getHcxActivationKey(
  GetHcxActivationKeyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getHcxActivationKey',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHcxActivationKeyResult.fromMap(result);
}
