import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_routing_accelerator_args.dart';
import 'get_custom_routing_accelerator_result.dart';

/// Provides information about a Global Accelerator custom routing accelerator.
Future<GetCustomRoutingAcceleratorResult> getCustomRoutingAccelerator(
  GetCustomRoutingAcceleratorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:globalaccelerator/getCustomRoutingAccelerator:getCustomRoutingAccelerator',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomRoutingAcceleratorResult.fromMap(result);
}
