import 'package:pulumi/pulumi.dart';
import 'get_workload_args2.dart';
import 'get_workload_result2.dart';

/// Gets Assured Workload associated with a CRM Node
Future<GetWorkloadResult2> getWorkload2(
  GetWorkloadArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:assuredworkloads/v1beta1:getWorkload',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkloadResult2.fromMap(result);
}
