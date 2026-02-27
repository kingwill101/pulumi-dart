import 'package:pulumi/pulumi.dart' hide Config;
import 'get_database_args3.dart';
import 'get_database_result3.dart';

/// Gets the state of a Cloud Spanner database.
Future<GetDatabaseResult3> getDatabase3(
  GetDatabaseArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:spanner/v1:getDatabase',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatabaseResult3.fromMap(result);
}
