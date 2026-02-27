import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_args.dart';
import 'get_service_result.dart';

/// The ECS Service data source allows access to details of a specific
/// Service within a AWS ECS Cluster.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecs/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}
