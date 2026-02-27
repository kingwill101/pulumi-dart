import 'package:pulumi/pulumi.dart';
import 'get_serverless_cache_args.dart';
import 'get_serverless_cache_result.dart';

/// Use this data source to get information about an ElastiCache Serverless Cache.
Future<GetServerlessCacheResult> getServerlessCache(
  GetServerlessCacheArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticache/getServerlessCache:getServerlessCache',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServerlessCacheResult.fromMap(result);
}
