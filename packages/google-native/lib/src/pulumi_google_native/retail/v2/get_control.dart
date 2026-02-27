import 'package:pulumi/pulumi.dart' hide Config;
import 'get_control_args.dart';
import 'get_control_result.dart';

/// Gets a Control.
Future<GetControlResult> getControl(
  GetControlArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2:getControl',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetControlResult.fromMap(result);
}
