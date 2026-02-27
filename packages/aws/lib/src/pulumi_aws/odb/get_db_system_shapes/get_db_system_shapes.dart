import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_system_shapes_args.dart';
import 'get_db_system_shapes_result.dart';

/// Data source to retrieve available system shapes Oracle Database@AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetDbSystemShapesResult> getDbSystemShapes(
  GetDbSystemShapesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getDbSystemShapes:getDbSystemShapes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDbSystemShapesResult.fromMap(result);
}
