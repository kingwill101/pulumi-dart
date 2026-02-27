import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_infrastructure_configurations_args.dart';
import 'get_infrastructure_configurations_result.dart';

/// Use this data source to get the ARNs and names of Image Builder Infrastructure Configurations matching the specified criteria.
Future<GetInfrastructureConfigurationsResult> getInfrastructureConfigurations(
  GetInfrastructureConfigurationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getInfrastructureConfigurations:getInfrastructureConfigurations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInfrastructureConfigurationsResult.fromMap(result);
}
