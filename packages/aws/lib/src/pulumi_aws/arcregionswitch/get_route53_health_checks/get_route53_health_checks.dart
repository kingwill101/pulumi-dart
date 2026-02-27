import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route53_health_checks_args.dart';
import 'get_route53_health_checks_result.dart';

/// Data source for managing Amazon ARC Region Switch Route53 Health Checks.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetRoute53HealthChecksResult> getRoute53HealthChecks(
  GetRoute53HealthChecksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:arcregionswitch/getRoute53HealthChecks:getRoute53HealthChecks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRoute53HealthChecksResult.fromMap(result);
}
