import 'package:pulumi/pulumi.dart';
import 'get_variable_args.dart';
import 'get_variable_result.dart';

Future<GetVariableResult> getVariable(
  GetVariableArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:runtimeconfig/getVariable:getVariable',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVariableResult.fromMap(result);
}
