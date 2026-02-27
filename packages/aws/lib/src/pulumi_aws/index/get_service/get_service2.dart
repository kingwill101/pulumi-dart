import 'package:pulumi/pulumi.dart';
import 'get_service_args2.dart';
import 'get_service_result2.dart';

/// Use this data source to compose and decompose AWS service DNS names.
///
/// ## Example Usage
///
/// ### Get Service DNS Name
///
///
///
/// ### Use Service Reverse DNS Name to Get Components
///
///
///
/// ### Determine Regional Support for a Service
Future<GetServiceResult2> getService2(
  GetServiceArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getService:getService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceResult2.fromMap(result);
}
