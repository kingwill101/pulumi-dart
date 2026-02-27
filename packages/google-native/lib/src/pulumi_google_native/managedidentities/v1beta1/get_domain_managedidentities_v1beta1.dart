import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_managedidentities_v1beta1_args.dart';
import 'get_domain_managedidentities_v1beta1_result.dart';

/// Gets information about a domain.
Future<GetDomainManagedidentitiesV1beta1Result>
    getDomainManagedidentitiesV1beta1(
  GetDomainManagedidentitiesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1beta1:getDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainManagedidentitiesV1beta1Result.fromMap(result);
}
