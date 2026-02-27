import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tables_args.dart';
import 'get_tables_result.dart';

/// Returns a list of all AWS DynamoDB table names in a region.
///
/// ## Example Usage
///
/// The following example retrieves a list of all DynamoDB table names in a region.
Future<GetTablesResult> getTables(
  GetTablesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:dynamodb/getTables:getTables',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTablesResult.fromMap(result);
}
