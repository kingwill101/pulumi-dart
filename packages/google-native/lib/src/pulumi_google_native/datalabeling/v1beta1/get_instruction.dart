import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instruction_args.dart';
import 'get_instruction_result.dart';

/// Gets an instruction by resource name.
Future<GetInstructionResult> getInstruction(
  GetInstructionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datalabeling/v1beta1:getInstruction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstructionResult.fromMap(result);
}
