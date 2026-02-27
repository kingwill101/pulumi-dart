import 'package:pulumi/pulumi.dart';
import 'get_service_args4.dart';
import 'get_service_result4.dart';

/// Retrieve information about a Service Quotas Service.
///
/// > **NOTE:** Global quotas apply to all AWS regions, but can only be accessed in `us-east-1` in the Commercial partition or `us-gov-west-1` in the GovCloud partition. In other regions, the AWS API will return the error `The request failed because the specified service does not exist.`
Future<GetServiceResult4> getService4(
  GetServiceArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicequotas/getService:getService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceResult4.fromMap(result);
}
