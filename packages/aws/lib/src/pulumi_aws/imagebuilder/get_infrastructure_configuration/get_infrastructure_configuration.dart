import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_infrastructure_configuration_args.dart';
import 'get_infrastructure_configuration_result.dart';

/// Provides details about an Image Builder Infrastructure Configuration.
Future<GetInfrastructureConfigurationResult> getInfrastructureConfiguration(
  GetInfrastructureConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getInfrastructureConfiguration:getInfrastructureConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInfrastructureConfigurationResult.fromMap(result);
}
