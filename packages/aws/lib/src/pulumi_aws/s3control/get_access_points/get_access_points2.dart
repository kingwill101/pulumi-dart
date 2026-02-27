import 'package:pulumi/pulumi.dart';
import 'get_access_points_args2.dart';
import 'get_access_points_result2.dart';

/// Provides details about an AWS S3 Control Access Points.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Filter by Bucket Name
Future<GetAccessPointsResult2> getAccessPoints2(
  GetAccessPointsArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3control/getAccessPoints:getAccessPoints',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAccessPointsResult2.fromMap(result);
}
