import 'package:pulumi/pulumi.dart';
import 'get_resource_args3.dart';
import 'get_resource_result3.dart';

/// Provides details about a Lake Formation resource.
Future<GetResourceResult3> getResource3(
  GetResourceArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lakeformation/getResource:getResource',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResourceResult3.fromMap(result);
}
