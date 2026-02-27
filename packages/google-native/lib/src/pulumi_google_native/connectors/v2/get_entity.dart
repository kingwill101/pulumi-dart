import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entity_args.dart';
import 'get_entity_result.dart';

/// Gets a single entity row matching the entity type and entity id specified in the request.
Future<GetEntityResult> getEntity(
  GetEntityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:connectors/v2:getEntity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntityResult.fromMap(result);
}
