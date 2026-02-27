import 'package:pulumi/pulumi.dart';
import 'get_service_args3.dart';
import 'get_service_result3.dart';

/// Retrieves information about a Service Discovery Service.
Future<GetServiceResult3> getService3(
  GetServiceArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicediscovery/getService:getService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceResult3.fromMap(result);
}
