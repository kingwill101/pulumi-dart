import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_invoke_args.dart';
import 'get_service_invoke_result.dart';

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
Future<GetServiceInvokeResult> lookupService(
  GetServiceInvokeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceInvokeResult.fromMap(result);
}
