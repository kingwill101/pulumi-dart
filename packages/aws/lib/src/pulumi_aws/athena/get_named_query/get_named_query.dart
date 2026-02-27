import 'package:pulumi/pulumi.dart';
import 'get_named_query_args.dart';
import 'get_named_query_result.dart';

/// Provides an Athena Named Query data source.
Future<GetNamedQueryResult> getNamedQuery(
  GetNamedQueryArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:athena/getNamedQuery:getNamedQuery',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNamedQueryResult.fromMap(result);
}
