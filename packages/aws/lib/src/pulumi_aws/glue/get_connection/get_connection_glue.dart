import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_glue_args.dart';
import 'get_connection_glue_result.dart';

/// This data source can be used to fetch information about a specific Glue Connection.
Future<GetConnectionGlueResult> getConnectionGlue(
  GetConnectionGlueArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:glue/getConnection:getConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionGlueResult.fromMap(result);
}
