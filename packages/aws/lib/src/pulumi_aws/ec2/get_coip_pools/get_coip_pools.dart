import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_coip_pools_args.dart';
import 'get_coip_pools_result.dart';

/// Provides information for multiple EC2 Customer-Owned IP Pools, such as their identifiers.
///
/// ## Example Usage
///
/// The following shows outputting all COIP Pool Ids.
Future<GetCoipPoolsResult> getCoipPools(
  GetCoipPoolsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getCoipPools:getCoipPools',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCoipPoolsResult.fromMap(result);
}
