import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_elasticache_args.dart';
import 'get_user_elasticache_result.dart';

/// Use this data source to get information about an ElastiCache User.
Future<GetUserElasticacheResult> getUserElasticache(
  GetUserElasticacheArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticache/getUser:getUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserElasticacheResult.fromMap(result);
}
