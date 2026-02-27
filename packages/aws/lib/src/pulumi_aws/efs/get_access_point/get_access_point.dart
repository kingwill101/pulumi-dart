import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_point_args.dart';
import 'get_access_point_result.dart';

/// Provides information about an Elastic File System (EFS) Access Point.
Future<GetAccessPointResult> getAccessPoint(
  GetAccessPointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:efs/getAccessPoint:getAccessPoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessPointResult.fromMap(result);
}
