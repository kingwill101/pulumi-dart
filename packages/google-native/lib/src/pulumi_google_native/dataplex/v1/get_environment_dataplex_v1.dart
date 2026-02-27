import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environment_dataplex_v1_args.dart';
import 'get_environment_dataplex_v1_result.dart';

/// Get environment resource.
Future<GetEnvironmentDataplexV1Result> getEnvironmentDataplexV1(
  GetEnvironmentDataplexV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentDataplexV1Result.fromMap(result);
}
