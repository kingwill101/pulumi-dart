import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_rds_args.dart';
import 'get_instance_rds_result.dart';

/// Use this data source to get information about an RDS instance
Future<GetInstanceRdsResult> getInstanceRds(
  GetInstanceRdsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getInstance:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceRdsResult.fromMap(result);
}
