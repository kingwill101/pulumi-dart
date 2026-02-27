import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_redis_args.dart';
import 'get_instance_redis_result.dart';

/// Get info about a Google Cloud Redis instance.
Future<GetInstanceRedisResult> getInstanceRedis(
  GetInstanceRedisArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:redis/getInstance:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceRedisResult.fromMap(result);
}
