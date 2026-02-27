import 'package:pulumi/pulumi.dart';
import 'get_regions_args.dart';
import 'get_regions_result.dart';

/// The `aws.account.getRegions` data source lets you query AWS region information for any account in your AWS Organization. It uses the AWS Account REST Service to show all regions, including those that are enabled, disabled, or in the process of being enabled or disabled. You can list regions for any organization account, see all possible region opt-in statuses (`ENABLED`, `ENABLING`, `DISABLING`, `DISABLED`, `ENABLED_BY_DEFAULT`), and check which regions are being enabled or disabled.
///
/// This is more comprehensive than the aws.getRegions data source, which only uses the EC2 REST service and is limited to the current account and a subset of region statuses.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetRegionsResult> getRegions(
  GetRegionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:account/getRegions:getRegions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionsResult.fromMap(result);
}
