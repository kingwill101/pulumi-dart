import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_table_args.dart';
import 'get_table_result.dart';

/// Provides information about a DynamoDB table.
Future<GetTableResult> getTable(
  GetTableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:dynamodb/getTable:getTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTableResult.fromMap(result);
}
