import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_servicediscovery_args.dart';
import 'get_service_servicediscovery_result.dart';

/// Retrieves information about a Service Discovery Service.
Future<GetServiceServicediscoveryResult> getServiceServicediscovery(
  GetServiceServicediscoveryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicediscovery/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceServicediscoveryResult.fromMap(result);
}
