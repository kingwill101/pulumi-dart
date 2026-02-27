import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lb_route_extension_args.dart';
import 'get_lb_route_extension_result.dart';

/// Gets details of the specified `LbRouteExtension` resource.
Future<GetLbRouteExtensionResult> getLbRouteExtension(
  GetLbRouteExtensionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getLbRouteExtension',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLbRouteExtensionResult.fromMap(result);
}
