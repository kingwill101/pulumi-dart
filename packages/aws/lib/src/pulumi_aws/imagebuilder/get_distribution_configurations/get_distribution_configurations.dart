import 'package:pulumi/pulumi.dart';
import 'get_distribution_configurations_args.dart';
import 'get_distribution_configurations_result.dart';

/// Use this data source to get the ARNs and names of Image Builder Distribution Configurations matching the specified criteria.
Future<GetDistributionConfigurationsResult> getDistributionConfigurations(
  GetDistributionConfigurationsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getDistributionConfigurations:getDistributionConfigurations',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDistributionConfigurationsResult.fromMap(result);
}
