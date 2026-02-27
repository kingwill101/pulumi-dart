import 'package:pulumi/pulumi.dart' hide Config;
import 'get_lb_traffic_extension_args.dart';
import 'get_lb_traffic_extension_result.dart';

/// Gets details of the specified `LbTrafficExtension` resource.
Future<GetLbTrafficExtensionResult> getLbTrafficExtension(
  GetLbTrafficExtensionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getLbTrafficExtension',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLbTrafficExtensionResult.fromMap(result);
}
