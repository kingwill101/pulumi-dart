import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_redis_v1_args.dart';
import 'get_instance_redis_v1_result.dart';

/// Gets the details of a specific Redis instance.
Future<GetInstanceRedisV1Result> getInstanceRedisV1(
  GetInstanceRedisV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:redis/v1:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceRedisV1Result.fromMap(result);
}
