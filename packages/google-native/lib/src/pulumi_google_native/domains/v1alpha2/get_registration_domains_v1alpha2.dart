import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_registration_domains_v1alpha2_args.dart';
import 'get_registration_domains_v1alpha2_result.dart';

/// Gets the details of a `Registration` resource.
Future<GetRegistrationDomainsV1alpha2Result> getRegistrationDomainsV1alpha2(
  GetRegistrationDomainsV1alpha2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:domains/v1alpha2:getRegistration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistrationDomainsV1alpha2Result.fromMap(result);
}
