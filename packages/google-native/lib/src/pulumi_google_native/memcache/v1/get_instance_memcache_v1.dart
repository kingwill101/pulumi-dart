import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_memcache_v1_args.dart';
import 'get_instance_memcache_v1_result.dart';

/// Gets details of a single Instance.
Future<GetInstanceMemcacheV1Result> getInstanceMemcacheV1(
  GetInstanceMemcacheV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:memcache/v1:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceMemcacheV1Result.fromMap(result);
}
