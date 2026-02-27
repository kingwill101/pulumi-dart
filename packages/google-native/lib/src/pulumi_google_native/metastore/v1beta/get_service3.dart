import 'package:pulumi/pulumi.dart' hide Config;
import 'get_service_args3.dart';
import 'get_service_result3.dart';

/// Gets the details of a single service.
Future<GetServiceResult3> getService3(
  GetServiceArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceResult3.fromMap(result);
}
