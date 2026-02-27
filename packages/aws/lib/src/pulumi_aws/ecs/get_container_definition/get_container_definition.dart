import 'package:pulumi/pulumi.dart';
import 'get_container_definition_args.dart';
import 'get_container_definition_result.dart';

/// The ECS container definition data source allows access to details of
/// a specific container within an AWS ECS service.
Future<GetContainerDefinitionResult> getContainerDefinition(
  GetContainerDefinitionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecs/getContainerDefinition:getContainerDefinition',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetContainerDefinitionResult.fromMap(result);
}
