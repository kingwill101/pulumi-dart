import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autonomous_database_args.dart';
import 'get_autonomous_database_result.dart';

/// Get information about an AutonomousDatabase.
///
/// For more information see the
/// [API](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.autonomousDatabases).
Future<GetAutonomousDatabaseResult> getAutonomousDatabase(
  GetAutonomousDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:oracledatabase/getAutonomousDatabase:getAutonomousDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutonomousDatabaseResult.fromMap(result);
}
