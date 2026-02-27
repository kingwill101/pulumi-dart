import 'package:pulumi/pulumi.dart' hide Config;
import 'get_instruction_args.dart';
import 'get_instruction_result.dart';

/// Gets an instruction by resource name.
Future<GetInstructionResult> getInstruction(
  GetInstructionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datalabeling/v1beta1:getInstruction',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstructionResult.fromMap(result);
}
