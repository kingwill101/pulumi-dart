import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_study_args.dart';
import 'get_study_result.dart';

/// Gets a Study by name.
Future<GetStudyResult> getStudy(
  GetStudyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getStudy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStudyResult.fromMap(result);
}
