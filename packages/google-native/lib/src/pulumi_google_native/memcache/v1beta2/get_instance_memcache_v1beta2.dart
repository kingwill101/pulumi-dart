import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_memcache_v1beta2_args.dart';
import 'get_instance_memcache_v1beta2_result.dart';

/// Gets details of a single Instance.
Future<GetInstanceMemcacheV1beta2Result> getInstanceMemcacheV1beta2(
  GetInstanceMemcacheV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:memcache/v1beta2:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceMemcacheV1beta2Result.fromMap(result);
}
