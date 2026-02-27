import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_objects_args.dart';
import 'get_objects_result.dart';

/// > **NOTE on `max_keys`:** Retrieving very large numbers of keys can adversely affect the provider's performance.
///
/// The objects data source returns keys (i.e., file names) and other metadata about objects in an S3 bucket.
Future<GetObjectsResult> getObjects(
  GetObjectsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getObjects:getObjects',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetObjectsResult.fromMap(result);
}
