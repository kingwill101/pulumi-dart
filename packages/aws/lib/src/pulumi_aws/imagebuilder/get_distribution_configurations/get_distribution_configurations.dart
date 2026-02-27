import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_distribution_configurations_args.dart';
import 'get_distribution_configurations_result.dart';

/// Use this data source to get the ARNs and names of Image Builder Distribution Configurations matching the specified criteria.
Future<GetDistributionConfigurationsResult> getDistributionConfigurations(
  GetDistributionConfigurationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getDistributionConfigurations:getDistributionConfigurations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDistributionConfigurationsResult.fromMap(result);
}
