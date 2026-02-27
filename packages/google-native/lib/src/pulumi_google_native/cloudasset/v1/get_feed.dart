import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feed_args.dart';
import 'get_feed_result.dart';

/// Gets details about an asset feed.
Future<GetFeedResult> getFeed(
  GetFeedArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudasset/v1:getFeed',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeedResult.fromMap(result);
}
