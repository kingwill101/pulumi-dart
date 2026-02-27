import 'package:pulumi/pulumi.dart';
import 'get_multi_region_access_point_args.dart';
import 'get_multi_region_access_point_result.dart';

/// Provides details on a specific S3 Multi-Region Access Point.
Future<GetMultiRegionAccessPointResult> getMultiRegionAccessPoint(
  GetMultiRegionAccessPointArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3control/getMultiRegionAccessPoint:getMultiRegionAccessPoint',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMultiRegionAccessPointResult.fromMap(result);
}
