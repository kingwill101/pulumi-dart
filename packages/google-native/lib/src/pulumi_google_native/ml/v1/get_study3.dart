import 'package:pulumi/pulumi.dart';
import 'get_study_args3.dart';
import 'get_study_result3.dart';

/// Gets a study.
Future<GetStudyResult3> getStudy3(
  GetStudyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:ml/v1:getStudy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetStudyResult3.fromMap(result);
}
