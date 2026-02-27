import 'package:pulumi/pulumi.dart';
import 'get_accelerator_args.dart';
import 'get_accelerator_result.dart';

/// Provides information about a Global Accelerator accelerator.
Future<GetAcceleratorResult> getAccelerator(
  GetAcceleratorArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:globalaccelerator/getAccelerator:getAccelerator',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAcceleratorResult.fromMap(result);
}
