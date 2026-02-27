import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_server_args.dart';
import 'get_db_server_result.dart';

/// Data source for manging db server linked to exadata infrastructure of Oracle Database@AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetDbServerResult> getDbServer(
  GetDbServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getDbServer:getDbServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDbServerResult.fromMap(result);
}
