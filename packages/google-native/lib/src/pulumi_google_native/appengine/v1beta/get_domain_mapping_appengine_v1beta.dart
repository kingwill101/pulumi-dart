import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_mapping_appengine_v1beta_args.dart';
import 'get_domain_mapping_appengine_v1beta_result.dart';

/// Gets the specified domain mapping.
Future<GetDomainMappingAppengineV1betaResult> getDomainMappingAppengineV1beta(
  GetDomainMappingAppengineV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1beta:getDomainMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainMappingAppengineV1betaResult.fromMap(result);
}
