import 'package:pulumi/pulumi.dart';
import 'get_lbipranges_result.dart';

/// Use this data source to access IP ranges in your firewall rules.
///
/// https://cloud.google.com/compute/docs/load-balancing/health-checks#health_check_source_ips_and_firewall_rules
Future<GetLBIPRangesResult> getLBIPRanges({
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getLBIPRanges:getLBIPRanges',
    const <String, dynamic>{},
    options: toDeploymentInvokeOptions(options),
  );
  return GetLBIPRangesResult.fromMap(result);
}
