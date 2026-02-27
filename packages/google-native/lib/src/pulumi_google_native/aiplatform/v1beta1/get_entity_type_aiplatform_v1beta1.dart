import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entity_type_aiplatform_v1beta1_args.dart';
import 'get_entity_type_aiplatform_v1beta1_result.dart';

/// Gets details of a single EntityType.
Future<GetEntityTypeAiplatformV1beta1Result> getEntityTypeAiplatformV1beta1(
  GetEntityTypeAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getEntityType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntityTypeAiplatformV1beta1Result.fromMap(result);
}
