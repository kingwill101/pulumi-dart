import 'package:pulumi/pulumi.dart';
import 'get_framework_args2.dart';
import 'get_framework_result2.dart';

/// Use this data source to get information on an existing backup framework.
Future<GetFrameworkResult2> getFramework2(
  GetFrameworkArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:backup/getFramework:getFramework',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFrameworkResult2.fromMap(result);
}
