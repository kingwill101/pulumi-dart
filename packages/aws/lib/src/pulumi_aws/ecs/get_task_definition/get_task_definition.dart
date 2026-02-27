import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_task_definition_args.dart';
import 'get_task_definition_result.dart';

/// The ECS task definition data source allows access to details of
/// a specific AWS ECS task definition.
Future<GetTaskDefinitionResult> getTaskDefinition(
  GetTaskDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecs/getTaskDefinition:getTaskDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaskDefinitionResult.fromMap(result);
}
