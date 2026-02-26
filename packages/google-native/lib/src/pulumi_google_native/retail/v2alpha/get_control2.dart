import 'package:pulumi/pulumi.dart';
import 'get_control_args2.dart';
import 'get_control_result2.dart';

/// Gets a Control.
Future<GetControlResult2> getControl2(
  GetControlArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2alpha:getControl',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetControlResult2.fromMap(result);
}
