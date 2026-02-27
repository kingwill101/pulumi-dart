import 'package:pulumi/pulumi.dart' hide Config;
import 'get_bucket_view_args.dart';
import 'get_bucket_view_result.dart';

/// Gets a view on a log bucket.
Future<GetBucketViewResult> getBucketView(
  GetBucketViewArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getBucketView',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBucketViewResult.fromMap(result);
}
