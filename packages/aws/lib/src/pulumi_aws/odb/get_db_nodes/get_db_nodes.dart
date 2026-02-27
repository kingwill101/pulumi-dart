import 'package:pulumi/pulumi.dart';
import 'get_db_nodes_args.dart';
import 'get_db_nodes_result.dart';

/// Data source for manging db nodes linked to cloud vm cluster of Oracle Database@AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetDbNodesResult> getDbNodes(
  GetDbNodesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getDbNodes:getDbNodes',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDbNodesResult.fromMap(result);
}
