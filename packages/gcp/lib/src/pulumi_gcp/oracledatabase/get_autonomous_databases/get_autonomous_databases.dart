import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autonomous_databases_args.dart';
import 'get_autonomous_databases_result.dart';

/// List all AutonomousDatabases.
///
/// For more information see the
/// [API](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.autonomousDatabases).
Future<GetAutonomousDatabasesResult> getAutonomousDatabases(
  GetAutonomousDatabasesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:oracledatabase/getAutonomousDatabases:getAutonomousDatabases',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutonomousDatabasesResult.fromMap(result);
}
