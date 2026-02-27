import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entity_dataplex_v1_args.dart';
import 'get_entity_dataplex_v1_result.dart';

/// Get a metadata entity.
Future<GetEntityDataplexV1Result> getEntityDataplexV1(
  GetEntityDataplexV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getEntity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntityDataplexV1Result.fromMap(result);
}
