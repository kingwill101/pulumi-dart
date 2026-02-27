import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_serverless_cache_args.dart';
import 'get_serverless_cache_result.dart';

/// Use this data source to get information about an ElastiCache Serverless Cache.
Future<GetServerlessCacheResult> getServerlessCache(
  GetServerlessCacheArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticache/getServerlessCache:getServerlessCache',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerlessCacheResult.fromMap(result);
}
