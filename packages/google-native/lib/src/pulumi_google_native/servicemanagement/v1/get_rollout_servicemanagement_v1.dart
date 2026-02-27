import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rollout_servicemanagement_v1_args.dart';
import 'get_rollout_servicemanagement_v1_result.dart';

/// Gets a service configuration rollout.
Future<GetRolloutServicemanagementV1Result> getRolloutServicemanagementV1(
  GetRolloutServicemanagementV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicemanagement/v1:getRollout',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRolloutServicemanagementV1Result.fromMap(result);
}
