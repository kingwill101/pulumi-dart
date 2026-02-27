import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_named_query_args.dart';
import 'get_named_query_result.dart';

/// Provides an Athena Named Query data source.
Future<GetNamedQueryResult> getNamedQuery(
  GetNamedQueryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:athena/getNamedQuery:getNamedQuery',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamedQueryResult.fromMap(result);
}
