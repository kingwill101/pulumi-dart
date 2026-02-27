import 'package:pulumi/pulumi.dart' hide Config;
import 'get_database_args4.dart';
import 'get_database_result4.dart';

/// Retrieves a resource containing information about a database inside a Cloud SQL instance.
Future<GetDatabaseResult4> getDatabase4(
  GetDatabaseArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sqladmin/v1:getDatabase',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatabaseResult4.fromMap(result);
}
