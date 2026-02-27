import 'package:pulumi/pulumi.dart';
import 'get_db_node_args.dart';
import 'get_db_node_result.dart';

/// Data source for manging db nodes linked to cloud vm cluster of Oracle Database@AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetDbNodeResult> getDbNode(
  GetDbNodeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getDbNode:getDbNode',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDbNodeResult.fromMap(result);
}
