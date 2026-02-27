import 'package:pulumi/pulumi.dart' hide Config;
import 'get_machine_image_args3.dart';
import 'get_machine_image_result3.dart';

/// Returns the specified machine image.
Future<GetMachineImageResult3> getMachineImage3(
  GetMachineImageArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getMachineImage',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMachineImageResult3.fromMap(result);
}
