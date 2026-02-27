import 'package:pulumi/pulumi.dart';
import 'get_instance_args3.dart';
import 'get_instance_result3.dart';

/// Use this data source to get information about an RDS instance
Future<GetInstanceResult3> getInstance3(
  GetInstanceArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getInstance:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult3.fromMap(result);
}
