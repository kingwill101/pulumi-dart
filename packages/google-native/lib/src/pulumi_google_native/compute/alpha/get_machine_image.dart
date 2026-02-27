import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_machine_image_args.dart';
import 'get_machine_image_result.dart';

/// Returns the specified machine image.
Future<GetMachineImageResult> getMachineImage(
  GetMachineImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getMachineImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMachineImageResult.fromMap(result);
}
