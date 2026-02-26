import 'package:pulumi/pulumi.dart';
import 'get_database_args.dart';
import 'get_database_result.dart';

/// Gets the database specified by the resource name.
Future<GetDatabaseResult> getDatabase(
  GetDatabaseArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:biglake/v1:getDatabase',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatabaseResult.fromMap(result);
}
