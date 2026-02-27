import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_variable_args.dart';
import 'get_variable_result.dart';

/// Gets information about a single variable.
Future<GetVariableResult> getVariable(
  GetVariableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:runtimeconfig/v1beta1:getVariable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVariableResult.fromMap(result);
}
