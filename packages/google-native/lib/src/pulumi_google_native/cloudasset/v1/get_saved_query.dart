import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_saved_query_args.dart';
import 'get_saved_query_result.dart';

/// Gets details about a saved query.
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
