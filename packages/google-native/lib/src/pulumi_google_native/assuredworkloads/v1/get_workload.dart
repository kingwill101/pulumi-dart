import 'package:pulumi/pulumi.dart' hide Config;
import 'get_workload_args.dart';
import 'get_workload_result.dart';

/// Gets Assured Workload associated with a CRM Node
Future<GetWorkloadResult> getWorkload(
  GetWorkloadArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:assuredworkloads/v1:getWorkload',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkloadResult.fromMap(result);
}
