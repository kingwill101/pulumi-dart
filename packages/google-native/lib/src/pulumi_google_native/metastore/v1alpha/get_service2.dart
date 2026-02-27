import 'package:pulumi/pulumi.dart' hide Config;
import 'get_service_args2.dart';
import 'get_service_result2.dart';

/// Gets the details of a single service.
Future<GetServiceResult2> getService2(
  GetServiceArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceResult2.fromMap(result);
}
