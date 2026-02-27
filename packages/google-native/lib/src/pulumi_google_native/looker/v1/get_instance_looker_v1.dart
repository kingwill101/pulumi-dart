import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_looker_v1_args.dart';
import 'get_instance_looker_v1_result.dart';

/// Gets details of a single Instance.
Future<GetInstanceLookerV1Result> getInstanceLookerV1(
  GetInstanceLookerV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:looker/v1:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceLookerV1Result.fromMap(result);
}
