import 'package:pulumi/pulumi.dart';
import 'get_lb_route_extension_args.dart';
import 'get_lb_route_extension_result.dart';

/// Gets details of the specified `LbRouteExtension` resource.
Future<GetLbRouteExtensionResult> getLbRouteExtension(
  GetLbRouteExtensionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getLbRouteExtension',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLbRouteExtensionResult.fromMap(result);
}
