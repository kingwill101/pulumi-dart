import 'package:pulumi/pulumi.dart';
import 'get_service_quota_args.dart';
import 'get_service_quota_result.dart';

/// Retrieve information about a Service Quota.
///
/// > **NOTE:** Global quotas apply to all AWS regions, but can only be accessed in `us-east-1` in the Commercial partition or `us-gov-west-1` in the GovCloud partition. In other regions, the AWS API will return the error `The request failed because the specified service does not exist.`
Future<GetServiceQuotaResult> getServiceQuota(
  GetServiceQuotaArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicequotas/getServiceQuota:getServiceQuota',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceQuotaResult.fromMap(result);
}
