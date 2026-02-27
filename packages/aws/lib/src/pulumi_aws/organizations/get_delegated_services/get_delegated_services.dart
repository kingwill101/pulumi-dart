import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_delegated_services_args.dart';
import 'get_delegated_services_result.dart';

/// Get a list the AWS services for which the specified account is a delegated administrator
Future<GetDelegatedServicesResult> getDelegatedServices(
  GetDelegatedServicesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getDelegatedServices:getDelegatedServices',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDelegatedServicesResult.fromMap(result);
}
