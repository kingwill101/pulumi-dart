import 'package:pulumi/pulumi.dart';
import 'get_domain_mapping_args2.dart';
import 'get_domain_mapping_result2.dart';

/// Gets the specified domain mapping.
Future<GetDomainMappingResult2> getDomainMapping2(
  GetDomainMappingArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1alpha:getDomainMapping',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDomainMappingResult2.fromMap(result);
}
