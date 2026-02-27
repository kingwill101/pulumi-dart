import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_mapping_appengine_v1alpha_args.dart';
import 'get_domain_mapping_appengine_v1alpha_result.dart';

/// Gets the specified domain mapping.
Future<GetDomainMappingAppengineV1alphaResult> getDomainMappingAppengineV1alpha(
  GetDomainMappingAppengineV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1alpha:getDomainMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainMappingAppengineV1alphaResult.fromMap(result);
}
