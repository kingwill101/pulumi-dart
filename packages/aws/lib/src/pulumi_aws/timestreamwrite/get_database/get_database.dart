import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_args.dart';
import 'get_database_result.dart';

/// Data source for managing an AWS Timestream Write Database.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetDatabaseResult> getDatabase(
  GetDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:timestreamwrite/getDatabase:getDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseResult.fromMap(result);
}
