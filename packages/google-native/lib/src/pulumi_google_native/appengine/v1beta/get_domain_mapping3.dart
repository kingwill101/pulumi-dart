import 'package:pulumi/pulumi.dart';
import 'get_domain_mapping_args3.dart';
import 'get_domain_mapping_result3.dart';

/// Gets the specified domain mapping.
Future<GetDomainMappingResult3> getDomainMapping3(
  GetDomainMappingArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1beta:getDomainMapping',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDomainMappingResult3.fromMap(result);
}
