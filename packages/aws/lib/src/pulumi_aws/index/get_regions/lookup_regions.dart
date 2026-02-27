import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regions_invoke_args.dart';
import 'get_regions_invoke_result.dart';

/// Provides information about AWS Regions. Can be used to filter regions i.e., by Opt-In status or only regions enabled for current account. To get details like endpoint and description of each region the data source can be combined with the `aws.getRegion` data source.
///
/// ## Example Usage
///
/// Enabled AWS Regions:
///
///
///
/// All the regions regardless of the availability
///
///
///
/// To see regions that are filtered by `"not-opted-in"`, the `all_regions` argument needs to be set to `true` or no results will be returned.
Future<GetRegionsInvokeResult> lookupRegions(
  GetRegionsInvokeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getRegions:getRegions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionsInvokeResult.fromMap(result);
}
