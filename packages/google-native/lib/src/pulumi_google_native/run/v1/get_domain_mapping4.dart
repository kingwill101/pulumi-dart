import 'package:pulumi/pulumi.dart' hide Config;
import 'get_domain_mapping_args4.dart';
import 'get_domain_mapping_result4.dart';

/// Get information about a domain mapping.
Future<GetDomainMappingResult4> getDomainMapping4(
  GetDomainMappingArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v1:getDomainMapping',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDomainMappingResult4.fromMap(result);
}
