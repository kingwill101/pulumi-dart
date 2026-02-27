import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_managedidentities_v1alpha1_args.dart';
import 'get_domain_managedidentities_v1alpha1_result.dart';

/// Gets details of a single Domain.
Future<GetDomainManagedidentitiesV1alpha1Result>
    getDomainManagedidentitiesV1alpha1(
  GetDomainManagedidentitiesV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1alpha1:getDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainManagedidentitiesV1alpha1Result.fromMap(result);
}
