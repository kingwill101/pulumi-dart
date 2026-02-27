import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_firestore_v1_args.dart';
import 'get_database_firestore_v1_result.dart';

/// Gets information about a database.
Future<GetDatabaseFirestoreV1Result> getDatabaseFirestoreV1(
  GetDatabaseFirestoreV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firestore/v1:getDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseFirestoreV1Result.fromMap(result);
}
