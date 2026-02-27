import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_table_item_args.dart';
import 'get_table_item_result.dart';

/// Data source for retrieving a value from an AWS DynamoDB table.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetTableItemResult> getTableItem(
  GetTableItemArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:dynamodb/getTableItem:getTableItem',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTableItemResult.fromMap(result);
}
