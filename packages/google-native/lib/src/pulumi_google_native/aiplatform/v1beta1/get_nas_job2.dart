import 'package:pulumi/pulumi.dart' hide Config;
import 'get_nas_job_args2.dart';
import 'get_nas_job_result2.dart';

/// Gets a NasJob
Future<GetNasJobResult2> getNasJob2(
  GetNasJobArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getNasJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNasJobResult2.fromMap(result);
}
