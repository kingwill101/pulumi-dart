import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_variable_args.dart';
import 'get_variable_result.dart';

Future<GetVariableResult> getVariable(
  GetVariableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:runtimeconfig/getVariable:getVariable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVariableResult.fromMap(result);
}
