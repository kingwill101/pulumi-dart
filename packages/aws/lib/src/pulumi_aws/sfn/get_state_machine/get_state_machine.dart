import 'package:pulumi/pulumi.dart';
import 'get_state_machine_args.dart';
import 'get_state_machine_result.dart';

/// Use this data source to get the ARN of a State Machine in AWS Step
/// Function (SFN). By using this data source, you can reference a
/// state machine without having to hard code the ARNs as input.
Future<GetStateMachineResult> getStateMachine(
  GetStateMachineArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sfn/getStateMachine:getStateMachine',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetStateMachineResult.fromMap(result);
}
