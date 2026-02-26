import 'package:pulumi/pulumi.dart';
import 'get_machine_image_args2.dart';
import 'get_machine_image_result2.dart';

/// Returns the specified machine image.
Future<GetMachineImageResult2> getMachineImage2(
  GetMachineImageArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getMachineImage',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMachineImageResult2.fromMap(result);
}
