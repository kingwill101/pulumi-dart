import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feed_args.dart';
import 'get_feed_result.dart';
import 'get_saved_query_args.dart';
import 'get_saved_query_result.dart';

/// Gets details about an asset feed.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudasset_v1_get_feed_args_doc}
/// [options] Invoke options controlling this call.
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

/// Gets details about a saved query.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudasset_v1_get_saved_query_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSavedQueryResult> getSavedQuery(
  GetSavedQueryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudasset/v1:getSavedQuery',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSavedQueryResult.fromMap(result);
}
