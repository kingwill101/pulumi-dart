import 'package:pulumi/pulumi.dart';
import 'get_custom_routing_accelerator_args.dart';
import 'get_custom_routing_accelerator_result.dart';

/// Provides information about a Global Accelerator custom routing accelerator.
Future<GetCustomRoutingAcceleratorResult> getCustomRoutingAccelerator(
  GetCustomRoutingAcceleratorArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:globalaccelerator/getCustomRoutingAccelerator:getCustomRoutingAccelerator',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCustomRoutingAcceleratorResult.fromMap(result);
}
