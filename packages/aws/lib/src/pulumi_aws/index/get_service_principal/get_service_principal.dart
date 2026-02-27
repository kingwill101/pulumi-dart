import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_principal_args.dart';
import 'get_service_principal_result.dart';

/// Use this data source to create a Service Principal Name for a service in a given region. Service Principal Names should always end in the standard global format: `{servicename}.amazonaws.com`. However, in some AWS partitions, AWS may expect a different format.
Future<GetServicePrincipalResult> getServicePrincipal(
  GetServicePrincipalArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getServicePrincipal:getServicePrincipal',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServicePrincipalResult.fromMap(result);
}
