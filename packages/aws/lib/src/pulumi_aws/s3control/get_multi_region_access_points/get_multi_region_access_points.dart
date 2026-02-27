import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_multi_region_access_points_args.dart';
import 'get_multi_region_access_points_result.dart';

/// Provides details about AWS S3 Control Multi-Region Access Points.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetMultiRegionAccessPointsResult> getMultiRegionAccessPoints(
  GetMultiRegionAccessPointsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3control/getMultiRegionAccessPoints:getMultiRegionAccessPoints',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMultiRegionAccessPointsResult.fromMap(result);
}
