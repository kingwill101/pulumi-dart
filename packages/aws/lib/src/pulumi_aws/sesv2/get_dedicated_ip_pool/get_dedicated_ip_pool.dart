import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_ip_pool_args.dart';
import 'get_dedicated_ip_pool_result.dart';

/// Data source for managing an AWS SESv2 (Simple Email V2) Dedicated IP Pool.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetDedicatedIpPoolResult> getDedicatedIpPool(
  GetDedicatedIpPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sesv2/getDedicatedIpPool:getDedicatedIpPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDedicatedIpPoolResult.fromMap(result);
}
