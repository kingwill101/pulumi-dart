import 'package:pulumi/pulumi.dart' hide Config;
import 'get_query_args.dart';
import 'get_query_result.dart';

/// Get query status If the query is still in progress, the `state` is set to "running" After the query has completed successfully, `state` is set to "completed"
Future<GetQueryResult> getQuery(
  GetQueryArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getQuery',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetQueryResult.fromMap(result);
}
