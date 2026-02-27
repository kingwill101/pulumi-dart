import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_stack_args.dart';
import 'get_stack_result.dart';

/// The CloudFormation Stack data source allows access to stack
/// outputs and other useful data including the template body.
Future<GetStackResult> getStack(
  GetStackArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudformation/getStack:getStack',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStackResult.fromMap(result);
}
