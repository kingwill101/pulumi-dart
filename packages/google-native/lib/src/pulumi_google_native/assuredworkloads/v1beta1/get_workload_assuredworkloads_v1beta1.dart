import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workload_assuredworkloads_v1beta1_args.dart';
import 'get_workload_assuredworkloads_v1beta1_result.dart';

/// Gets Assured Workload associated with a CRM Node
Future<GetWorkloadAssuredworkloadsV1beta1Result>
    getWorkloadAssuredworkloadsV1beta1(
  GetWorkloadAssuredworkloadsV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:assuredworkloads/v1beta1:getWorkload',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkloadAssuredworkloadsV1beta1Result.fromMap(result);
}
