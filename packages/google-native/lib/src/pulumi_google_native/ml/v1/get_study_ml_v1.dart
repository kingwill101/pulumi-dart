import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_study_ml_v1_args.dart';
import 'get_study_ml_v1_result.dart';

/// Gets a study.
Future<GetStudyMlV1Result> getStudyMlV1(
  GetStudyMlV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:ml/v1:getStudy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStudyMlV1Result.fromMap(result);
}
