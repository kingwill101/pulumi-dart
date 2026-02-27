import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_specialist_pool_aiplatform_v1beta1_args.dart';
import 'get_specialist_pool_aiplatform_v1beta1_result.dart';

/// Gets a SpecialistPool.
Future<GetSpecialistPoolAiplatformV1beta1Result>
    getSpecialistPoolAiplatformV1beta1(
  GetSpecialistPoolAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getSpecialistPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpecialistPoolAiplatformV1beta1Result.fromMap(result);
}
