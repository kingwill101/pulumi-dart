import 'package:pulumi/pulumi.dart';
import 'get_access_point_args2.dart';
import 'get_access_point_result2.dart';

/// Provides details about a specific S3 access point.
Future<GetAccessPointResult2> getAccessPoint2(
  GetAccessPointArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getAccessPoint:getAccessPoint',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAccessPointResult2.fromMap(result);
}
