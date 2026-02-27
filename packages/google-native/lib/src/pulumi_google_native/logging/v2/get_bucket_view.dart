import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_view_args.dart';
import 'get_bucket_view_result.dart';

/// Gets a view on a log bucket.
Future<GetBucketViewResult> getBucketView(
  GetBucketViewArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getBucketView',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBucketViewResult.fromMap(result);
}
