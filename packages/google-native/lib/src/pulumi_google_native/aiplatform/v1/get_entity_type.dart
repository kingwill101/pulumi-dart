import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entity_type_args.dart';
import 'get_entity_type_result.dart';

/// Gets details of a single EntityType.
Future<GetEntityTypeResult> getEntityType(
  GetEntityTypeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getEntityType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntityTypeResult.fromMap(result);
}
