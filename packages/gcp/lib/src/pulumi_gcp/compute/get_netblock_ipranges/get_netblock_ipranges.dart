import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_netblock_ipranges_args.dart';
import 'get_netblock_ipranges_result.dart';

/// Use this data source to get the IP addresses from different special IP ranges on Google Cloud Platform.
///
/// ## Example Usage
///
/// ### Cloud Ranges
///
///
///
/// ### Allow Health Checks
Future<GetNetblockIPRangesResult> getNetblockIPRanges(
  GetNetblockIPRangesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getNetblockIPRanges:getNetblockIPRanges',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetblockIPRangesResult.fromMap(result);
}
