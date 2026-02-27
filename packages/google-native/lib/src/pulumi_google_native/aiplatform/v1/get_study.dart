import 'package:pulumi/pulumi.dart' hide Config;
import 'get_study_args.dart';
import 'get_study_result.dart';

/// Gets a Study by name.
Future<GetStudyResult> getStudy(
  GetStudyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getStudy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetStudyResult.fromMap(result);
}
