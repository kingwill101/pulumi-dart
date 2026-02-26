import 'package:pulumi/pulumi.dart';
import 'get_database_args2.dart';
import 'get_database_result2.dart';

/// Gets information about a database.
Future<GetDatabaseResult2> getDatabase2(
  GetDatabaseArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firestore/v1:getDatabase',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatabaseResult2.fromMap(result);
}
