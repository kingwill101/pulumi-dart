import 'package:pulumi/pulumi.dart' hide Config;
import 'get_database_args5.dart';
import 'get_database_result5.dart';

/// Retrieves a resource containing information about a database inside a Cloud SQL instance.
Future<GetDatabaseResult5> getDatabase5(
  GetDatabaseArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sqladmin/v1beta4:getDatabase',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatabaseResult5.fromMap(result);
}
