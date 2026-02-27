import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_study_aiplatform_v1beta1_args.dart';
import 'get_study_aiplatform_v1beta1_result.dart';

/// Gets a Study by name.
Future<GetStudyAiplatformV1beta1Result> getStudyAiplatformV1beta1(
  GetStudyAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getStudy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStudyAiplatformV1beta1Result.fromMap(result);
}
