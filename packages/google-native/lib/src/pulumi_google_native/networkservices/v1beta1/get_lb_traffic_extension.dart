import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lb_traffic_extension_args.dart';
import 'get_lb_traffic_extension_result.dart';

/// Gets details of the specified `LbTrafficExtension` resource.
Future<GetLbTrafficExtensionResult> getLbTrafficExtension(
  GetLbTrafficExtensionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getLbTrafficExtension',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLbTrafficExtensionResult.fromMap(result);
}
