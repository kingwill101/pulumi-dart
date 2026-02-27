import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_mapping_run_v1_args.dart';
import 'get_domain_mapping_run_v1_result.dart';

/// Get information about a domain mapping.
Future<GetDomainMappingRunV1Result> getDomainMappingRunV1(
  GetDomainMappingRunV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v1:getDomainMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainMappingRunV1Result.fromMap(result);
}
