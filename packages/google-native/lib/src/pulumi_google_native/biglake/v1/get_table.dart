import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_table_args.dart';
import 'get_table_result.dart';

/// Gets the table specified by the resource name.
Future<GetTableResult> getTable(
  GetTableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:biglake/v1:getTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTableResult.fromMap(result);
}
