import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_reserved_cache_node_offering_args.dart';
import 'get_reserved_cache_node_offering_result.dart';

/// Information about a single ElastiCache Reserved Cache Node Offering.
Future<GetReservedCacheNodeOfferingResult> getReservedCacheNodeOffering(
  GetReservedCacheNodeOfferingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticache/getReservedCacheNodeOffering:getReservedCacheNodeOffering',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReservedCacheNodeOfferingResult.fromMap(result);
}
