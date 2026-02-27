import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_point_s3_args.dart';
import 'get_access_point_s3_result.dart';

/// Provides details about a specific S3 access point.
Future<GetAccessPointS3Result> getAccessPointS3(
  GetAccessPointS3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getAccessPoint:getAccessPoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessPointS3Result.fromMap(result);
}
