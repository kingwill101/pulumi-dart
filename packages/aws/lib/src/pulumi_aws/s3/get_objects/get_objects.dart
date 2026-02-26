import 'package:pulumi/pulumi.dart';
import 'get_objects_args.dart';
import 'get_objects_result.dart';

/// > **NOTE on <span pulumi-lang-nodejs="`maxKeys`" pulumi-lang-dotnet="`MaxKeys`" pulumi-lang-go="`maxKeys`" pulumi-lang-python="`max_keys`" pulumi-lang-yaml="`maxKeys`" pulumi-lang-java="`maxKeys`">`max_keys`</span>:** Retrieving very large numbers of keys can adversely affect the provider's performance.
///
/// The objects data source returns keys (i.e., file names) and other metadata about objects in an S3 bucket.
Future<GetObjectsResult> getObjects(
  GetObjectsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getObjects:getObjects',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetObjectsResult.fromMap(result);
}
