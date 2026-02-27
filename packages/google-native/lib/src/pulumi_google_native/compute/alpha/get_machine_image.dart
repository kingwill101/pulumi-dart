import 'package:pulumi/pulumi.dart' hide Config;
import 'get_machine_image_args.dart';
import 'get_machine_image_result.dart';

/// Returns the specified machine image.
Future<GetMachineImageResult> getMachineImage(
  GetMachineImageArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getMachineImage',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMachineImageResult.fromMap(result);
}
