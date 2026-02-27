import 'package:pulumi/pulumi.dart';
import 'get_access_points_args.dart';
import 'get_access_points_result.dart';

/// Provides information about multiple Elastic File System (EFS) Access Points.
Future<GetAccessPointsResult> getAccessPoints(
  GetAccessPointsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:efs/getAccessPoints:getAccessPoints',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAccessPointsResult.fromMap(result);
}
