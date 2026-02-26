import 'package:pulumi/pulumi.dart';
import 'get_run_args3.dart';
import 'get_run_result3.dart';

/// Gets the details of the specified run.
Future<GetRunResult3> getRun3(
  GetRunArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datalineage/v1:getRun',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRunResult3.fromMap(result);
}
