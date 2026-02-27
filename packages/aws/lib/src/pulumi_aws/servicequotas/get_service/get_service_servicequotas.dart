import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_servicequotas_args.dart';
import 'get_service_servicequotas_result.dart';

/// Retrieve information about a Service Quotas Service.
///
/// > **NOTE:** Global quotas apply to all AWS regions, but can only be accessed in `us-east-1` in the Commercial partition or `us-gov-west-1` in the GovCloud partition. In other regions, the AWS API will return the error `The request failed because the specified service does not exist.`
Future<GetServiceServicequotasResult> getServiceServicequotas(
  GetServiceServicequotasArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicequotas/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceServicequotasResult.fromMap(result);
}
