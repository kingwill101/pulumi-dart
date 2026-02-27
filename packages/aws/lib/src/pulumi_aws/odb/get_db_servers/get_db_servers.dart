import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_servers_args.dart';
import 'get_db_servers_result.dart';

/// Data source for manging db servers linked to exadata infrastructure of Oracle Database@AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetDbServersResult> getDbServers(
  GetDbServersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getDbServers:getDbServers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDbServersResult.fromMap(result);
}
