import 'package:pulumi/pulumi.dart' hide Config;
import 'get_domain_mapping_args.dart';
import 'get_domain_mapping_result.dart';

/// Gets the specified domain mapping.
Future<GetDomainMappingResult> getDomainMapping(
  GetDomainMappingArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1:getDomainMapping',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDomainMappingResult.fromMap(result);
}
