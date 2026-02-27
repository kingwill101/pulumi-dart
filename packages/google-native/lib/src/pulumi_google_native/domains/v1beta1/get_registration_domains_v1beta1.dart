import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_registration_domains_v1beta1_args.dart';
import 'get_registration_domains_v1beta1_result.dart';

/// Gets the details of a `Registration` resource.
Future<GetRegistrationDomainsV1beta1Result> getRegistrationDomainsV1beta1(
  GetRegistrationDomainsV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:domains/v1beta1:getRegistration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistrationDomainsV1beta1Result.fromMap(result);
}
