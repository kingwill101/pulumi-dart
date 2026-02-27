import 'package:pulumi/pulumi.dart';
import 'get_regions_args2.dart';
import 'get_regions_result2.dart';

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
Future<GetRegionsResult2> getRegions2(
  GetRegionsArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getRegions:getRegions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionsResult2.fromMap(result);
}
