import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_points_s3control_args.dart';
import 'get_access_points_s3control_result.dart';

/// Provides details about an AWS S3 Control Access Points.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Filter by Bucket Name
Future<GetAccessPointsS3controlResult> getAccessPointsS3control(
  GetAccessPointsS3controlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3control/getAccessPoints:getAccessPoints',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessPointsS3controlResult.fromMap(result);
}
