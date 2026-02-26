import 'package:pulumi/pulumi.dart';
import 'get_control_args3.dart';
import 'get_control_result3.dart';

/// Gets a Control.
Future<GetControlResult3> getControl3(
  GetControlArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2beta:getControl',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetControlResult3.fromMap(result);
}
