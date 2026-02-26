import 'package:pulumi/pulumi.dart';
import 'get_study_args2.dart';
import 'get_study_result2.dart';

/// Gets a Study by name.
Future<GetStudyResult2> getStudy2(
  GetStudyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getStudy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetStudyResult2.fromMap(result);
}
